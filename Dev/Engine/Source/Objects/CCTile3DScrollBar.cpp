/*-----------------------------------------------------------
 * 2c - Cross Platform 3D Application Framework
 *-----------------------------------------------------------
 * Copyright © 2011 – 2011 France Telecom
 * This software is distributed under the Apache 2.0 license,
 * see the "license.txt" file for more details.
 *-----------------------------------------------------------
 * File Name   : CCTile3DScrollBar.cpp
 *-----------------------------------------------------------
 */

#include "CCDefines.h"
#include "CCObjects.h"


CCTile3DScrollBar::CCTile3DScrollBar(CCSceneBase *scene) :
    CCTile3DButton( scene )
{
    // Draw on top of other objects
    drawOrder = 202;
    
    setTileColour( CCColour( 0.25f, 0.0f ), true );
}


void CCTile3DScrollBar::destruct()
{
    super::destruct();
}


const bool CCTile3DScrollBar::update(const CCTime &time)
{
    return super::update( time );
}


const bool CCTile3DScrollBar::handleProjectedTouch(const CCCameraProjectionResults &cameraProjectionResults,
                                                   const CCSceneCollideable *hitObject, 
                                                   const CCVector3 &hitPosition,
                                                   const CCScreenTouches &touch, 
                                                   const CCTouchAction touchAction)
{
    return super::handleProjectedTouch( cameraProjectionResults, hitObject, hitPosition, touch, touchAction );
}


void CCTile3DScrollBar::resize(const float cameraY, const float cameraWidth, const float cameraHeight, 
                             const float sceneTopY, const float sceneBottomY)
{
    const float cameraHHeight = cameraHeight * 0.5f;

    topY = sceneTopY;
    bottomY = sceneBottomY;
    const float sceneHeight = ( topY + cameraHHeight ) - ( bottomY - cameraHHeight );

    const float viewPercentage = cameraHeight / sceneHeight;
    const float scrollBarHeight = viewPercentage * cameraHeight;
    setTileSize( 1.0f, scrollBarHeight );

    reposition( cameraY, cameraWidth, cameraHeight );
}


void CCTile3DScrollBar::reposition(const float cameraY, const float cameraWidth, const float cameraHeight)
{
    if( enabled )
    {
        const float cameraHWidth = cameraWidth * 0.5f;
        const float cameraHHeight = cameraHeight * 0.5f;

        const float sceneHeight = ( topY - bottomY );
        const float percentageFromTop = ( topY - cameraY ) / sceneHeight;
        const float emptySpace = cameraHeight - collisionBoundsLength.y;
        const float scrollBarOffset = percentageFromTop * emptySpace;

        setPositionXYZ( cameraHWidth - collisionBounds.x, cameraY + cameraHHeight - collisionBounds.y - scrollBarOffset, 0.0f );

        moved();
    }
}


void CCTile3DScrollBar::moved()
{
    LAMBDA_1( ColourCallback, CCTile3DScrollBar, tile,
             
        tile->unHighlight();
             
    )
    tileColourInterpolator.setTargetAlpha( 0.85f, new ColourCallback( this ) );
    tileColourInterpolator.setDuration( 0.1f );
}


void CCTile3DScrollBar::unHighlight()
{
    tileColourInterpolator.setTargetAlpha( 0.0f );
    tileColourInterpolator.setDuration( 2.0f );
}
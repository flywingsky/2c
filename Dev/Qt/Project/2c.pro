# CCRELEASE: Remove for release
debug:DEFINES += DEBUGON

QT              += opengl network webkit network script phonon
TARGET 		 = 2c
TEMPLATE 	 = app

OTHER_FILES += \
    ../../Engine/* \
    ../../Engine/Shaders/basic.fx \
    ../../Engine/Shaders/phong.fx

SOURCES 	+=  \
                ../Source/main.cpp \
                ../Source/CCGLView.cpp \
                ../Source/CCMainWindow.cpp \
                ../Source/CCFBWebView.cpp \
                ../Source/CCVideoView.cpp \
                ../Source/CCPlatform.cpp \
                ../Source/CCRenderThread.cpp \
                ../Source/Rendering/CCDeviceRenderer.cpp \
                ../Source/Rendering/CCTexturePNG.cpp \
                ../Source/Tools/CCDeviceControls.cpp \
                ../Source/Tools/CCDeviceFileManager.cpp \
                ../Source/Tools/CCDeviceURLManager.cpp \
\
\
                ../../Engine/Source/CCEngine.cpp \
                ../../Engine/Source/CCViewManager.cpp \
\
                ../../Engine/Source/AI/CCControllerMovement.cpp \
                ../../Engine/Source/AI/CCInterpolators.cpp \
                ../../Engine/Source/AI/CCPathFinderNetwork.cpp \
\
                ../../Engine/Source/Objects/CCRenderable.cpp \
                ../../Engine/Source/Objects/CCSceneCollideable.cpp \
                ../../Engine/Source/Objects/CCSceneMoveable.cpp \
                ../../Engine/Source/Objects/CCSceneObject.cpp \
                ../../Engine/Source/Objects/CCTile3D.cpp \
                ../../Engine/Source/Objects/CCTile3DButton.cpp \
                ../../Engine/Source/Objects/CCTile3DFrameBuffer.cpp \
                ../../Engine/Source/Objects/CCTile3DScrollBar.cpp \
\
                ../../Engine/Source/Rendering/CCFrameBufferManager.cpp \
                ../../Engine/Source/Rendering/CCMatrix.cpp \
                ../../Engine/Source/Rendering/CCModel3ds.cpp \
                ../../Engine/Source/Rendering/CCModelBase.cpp \
                ../../Engine/Source/Rendering/CCModelText.cpp \
                ../../Engine/Source/Rendering/CCPrimitiveBase.cpp \
                ../../Engine/Source/Rendering/CCPrimitiveCube.cpp \
                ../../Engine/Source/Rendering/CCPrimitiveSphere.cpp \
                ../../Engine/Source/Rendering/CCPrimitiveSquare.cpp \
                ../../Engine/Source/Rendering/CCRenderer.cpp \
                ../../Engine/Source/Rendering/CCRenderTools.cpp \
                ../../Engine/Source/Rendering/CCTextureBase.cpp \
                ../../Engine/Source/Rendering/CCTextureFontPage.cpp \
                ../../Engine/Source/Rendering/CCTextureFontPageFile.cpp \
                ../../Engine/Source/Rendering/CCTextureManager.cpp \
                ../../Engine/Source/Rendering/CCTextureSprites.cpp \
\
                ../../Engine/Source/Scenes/CCSceneAppUI.cpp \
                ../../Engine/Source/Scenes/CCSceneBase.cpp \
\
                ../../Engine/Source/Tools/CCBaseTools.cpp \
                ../../Engine/Source/Tools/CCBaseTypes.cpp \
                ../../Engine/Source/Tools/CCCallbacks.cpp \
                ../../Engine/Source/Tools/CCCameraAppUI.cpp \
                ../../Engine/Source/Tools/CCCameraBase.cpp \
                ../../Engine/Source/Tools/CCCameraFirstPerson.cpp \
                ../../Engine/Source/Tools/CCCollisionTools.cpp \
                ../../Engine/Source/Tools/CCControls.cpp \
                ../../Engine/Source/Tools/CCFBApi.cpp \
                ../../Engine/Source/Tools/CCFileManager.cpp \
                ../../Engine/Source/Tools/CCMathTools.cpp \
                ../../Engine/Source/Tools/CCOctree.cpp \
                ../../Engine/Source/Tools/CCSocketManager.cpp \
                ../../Engine/Source/Tools/CCURLManager.cpp \
                ../../Engine/Source/Tools/CCVectors.cpp \
                ../../Engine/Source/Tools/CCXML.cpp \
\
                ../../Engine/Source/UI/CCWidgetBase.cpp \
                ../../Engine/Source/UI/CCWidgetButton.cpp \
\
\
                ../../External/3dsloader/3dsloader.cpp \
                ../../External/3dsloader/3dsvect.cpp \
\
                ../../External/jansson-2.1/src/error.c \
                ../../External/jansson-2.1/src/hashtable.c \
                ../../External/jansson-2.1/src/load.c \
                ../../External/jansson-2.1/src/memory.c \
                ../../External/jansson-2.1/src/pack_unpack.c \
                ../../External/jansson-2.1/src/strbuffer.c \
                ../../External/jansson-2.1/src/utf.c \
                ../../External/jansson-2.1/src/value.c \
\
                ../../External/ObjLoader3/ObjLoader.cpp \
\
\
                ../../App/Source/CCAppEngine.cpp \
                ../../App/Source/SceneSample1.cpp \

INCLUDEPATH     +=  ../Source \
                    ../Source/Rendering \
                    ../Source/Tools \
\
                    ../../Engine/Source \
                    ../../Engine/Source/AI \
                    ../../Engine/Source/Objects \
                    ../../Engine/Source/Rendering \
                    ../../Engine/Source/Scenes \
                    ../../Engine/Source/Tools \
                    ../../Engine/Source/UI \
\
                    ../../External/3dsloader \
                    ../../External/jansson-2.1/src \
                    ../../External/ObjLoader3 \
\
                    ../../App/Source \

HEADERS  	+= \
                ../Source/CCGLView.h \
                ../Source/CCMainWindow.h \
                ../Source/CCFBWebView.h \
                ../Source/CCVideoView.h \
                ../Source/CCPlatform.h \
                ../Source/CCRenderThread.h \
                ../Source/Rendering/CCDeviceRenderer.h \
                ../Source/Rendering/CCTexturePNG.h \
                ../Source/Tools/CCDeviceControls.h \
                ../Source/Tools/CCDeviceFileManager.h \
                ../Source/Tools/CCDeviceURLManager.h \
\
                ../../Engine/Source/CCDefines.h \
                ../../Engine/Source/CCEngine.h \
                ../../Engine/Source/CCViewManager.h \
\
                ../../Engine/Source/AI/CCControllerMovement.h \
                ../../Engine/Source/AI/CCInterpolators.h \
                ../../Engine/Source/AI/CCPathFinderNetwork.h \
\
                ../../Engine/Source/Objects/CCObjects.h \
                ../../Engine/Source/Objects/CCRenderable.h \
                ../../Engine/Source/Objects/CCSceneCollideable.h \
                ../../Engine/Source/Objects/CCSceneMoveable.h \
                ../../Engine/Source/Objects/CCSceneObject.h \
                ../../Engine/Source/Objects/CCTile3D.h \
                ../../Engine/Source/Objects/CCTile3DButton.h \
                ../../Engine/Source/Objects/CCTile3DFrameBuffer.h \
                ../../Engine/Source/Objects/CCTile3DScrollBar.h \
\
                ../../Engine/Source/Rendering/CCFrameBufferManager.h \
                ../../Engine/Source/Rendering/CCMatrix.h \
                ../../Engine/Source/Rendering/CCModel3ds.h \
                ../../Engine/Source/Rendering/CCModelBase.h \
                ../../Engine/Source/Rendering/CCModelObj.h \
                ../../Engine/Source/Rendering/CCModelText.h \
                ../../Engine/Source/Rendering/CCPrimitiveBase.h \
                ../../Engine/Source/Rendering/CCPrimitiveCube.h \
                ../../Engine/Source/Rendering/CCPrimitives.h \
                ../../Engine/Source/Rendering/CCPrimitiveSphere.h \
                ../../Engine/Source/Rendering/CCPrimitiveSquare.h \
                ../../Engine/Source/Rendering/CCRenderer.h \
                ../../Engine/Source/Rendering/CCRenderTools.h \
                ../../Engine/Source/Rendering/CCTextureBase.h \
                ../../Engine/Source/Rendering/CCTextureFontPage.h \
                ../../Engine/Source/Rendering/CCTextureFontPageFile.h \
                ../../Engine/Source/Rendering/CCTextureManager.h \
                ../../Engine/Source/Rendering/CCTextureSprites.h \
\
                ../../Engine/Source/Scenes/CCSceneAppUI.h \
                ../../Engine/Source/Scenes/CCSceneBase.h \
                ../../Engine/Source/Scenes/CCScenes.h \
\
                ../../Engine/Source/Tools/CCBaseTools.h \
                ../../Engine/Source/Tools/CCBaseTypes.h \
                ../../Engine/Source/Tools/CCCallbacks.h \
                ../../Engine/Source/Tools/CCCameraAppUI.h \
                ../../Engine/Source/Tools/CCCameraBase.h \
                ../../Engine/Source/Tools/CCCameraFirstPerson.h \
                ../../Engine/Source/Tools/CCCollisionTools.h \
                ../../Engine/Source/Tools/CCControls.h \
                ../../Engine/Source/Tools/CCFBApi.h \
                ../../Engine/Source/Tools/CCFileManager.h \
                ../../Engine/Source/Tools/CCMathTools.h \
                ../../Engine/Source/Tools/CCOctree.h \
                ../../Engine/Source/Tools/CCSocketManager.h \
                ../../Engine/Source/Tools/CCURLManager.h \
                ../../Engine/Source/Tools/CCVectors.h \
                ../../Engine/Source/Tools/CCXML.h \
\
                ../../Engine/Source/UI/CCWidgetBase.h \
                ../../Engine/Source/UI/CCWidgetButton.h \
                ../../Engine/Source/UI/CCWidgets.h \
\
                ../../External/3dsloader/3dsloader.h \
                ../../External/3dsloader/3dsvect.h \
\
                ../../External/jansson-2.1/src/hashtable.h \
                ../../External/jansson-2.1/src/jansson_config.h \
                ../../External/jansson-2.1/src/jansson_private.h \
                ../../External/jansson-2.1/src/jansson.h \
                ../../External/jansson-2.1/src/strbuffer.h \
                ../../External/jansson-2.1/src/utf.h \
\
                ../../App/Source/CCAppEngine.h \
                ../../App/Source/Samples.h \
                ../../App/Source/SceneSample1.h \

RESOURCES 	+=	./2c.qrc
RC_FILE = myapp.rc

symbian:{

    LIBS += -lcone -leikcore -lavkon

    addResources.sources = ../../Engine/*
    addResources.path = ./Resources
    DEPLOYMENT += addResources
}

win32:{\

    copyfiles.commands += mkdir \"\" &
    copyfiles.commands += mkdir \"cache/api/\" &
    copyfiles.commands += mkdir \"cache/photos/\" &

# For Windows XP
    copyfiles.commands += xcopy \"../../Engine/Resources\" \"./Resources\" /s /y &
    copyfiles.commands += xcopy \"../../App/Resources\" \"Resources\" /s /y /i &

# For Parallels running Windows 7
    copyfiles.commands += cp -r ../../Engine/Resources/ ./ &
    copyfiles.commands += cp -r ../../App/Resources/ ./ &

}

macx:{

    copyfiles.commands += mkdir -p ./2c.app/Contents/MacOS/ &
    copyfiles.commands += mkdir -p ./2c.app/Contents/MacOS/cache/ &

    copyfiles.commands += cp -r ../../Engine/Resources/ ./2c.app/Contents/MacOS/Resources/ &
    copyfiles.commands += cp -r ../../App/Resources/ ./2c.app/Contents/MacOS/Resources/ &

}

QMAKE_EXTRA_TARGETS += copyfiles
POST_TARGETDEPS += copyfiles

QT+=widgets

HEADERS += desktopwidget.h contenttab.h linktab.h
SOURCES += desktopwidget.cpp contenttab.cpp linktab.cpp main.cpp

RESOURCES += desktopservices.qrc

music.files = data/*.mp3 data/*.wav
image.files = data/*.png

target.path = $$[QT_INSTALL_EXAMPLES]/qtsvg/embedded/desktopservices
sources.files = $$SOURCES $$HEADERS $$RESOURCES *.pro
sources.path = $$[QT_INSTALL_EXAMPLES]/qtsvg/embedded/desktopservices

symbian {
    TARGET.UID3 = 0xA000C611
    CONFIG += qt_demo
    ICON = ./resources/heart.svg
    music.path = /data/sounds/
    image.path = /data/images/
    DEPLOYMENT += music image
}

wince*{
    music.path = "\\My Documents\\My Music"
    image.path = "\\My Documents\\My Pictures"
    DEPLOYMENT += music image
}

INSTALLS += target sources

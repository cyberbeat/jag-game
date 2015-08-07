# -------------------------------------------------
# Project created by QtCreator 2009-05-07T18:37:02
# -------------------------------------------------
QT += xml \
    opengl

unix: {
    TARGET = ./bin/jag
    target.path = /usr/local/bin/
    INSTALLS += target
    datas.path = /usr/local/games/jag
    datas.files = data
    INSTALLS += datas
    LIBS += -lXrandr

  LIBS += -lSDLmain \
      -lSDL \
      -lSDL_mixer
}

win32: {
    TARGET = ../bin/jag

    INCLUDEPATH += ../winlibs/SDL-1.2.15/include \
        ../winlibs/SDL_mixer-1.2.12

  mingw*:{
    LIBS += -L../winlibs/SDL-1.2.15/lib/mingw \
        -L../winlibs/SDL_mixer-1.2.12/lib

    LIBS += $$PWD"/../winlibs/SDL-1.2.15/lib/mingw/libSDL.dll.a"
    LIBS += $$PWD"/../winlibs/SDL_mixer-1.2.12/lib/mingw/libSDL_mixer.a"
  }

  msvc*:{
    LIBS += $$PWD"\..\winlibs\SDL-1.2.15\lib\x86\SDL.lib"
    LIBS += $$PWD"\..\winlibs\SDL_mixer-1.2.12\lib\x86\SDL_mixer.lib"
  }

    RC_FILE = res.rc
}

TEMPLATE = app

SOURCES += main.cpp \
    gamewidget.cpp \
    gamescene.cpp \
    gameitem.cpp \
    gamepaint.cpp \
    gamecontrol.cpp \
    baseitem.cpp \
    gamemenu.cpp \
    gametools.cpp \
    hammertool.cpp \
    bighammertool.cpp \
    bombtool.cpp \
    gamesound.cpp \
    menucontrol.cpp \
    gameprofile.cpp \
    thundertool.cpp \
    smallhammertool.cpp \
    clocktool.cpp \
    gamestock.cpp \
    randomkilltool.cpp \
    mixertool.cpp \
    unblocktool.cpp \
    twintool.cpp \
    displaywrapper.cpp \
    gamebonus.cpp \
    gamestatics.cpp \
    gamestat.cpp \
    gamebackground.cpp \
    consttools.cpp \
    gamexml.cpp \
    scaler.cpp
HEADERS += gamewidget.h \
    gamescene.h \
    defines.h \
    gameitem.h \
    baseitem.h \
    gamemenu.h \
    gametools.h \
    hammertool.h \
    bighammertool.h \
    bombtool.h \
    gamesound.h \
    gameprofile.h \
    thundertool.h \
    smallhammertool.h \
    clocktool.h \
    gamestock.h \
    randomkilltool.h \
    mixertool.h \
    unblocktool.h \
    twintool.h \
    displaywrapper.h \
    gamebonus.h \
    scene_if.h \
    gamestat.h \
    gamebackground.h \
    consttools.h \
    scaler.h \
    version.h \
    FrameCounter.h
RESOURCES += resources.qrc
FORMS += menu.ui
TRANSLATIONS += ./lang/jag_ru.ts

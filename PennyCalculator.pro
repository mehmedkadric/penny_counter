QT       += core gui

greaterThan(QT_MAJOR_VERSION, 4): QT += widgets

CONFIG += c++11

# The following define makes your compiler emit warnings if you use
# any Qt feature that has been marked deprecated (the exact warnings
# depend on your compiler). Please consult the documentation of the
# deprecated API in order to know how to port your code away from it.
DEFINES += QT_DEPRECATED_WARNINGS

# You can also make your code fail to compile if it uses deprecated APIs.
# In order to do so, uncomment the following line.
# You can also select to disable deprecated APIs only up to a certain version of Qt.
#DEFINES += QT_DISABLE_DEPRECATED_BEFORE=0x060000    # disables all the APIs deprecated before Qt 6.0.0

SOURCES += \
    main.cpp \
    mainwindow.cpp \
    src/controller/controller.cpp \
    src/controller/pennydetector.cpp \
    src/data/image.cpp

HEADERS += \
    mainwindow.h \
    src/controller/backgroundremover.h \
    src/controller/controller.h \
    src/controller/pennydetector.h \
    src/data/image.h

FORMS += \
    mainwindow.ui

# Default rules for deployment.
qnx: target.path = /tmp/$${TARGET}/bin
else: unix:!android: target.path = /opt/$${TARGET}/bin
!isEmpty(target.path): INSTALLS += target

INCLUDEPATH += /usr/local/include/opencv4
LIBS += -lopencv_core
LIBS += -lopencv_imgproc
LIBS += -lopencv_highgui
LIBS += -L/usr/lib

INCLUDEPATH += /usr/local/Cellar/nlohmann-json/3.9.1_1/include
INCLUDEPATH += /usr/local/Cellar/pcl/1.11.1_1/include/pcl-1.11
INCLUDEPATH += /usr/local/include/pcl-1.11
INCLUDEPATH += /usr/local/include/pcl-1.6
INCLUDEPATH += /usr/local/include
INCLUDEPATH += /usr/local/include/eigen3
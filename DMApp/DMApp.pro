TEMPLATE = app

QT += qml quick
CONFIG += c++11

SOURCES += main.cpp

RESOURCES += \
    images.qrc \
    js.qrc \
    qml.qrc


# Additional import path used to resolve QML modules in Qt Creator's code model
QML_IMPORT_PATH = /home/ihaaaaa/Qt5.6.0/5.6/android_armv7/include

# Default rules for deployment.
include(deployment.pri)


#some test to see what'z happenin'

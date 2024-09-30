QT += gui
QT += testlib
CONFIG += qt warn_on depend_includepath qmltestcase

TEMPLATE = app
TARGET = tst_testGUI

INCLUDEPATH += ../exampleApp
RESOURCES += ../exampleApp/qml.qrc

DISTFILES += \
    tst_Main.qml \
    tst_MyButton.qml

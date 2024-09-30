QT += testlib
QT += gui quick virtualkeyboard
CONFIG += qt warn_on depend_includepath testcase

TEMPLATE = app

SOURCES +=  tst_testexamplegui.cpp

INCLUDEPATH += ../exampleApp

SOURCES += ../exampleApp/exampleclass.cpp
HEADERS += ../exampleApp/exampleclass.h

RESOURCES += ../exampleApp/qml.qrc

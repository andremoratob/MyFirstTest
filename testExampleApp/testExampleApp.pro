QT += testlib
QT += gui
CONFIG += qt warn_on depend_includepath testcase

TEMPLATE = app

INCLUDEPATH += ../exampleApp

HEADERS += ../exampleApp/exampleclass.h

SOURCES += ../exampleApp/exampleclass.cpp

SOURCES +=  tst_testexampleapp.cpp

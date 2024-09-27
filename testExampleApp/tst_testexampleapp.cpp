#include <QtTest>

// add necessary includes here
#include "../exampleApp/exampleclass.h"


class testExampleApp : public QObject
{
    Q_OBJECT

public:
    testExampleApp();
    ~testExampleApp();

private slots:
    void initTestCase();
    void cleanupTestCase();
    void test_case1();

};

testExampleApp::testExampleApp()
{

}

testExampleApp::~testExampleApp()
{

}

void testExampleApp::initTestCase()
{

}

void testExampleApp::cleanupTestCase()
{

}

void testExampleApp::test_case1()
{
    ExampleClass var;
    QCOMPARE(var.getExampleValue(), 2);
}

QTEST_APPLESS_MAIN(testExampleApp)

#include "tst_testexampleapp.moc"

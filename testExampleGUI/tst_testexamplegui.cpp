#include <QtTest>
#include <QQmlApplicationEngine>
#include <QQuickWindow>

// add necessary includes here
#include "../exampleApp/exampleclass.h"

class testExampleGUI : public QObject
{
    Q_OBJECT

public:
    testExampleGUI();
    ~testExampleGUI();

private slots:
    void initTestCase();
    void cleanupTestCase();
    void test_case1();
    void init();

private:
    QQmlApplicationEngine engine;
    QQuickWindow *window;

};

testExampleGUI::testExampleGUI()
{

}

testExampleGUI::~testExampleGUI()
{

}

void testExampleGUI::initTestCase()
{

}

void testExampleGUI::cleanupTestCase()
{

}

void testExampleGUI::init()
{
    engine.load(QUrl(QStringLiteral("qrc:/main.qml")));
    window = qobject_cast<QQuickWindow*>(engine.rootObjects().first());
    QVERIFY(window);
}

void testExampleGUI::test_case1()
{
    ExampleClass var;
    QCOMPARE(var.getExampleValue(), 2);
}

QTEST_MAIN(testExampleGUI)

#include "tst_testexamplegui.moc"

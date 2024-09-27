#include "exampleclass.h"

ExampleClass::ExampleClass(QObject *parent)
    : QObject{parent}
{

}

int ExampleClass::getExampleValue() const
{
    return 2;
}

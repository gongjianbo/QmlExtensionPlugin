#include "GtPlugin.h"
#include <qqml.h>
#include "PaintedTest.h"

void GtPlugin::registerTypes(const char *uri)
{
    // @uri
    qmlRegisterType<PaintedTest>(uri, 1, 0, "PaintedTest");
}

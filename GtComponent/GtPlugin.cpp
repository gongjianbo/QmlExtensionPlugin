#include "GtPlugin.h"
#include <qqml.h>
#include "PaintedTest.h"

void GtPlugin::registerTypes(const char *uri)
{
    Q_INIT_RESOURCE(qmlitem);
    // @uri
    qmlRegisterType<PaintedTest>(uri, 1, 0, "PaintedTest");
}

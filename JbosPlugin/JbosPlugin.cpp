#include "JbosPlugin.h"

#include <qqml.h>

#include "PaintedTest.h"

void JbosPlugin::registerTypes(const char *uri)
{
    Q_INIT_RESOURCE(qmlitem);
    // @uri EasyJbos
    qmlRegisterType<PaintedTest>(uri, 1, 0, "PaintedTest");
}

#include "GtPlugin.h"
#include <qqml.h>
#include <qurl.h>
#include "PaintedTest.h"

// https://www.qt.io/blog/qml-type-registration-in-qt-5.15
void GtPlugin::registerTypes(const char */*uri*/)
{
    // @uri
    // 对于 Cpp 封装的类型，QML_IMPORT_NAME + QML_ELEMENT 可以替代 qmlRegisterType
    // qmlRegisterType<PaintedTest>(uri, 1, 0, "PaintedTest");
    // 对于 QML 封装的类型，qmlplugindump 也是能提取出接口信息的
    // 注册路径使用相对于命令执行路径，或者放到资源文件中使用资源路径
    // qmlRegisterType(QUrl::fromLocalFile("./Gt/Component2/QmlTest.qml"), uri, 1, 0, "QmlTest");
}

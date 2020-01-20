#ifndef JBOSPLUGIN_H
#define JBOSPLUGIN_H

#include <QQmlExtensionPlugin>

/**
 * @brief 注册QML插件
 */
class JbosPlugin : public QQmlExtensionPlugin
{
    Q_OBJECT
    Q_PLUGIN_METADATA(IID QQmlExtensionInterface_iid)

public:
    void registerTypes(const char *uri) override;
};

#endif // JBOSPLUGIN_H

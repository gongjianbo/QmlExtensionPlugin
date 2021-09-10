#pragma once
#include <QQmlExtensionPlugin>

/**
 * @brief 注册QML插件
 */
class GtPlugin : public QQmlExtensionPlugin
{
    Q_OBJECT
    Q_PLUGIN_METADATA(IID QQmlExtensionInterface_iid)
public:
    void registerTypes(const char *uri) override;
};


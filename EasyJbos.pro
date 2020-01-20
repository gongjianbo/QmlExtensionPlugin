TEMPLATE = subdirs
CONFIG += ordered

#CONFIG += Dev_Plugin
CONFIG += Dev_Demo

Dev_Plugin{
    SUBDIRS += JbosPlugin
}

Dev_Demo{
    SUBDIRS += JbosDemo
}

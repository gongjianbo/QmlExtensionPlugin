TEMPLATE = subdirs
CONFIG += ordered

CONFIG += Dev_Plugin
CONFIG += Dev_Demo

Dev_Plugin{
    SUBDIRS += JbosPlugin #EasyComponent
}

Dev_Demo{
    SUBDIRS += JbosDemo
}

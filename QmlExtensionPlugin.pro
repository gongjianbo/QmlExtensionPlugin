TEMPLATE = subdirs
CONFIG += ordered

SUBDIRS += GtApp
#>=Qt5.15
if(versionAtLeast(QT_VERSION, 5.15.0)){
    message("greater or equal Qt5.15")
    SUBDIRS += GtComponent2
    GtApp.depends += GtComponent2
}else{
    message("less Qt5.15")
    SUBDIRS += GtComponent
    GtApp.depends += GtComponent
}

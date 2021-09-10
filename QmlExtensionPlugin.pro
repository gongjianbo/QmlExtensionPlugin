TEMPLATE = subdirs
CONFIG += ordered

defineTest(versionGreaterOrEqual) {
    maj = $$1
    min = $$2
    isEqual(QT_MAJOR_VERSION, $$maj) {
        isEqual(QT_MINOR_VERSION, $$min) {
            return(true)
        }
        greaterThan(QT_MINOR_VERSION, $$min) {
            return(true)
        }
    }
    greaterThan(QT_MAJOR_VERSION, $$maj) {
        return(true)
    }
    return(false)
}

if(versionGreaterOrEqual(5, 15)) {
    message("greater or equal Qt5.15")
    SUBDIRS += GtComponent2
}else{
    message("less Qt5.15")
    SUBDIRS += GtComponent
}

SUBDIRS += GtApp


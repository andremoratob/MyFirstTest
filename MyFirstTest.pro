TEMPLATE = subdirs

SUBDIRS += \
    exampleApp

contains(CONFIG, test) {
    SUBDIRS += testExampleApp
}

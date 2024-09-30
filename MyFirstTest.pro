TEMPLATE = subdirs

SUBDIRS += \
    exampleApp \
    testGUI

contains(CONFIG, test) {
    SUBDIRS += testExampleApp testExampleGUI
}

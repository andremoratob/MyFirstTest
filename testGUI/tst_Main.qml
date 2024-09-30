import QtQuick 2.12
import QtTest 1.2

import "../exampleApp"


Item {
    id: rootItem

    TestCase {
        id: top
        name: "testButtonMessage"
        when: windowShown

        function test_button_click() {
            var mycomp = Qt.createComponent("../exampleApp/main.qml")
            var mainWindow = mycomp.createObject(top)

            verify(mainWindow !== null, "main window was not instantiated")

            var button = findChild(mainWindow, "button")
            verify(button !== null, "button was not found")

            button.clicked()
            compare(button.message, "bye", "button is not saying goodbye")
        }
    }
}

// to run: qmltestrunner -input <this_file_name>

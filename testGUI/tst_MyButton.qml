import QtQuick 2.12
import QtTest 1.2

import "../exampleApp/"

Item {

    MyButton {
        id: myButton
    }

    TestCase {
        name: "testButtonMessage"
        when: windowShown

        function test_buttonMessage() {
            verify(myButton.message === "hello", "not greeting")
            myButton.clicked()
            verify(myButton.message === "bye", "not saying goodbye")
        }
    }
}

// to run: qmltestrunner -input <this_file_name>

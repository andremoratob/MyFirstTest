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
            verify(myButton.message === "hello")
        }
    }
}

// to run: qmltestrunner -input <this_file_name>

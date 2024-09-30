import QtQuick 2.12
import QtQuick.Controls 2.4


Button {
    id: button
    property string message: "hello"

    onClicked: message = "bye"
}

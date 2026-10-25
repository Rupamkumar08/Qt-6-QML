import QtQuick

Window {
    id: window
    width: 640
    height: 480
    visible: true
    title: qsTr("Property Bindings Demo")

    Rectangle {
        id: redRectId
        width: 50
        height: 1.5 * width // Property binding
        color: "red"
    }

    Rectangle {
        id : blueRectId
        color : "blue"
        width : 100
        height : 100
        anchors.bottom : parent.bottom
        MouseArea{
            anchors.fill : parent
            onClicked: {
                redRectId.width = redRectId.width + 10
                console.log("Width : " + redRectId.width + " height : " + redRectId.height);
            }
        }
    }

    Rectangle{
        id: greenRectId
        color : "green"
        width : 100
        height : 100
        anchors.bottom : parent.bottom
        anchors.left : blueRectId.right
        MouseArea{
            anchors.fill : parent
            onClicked: {
                // redRectId.height = 100 // Replace the binding with a static value (Binding is broken)
                // redRectId.height = redRectId.width * 2.5 // Breaks the binding again
                redRectId.height = Qt.binding(function(){
                                    return redRectId.width * 2.5
                                })
                console.log("Width : " + redRectId.width + " height : " + redRectId.height);
            }
        }
    }
}

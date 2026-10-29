import QtQuick

Window {
    id: window
    width: 640
    height: 480
    visible: true
    title: qsTr("JavaScript")

    Rectangle {
        id : containerRectId
        width : 40
        height : getHeight()
        color: x > 300 ? "red" : "green"
        // anchors.centerIn: parent

        // Custom JS function to return the height
        function getHeight(){
            return width * 2
        }
    }

    MouseArea
    {
        anchors.fill : parent
        drag.target : containerRectId
        drag.axis : Drag.XAndYAxis
        drag.minimumX : 0
        drag.maximumX : parent.width - containerRectId.width
        drag.minimumY: 0
        drag.maximumY : parent.height - containerRectId.height
    }
}

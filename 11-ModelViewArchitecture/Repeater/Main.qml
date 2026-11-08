import QtQuick
import QtQuick.Controls

Window {
    id: window
    width: 640
    height: 480
    visible: true
    title: qsTr("Repeater")

    /*
    Column {
        Repeater
        {
            model: 23
            Rectangle
            {
                width: 100; height: 40
                border.width: 1
                color: "yellow"
            }
        }
    }
    */

    /*
    Column {
        spacing : 20
        Repeater {
            // model : ["One" , "Two" , "Three"]
            model : 100
            CheckBox {
                text : modelData
            }
        }
    }
    */

    Flickable {
        contentHeight : columnId.implicitHeight
        anchors.fill : parent

        Column {
            id : columnId
            anchors.fill : parent
            spacing : 2

            Repeater{
                model : ["Jan" , "Feb" , "March"]
                Rectangle {
                    width : parent.width
                    height : 50
                    color : "dodgerblue"
                    radius : 20

                    Text {
                        anchors.centerIn : parent
                        text : modelData
                        font.pointSize: 20
                    }

                    MouseArea{
                        anchors.fill : parent
                        onClicked : function(){
                            console.log("Clicked on " + modelData)
                        }
                    }
                }
            }
        }
    }


}

import QtQuick

Window {
    id: window
    width: 640
    height: 480
    visible: true
    title: qsTr("QML Syntax Demo")
    property string textToShow : "hello"


    Row {
        spacing : 20
        anchors.centerIn : parent
        Rectangle{
            id: redRectId
            width: 100
            height: 100
            color: "red"
            radius : 15
            border.color :"black"
            border.width : 5

            /*
            Explicitly set the position
            x: 20
            y: 20
            */

            /*
            Position the rectangle in the center of the window and also it becomes responsive
            anchors.centerIn: parent
            */

            /*
            Rounding the edges
            radius : 20
            */

            MouseArea{
                anchors.fill: parent // Specifying the MouseArea element to fill the rectangle that contains it
                onClicked : {
                    console.log("Clicked on red rectangle")
                    textId.text = "red"
                }
            }
        }

        Rectangle{
            id: blueRectId
            width: 100
            height: 100
            color: "blue"
            radius : 15
            border.color :"black"
            border.width : 5
            MouseArea{
                anchors.fill: parent // Specifying the MouseArea element to fill the rectangle that contains it
                onClicked : {
                    console.log("Clicked on blue rectangle")
                    textId.text = "blue"
                }
            }
        }

        Rectangle{
            id: greenRectId
            width: 100
            height: 100
            color: "green"
            radius : 15
            border.color :"black"
            border.width : 5
            MouseArea{
                anchors.fill: parent // Specifying the MouseArea element to fill the rectangle that contains it
                onClicked : {
                    console.log("Clicked on green rectangle")
                    textId.text = "green"
                }
            }
        }

        Rectangle{
            id: circleId
            width: 100
            height: 100
            color: "dodgerblue"
            radius : 60
            border.color :"black"
            border.width : 5
            Text{
                id : textId
                anchors.centerIn: parent
                text : textToShow
            }

            MouseArea{
                anchors.fill: parent // Specifying the MouseArea element to fill the rectangle that contains it
                onClicked : {
                    console.log("Clicked on dodger blue circle")
                }
            }
        }
    }


}

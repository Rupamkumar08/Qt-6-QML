import QtQuick

Window {
    id: window
    width: 640
    height: 480
    visible: true
    title: qsTr("ListView and ListModel")

    ListView {
        id : listViewId
        anchors.fill : parent
        model : modelId
        // delegate : delegateId

        // delegate inline
        delegate :  Rectangle
                    {
                        id : rectangleId
                        width : parent.width
                        height : 50
                        color : "beige"
                        border.color: "black"
                        radius: 5

                        Text{
                                id: textId
                                anchors.centerIn: parent
                                font.pointSize: 20
                                text: country + ": " + capital
                        }

                        MouseArea
                        {
                            anchors.fill: parent
                            onClicked: function(){
                                console.log("Clicked on " + country + ": " + capital)
                            }
                        }
                    }
    }

    ListModel {
        id : modelId

        ListElement{
            country : "India"
            capital : "Delhi"
        }

        ListElement{
            country : "Afghanistan"
            capital : "Kabul"
        }

        ListElement{
            country : "Srilanka"
            capital : "Colombo"
        }

        ListElement{
            country : "Kenya"
            capital : "Nairobi"
        }

    }

    Component{
        id : delegateId
        Rectangle {
            id : rectangleId
            width : parent.width
            height : 50
            color : "beige"
            border.color: "black"
            radius: 5

            Text{
                    id: textId
                    anchors.centerIn: parent
                    font.pointSize: 20
                    text: country + ": " + capital
            }
        }
    }
}

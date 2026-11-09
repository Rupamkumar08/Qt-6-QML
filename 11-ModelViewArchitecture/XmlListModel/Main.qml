import QtQuick
import QtQml.XmlListModel

Window {
    id: window
    width: 640
    height: 480
    visible: true
    title: qsTr("XmlListModel")

    XmlListModel
    {
        id : xmlListModelId
        // source specifies the location of the Xml file that the current model will use
        source : "qrc:/xml/employees.xml"
        query : "/courses/course"

        XmlListModelRole {
            name : "instructor" // name under which the data is available in QML
            elementName: "instructor" // element name in the XML file
        }

        XmlListModelRole {
            name : "year"
            elementName: "year"
        }

        XmlListModelRole {
            name : "coursename"
            elementName: "coursename"
        }

        XmlListModelRole {
            name : "hot"
            elementName: "coursename"
            attributeName: "hot"
        }
    }

    ListView
    {
        id : listViewId
        anchors.fill : parent
        model : xmlListModelId
        delegate: Rectangle {
            width : parent.width
            height : 50
            color : "beige"

            Row {
                spacing : 30
                Text {
                    text : instructor
                    font.pointSize: 15
                }

                Text {
                    text : coursename + "(" + year + ")"
                    font.bold : hot === "true" ? true : false
                    font.pointSize : 15
                }
            }

            MouseArea{
                anchors.fill : parent
                onClicked : function() {
                    console.log("Clicked " + coursename)
                }
            }
        }
    }
}

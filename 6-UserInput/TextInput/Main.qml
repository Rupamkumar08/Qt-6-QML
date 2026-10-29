import QtQuick

Window {
    id: window
    width: 640
    height: 480
    visible: true
    title: qsTr("TextInput")

    Row
    {
        x : 10
        y : 10
        spacing : 20

        Rectangle
        {
            id : firstNameRectId
            width : firstNameLabelId.implicitWidth + 20
            height : firstNameLabelId.implicitHeight + 20
            color : "yellow"

            Text{
                id : firstNameLabelId
                anchors.centerIn : parent
                text : "First Name : "
            }
        }

        Rectangle
        {
            id : firstNameTextRectId
            width : firstNameTextId.implicitWidth + 20
            height : firstNameTextId.implicitHeight + 20
            color : "yellow"

            TextInput{
                id : firstNameTextId
                anchors.centerIn : parent
                focus : true
                text : "Type in your First name "
                onEditingFinished: {
                    console.log("The First Name is : " + text)
                }
            }
        }

    }

    Row
    {
        x : 10
        y : 60
        spacing : 20

        Rectangle
        {
            id : lastNameRectId
            width : lastNameLabelId.implicitWidth + 20
            height : lastNameLabelId.implicitHeight + 20
            color : "yellow"

            Text{
                id : lastNameLabelId
                anchors.centerIn : parent
                text : "Last Name : "
            }
        }

        Rectangle
        {
            id : lastNameTextRectId
            width : lastNameTextId.implicitWidth + 20
            height : lastNameTextId.implicitHeight + 20
            color : "yellow"

            TextInput{
                id : lastNameTextId
                anchors.centerIn : parent
                focus : true
                text : "Type in your Last name "
                onEditingFinished: {
                    console.log("The Last Name is : " + text)
                }
            }
        }

    }
}

import QtQuick

Window {
    id: window
    width: 640
    height: 480
    visible: true
    title: qsTr("Custom Components")

    //Playing with Row and Column

    /*
    Row {
        spacing: 2
        Rectangle { color: "red"; width: 50; height: 50 }
        Rectangle { color: "green"; width: 20; height: 50 }
        Rectangle { color: "blue"; width: 50; height: 20 }
    }
    */

    /*
    Column {
        spacing: 2
        Rectangle { color: "red"; width: 50; height: 50 }
        Rectangle { color: "green"; width: 20; height: 50 }
        Rectangle { color: "blue"; width: 50; height: 20 }
    }
    */

    Column
    {
        spacing : 3
        MButton
        {
            id: button1Id
            buttonText : "Button1"
            onButtonClicked: {
                console.log("Clicked on Button1")
            }
        }
        MButton
        {
            id : button2Id
            buttonText : "Button2"
            onButtonClicked: {
                console.log("Clicked on Button2")
            }
        }
    }


}

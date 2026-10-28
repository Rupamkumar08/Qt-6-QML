import QtQuick

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("Custom Signals")

    Rectangle{
        id: rectId
        width: 300
        height: 300
        color: "dodgerblue"

        // Set up the signal
        signal greet(string message)

        // The signal handler that will be set automatically by the QT system
        /*
        onGreet : message => {
            console.log("Greeting with the message  : " + message)
        }
        */

        // Using the Javascript function syntax
        onGreet : function(message){
            console.log("Greeting with the message : " + message)
        }

        MouseArea{
            anchors.fill : parent
            onClicked: {
                // Fire{trigger} the signal
                rectId.greet("The sky is blue")
                // greet("The sky is blue") // Won't work
            }
        }
    }


}
import QtQuick

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("Connection Signal to Method")

    Rectangle
    {
        id: rectId
        width: 300
        height: 300
        color: "dodgerblue"

        // Set up the signal
        signal greet(string message)

        // Setup the custom handler function
        function respond_your_way(message)
        {
            console.log("Custom response : " + message)
        }

        // Using the Javascript function syntax
        onGreet : function(message){
            console.log("Greeting with the message : " + message)
        }

        MouseArea
        {
            anchors.fill : parent
            onClicked: {
                // Fire{trigger} the signal
                rectId.greet("The sky is blue")
            }
        }
    }

    Component.onCompleted :
    {
        // Make the connection explicitly
        // Connecting the signal to the handler(slot)
        rectId.greet.connect(rectId.respond_your_way)
    }

}

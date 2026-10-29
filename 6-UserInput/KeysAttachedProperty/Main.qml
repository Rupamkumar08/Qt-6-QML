/*
    . Specific signals: onDigit5Pressed
    . General signal: onPressed
    . Forwading: event.accepted
    . Modifiers

*/

import QtQuick

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("Keys Attached Property")

    Rectangle
    {
        id : containedRectId
        anchors.centerIn : parent
        width : 300
        height : 50
        color : "dodgerblue"
        focus: true // This is important if we want to handle key events

        // Going through specific signals
        /*
        Keys.onDigit5Pressed : function(event) {
            console.log("Specific signal : Pressed Key 5")
            event.accepted = false // Forward the event to other handlers that may handle it
            // If we don't want to propagate the event
            // event.accepted = true
        }
        */

        /* For modifiers
        Keys.onDigit5Pressed : function(event) {
          if(event.modifiers === Qt.ControlModifier){
              console.log("Specific signal : Pressed key 5 with ctrl")
          }
          else {
              console.log("Specific signal : Pressed key 5")
          }
          event.accepted = true
        }
        */

        // Going through the general signal
        /*
        Keys.onPressed : function(event){
            if(event.key === Qt.Key_5){
                console.log("General signal : Pressed Key 5")
            }
        }
        */

        // For modifiers with general signal
        Keys.onPressed : function(event){
            if((event.key === Qt.Key_5) && event.modifiers & Qt.ControlModifier){
                console.log("General signal : Pressed Key 5 with ctrl")
            }
            else if(event.key === Qt.Key_5) {
                console.log("General Signal : Pressed key 5")
            }
        }

        Keys.onReleased: event => {
            switch (event.key) {
            case Qt.Key_5:
                print("Key_5 released");
                break;
            case Qt.Key_M:
                print(event.text + " Released");
                break;
            }
        }
    }
}

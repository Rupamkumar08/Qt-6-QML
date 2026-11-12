/*

- We don't want the settings to be saved automatically
- We actively save them at a time and place we choose.
- In this case we save when the window is destroyed.

Flow
- Don't use property aliases in settings objects
- Read the data from settings object
- Save the data when the window object is about to die.

*/

import QtQuick
import QtQuick.Dialogs
import QtCore

Window {

    // Read position and size information from the settings object
    id: rootId
    x : windowSettingsId.x
    y : windowSettingsId.y
    width: windowSettingsId.width
    height: windowSettingsId.height
    visible: true
    title: qsTr("Custom Settings")

    Rectangle
    {
        id : rectId
        anchors.fill : parent
        color : colorSettingsId.rectColor // Read color information from the settings object

        MouseArea
        {
            anchors.fill : parent
            onClicked : function() {
                colorDialogId.open() // Open the color dialog

            }

            ColorDialog
            {
                id : colorDialogId
                title : "Choose color"
                onAccepted: function() {
                    rectId.color = selectedColor
                }
                onRejected : function() {
                    console.log("Dialog rejected")
                }

            }
        }
    }

    // Don't use the property aliases in the Settings object here
    Settings
    {
        id : windowSettingsId
        category: "window"
        property int x: 300
        property int y: 300
        property int width: 640
        property int height: 480
    }

    Settings
    {
        id : colorSettingsId
        category: "colors"
        property color rectColor: "red"
    }

    Component.onDestruction : {
        // Save position and size information
        windowSettingsId.x = rootId.x
        windowSettingsId.y = rootId.y
        windowSettingsId.width = rootId.width
        windowSettingsId.height = rootId.height

        // Save the color
        colorSettingsId.rectColor = rectId.color
    }
}
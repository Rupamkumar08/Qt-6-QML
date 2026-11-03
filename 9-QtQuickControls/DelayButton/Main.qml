import QtQuick
import QtQuick.Controls
import QtQuick.Layouts

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("DelayButton")

    ColumnLayout {
        // Anchoring to the parent ensures the layout fills the window properly
        anchors.fill: parent
        anchors.margins: 20
        spacing: 40

        Label {
            wrapMode: Label.Wrap
            Layout.fillWidth: true
            text: "Delayed Button. Use it when you want to prevent accidental clicks"
            font.pointSize: 15
        }

        DelayButton {
            id: delayBtn
            text: "Hold for 1 Second to Execute"
            Layout.fillWidth: true
            delay: 5000

            // 1. Trigger the main task immediately when the hold finishes
            onActivated: {
                console.log("Button activated! Carrying out the task seamlessly. 🚀")
            }

            // 2. Track the progress in real-time (0.0 to 1.0)
            onProgressChanged: {
                console.log("Progress: " + (progress * 100).toFixed(0) + "%")
            }
        }
    }
}

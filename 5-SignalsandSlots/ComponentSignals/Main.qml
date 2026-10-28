import QtQuick

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("Signals across QML Components")

    Notifier {
        id : notifierId
        rectColor: "yellowgreen"
        /*
        onNotify : count => {
            console.log("Received : " + count)
        }
        */
    }

    Receiver{
        id : receiverId
        rectColor : "dodgerblue"
        anchors.right : parent.right
    }

    // Make the connection from Notifier to Receiver

    Component.onCompleted : {
        notifierId.notify.connect(receiverId.receiveInfo)
    }

}
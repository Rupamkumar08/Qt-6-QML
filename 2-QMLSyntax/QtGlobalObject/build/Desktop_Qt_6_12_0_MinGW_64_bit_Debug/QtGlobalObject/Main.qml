import QtQuick

Window {
    id: window
    width: 640
    height: 480
    visible: true
    title: qsTr("The Qt Global Object")
    property var fonts: Qt.fontFamilies()

        Text
        {
            anchors.centerIn: parent
            color: Qt.rgba(1, 0, 0, 1)
            text: Qt.md5("hello, world")
            font.pointSize: 20
        }

        Rectangle
        {
            id: clickableRectId
            width: 300
            height: 100
            color: "dodgerblue"
            anchors.bottom: parent.bottom

            MouseArea {
                anchors.fill : parent
                onClicked : {
                    //Quit the application using Qt Global Object
                    Qt.quit();

                    //Loop through the fonts
                    for(var i = 0; i < fonts.length; i++)
                    {
                        console.log("[" + i +"]" + fonts[i])
                    }

                    //Hash a string
                    var mText = "hello, world"
                    var mTextHash = Qt.md5(mText)
                    console.log("The hash of the name is: " + mTextHash)

                    //Open url externally
                    Qt.openUrlExternally("https://www.learnqt.guide")

                    //Open local files with the default program
                    Qt.openUrlExternally("file:///D:/Carnic Related Photo Papa/20220505_200951.jpg")

                    //Capture platform info
                    console.log("The current platform is: " + Qt.platform.os)

                }
            }
        }

}

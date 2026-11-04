import QtQuick
import QtQuick.Controls

Window {
    id: window
    width: 640
    height: 480
    visible: true
    title: qsTr("SwipeView and PageIndicator")

    SwipeView{
        id : swipeViewId
        anchors.fill : parent
        currentIndex : pageIndicatorId.currentIndex
        anchors.bottomMargin : 50

        Image{
            id : image1
            fillMode : Image.PreserveAspectFit
            source : "images/1.png"
        }

        Image{
            id : image2
            fillMode : Image.PreserveAspectFit
            source : "images/2.png"
        }

        Image{
            id : image3
            fillMode : Image.PreserveAspectFit
            source : "images/3.png"
        }

        onCurrentIndexChanged: function(){
            console.log("Current Index : " + currentIndex)
        }
    }

    PageIndicator{
        id : pageIndicatorId
        anchors.bottom : parent.bottom
        anchors.horizontalCenter: parent.horizontalCenter

        // PageIndicator specific properties
        currentIndex : swipeViewId.currentIndex
        interactive : true
        count : swipeViewId.count
    }
}
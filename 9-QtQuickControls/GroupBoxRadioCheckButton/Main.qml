import QtQuick
import QtQuick.Controls
import QtQuick.Layouts

Window {
    id: window
    width: 640
    height: 700
    visible: true
    title: qsTr("GroupBox, RadioButton and CheckBox")

    Column {
        spacing : 10
        anchors.fill : parent

        // RadioButton controls
        Label {
            width : parent.width
            wrapMode : Label.Wrap
            horizontalAlignment : Qt.AlignHCenter
            text : "A GroupBox wrapping around RadioButtons"
        }

        GroupBox{
            title : "Choose Bonus"
            anchors.horizontalCenter : parent.horizontalCenter
            Column {
                RadioButton{
                    text : "Coke"
                    onCheckedChanged : function() {
                        if(checked)
                        {
                            console.log("Coke Button Checked")
                        }
                        else {
                            console.log("Coke Button not checked")
                        }
                    }
                }

                RadioButton{
                    text : "Green Tea"
                }

                RadioButton{
                    text : "Ice Cream"
                }
            }
        }

        // CheckBox controls
        Label {
            width : parent.width
            wrapMode : Label.Wrap
            horizontalAlignment : Qt.AlignHCenter
            text : "A GroupBox wrapping around CheckBoxes"
        }

        GroupBox{
            title : "Choose a Qt supported desktop Platform"
            anchors.horizontalCenter : parent.horizontalCenter
            Column {
                CheckBox{
                    text : "Windows"
                    onCheckedChanged : function() {
                        if(checked)
                        {
                            console.log("Windows Button Checked")
                        }
                        else {
                            console.log("Windows Button not checked")
                        }
                    }
                }

                CheckBox{
                    text : "Mac"
                }

                CheckBox{
                    text : "Linux"
                }
            }
        }

        // Disable and enable a GroupBox
        Label {
            width : parent.width
            wrapMode : Label.Wrap
            horizontalAlignment : Qt.AlignHCenter
            text : "A GroupBox that can be enabled and disabled"
        }

        GroupBox{
            anchors.horizontalCenter : parent.horizontalCenter
            label : CheckBox{
                id : checkBox
                checked : true
                text : checked ? "Disable" : "Enable" // ternary operator
                onCheckedChanged : function() {
                    console.log("Status : " + text + "d")
                }
            }

            Column {
                enabled : checkBox.checked
                CheckBox{
                    text : "Item1"
                }
                CheckBox{
                    text : "Item2"
                }
                CheckBox{
                    text : "Item3"
                }
            }
        }
    }
}
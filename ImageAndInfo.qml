import QtQuick 2.15
import QtQuick.Window 2.15
import QtQuick.Controls 1.3
import QtQuick.Layouts 1.3

Row{

    function test()
    {
        return 1 / ((win1.width * win1.height) / 450000)
    }

    id: imageAndInfo
    spacing: win1.width / 80//10
    Rectangle{
        id: avatar
        width: win1.width / 3 //300
        height: win1.height / 2 //315
        Image {
            anchors.fill: avatar
            fillMode: Image.PreserveAspectFit
            source: "qrc:/new/prefix1/picture/avatar.jpg"
        }
    }

    Column{
        anchors.top: parent
        spacing: win1.width / 80//10
        Row{
            //                    spacing: 10
            Rectangle{

                width: win1.width / 3 //200
                height: win1.height / 25//15//40
                color: "black"

                Rectangle{
                    width: win1.width / 3 //100
                    height: win1.height / 25//15//40
                    color: "transparent"
                Text {
                    text: qsTr("Характеристика")
                    color: "white"
                        wrapMode: Text.WordWrap
                    font.pixelSize: 15//12//window.sizeText / test()
                    anchors.centerIn: parent
                }
                }
            }
            Rectangle{
                id: rec
                width: win1.width / 24 //40
                height: win1.height / 25//15//40
                Image {
                    anchors.fill: rec
                    source: "qrc:/new/prefix1/picture/Triangle.png"
                }
            }
//            Rectangle{
//                id: rect
//                width: window.width / 4 //200
//                height: window.height / 30//40
//                color: "pink"
//            }
        }
        Rectangle{
            width: win1.width - win1.width / 3 - win1.width / 80 - win1.width / 16
            height: avatar.height - win1.height / 15 - win1.height / 120//rect.height - 10
//            color: "gray"
            Text{
                anchors.fill: parent
                text: anotherWindow.haracteristics

                    //"Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum."
                wrapMode: Text.WordWrap
                font.pixelSize: 14
            }
        }
    }
}

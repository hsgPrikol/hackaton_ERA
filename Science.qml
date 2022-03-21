import QtQuick 2.15
import QtQuick.Window 2.15
import QtQuick.Controls 1.3
import QtQuick.Layouts 1.3

Rectangle{
    width: win1.width / 4 //100
    height: win1.height / 25//40
    color: "black"

    function test()
    {
        return 1 / ((win1.width * win1.height) / 450000)
    }

    Column{
        spacing: 25
        Rectangle{
            width: win1.width / 4 //100
            height: win1.height / 25//15//40
            color: "transparent"
            Text {
                text: qsTr("Научная труд")
                color: "white"
                font.pixelSize: 15//12//window.sizeText / test()
                anchors.centerIn: parent
            }
        }

        Column{
            width: win1.width / 2
            spacing: win1.width / 40// 20
            Row{
                //width: 100//window.width / 2 - (window.width / 8 + 40)
                spacing: win1.width / 80//10
                Rectangle{
                    width: sizeCheckList
                    height: sizeCheckList

                    Image {
                        anchors.fill: parent
                        fillMode: Image.PreserveAspectFit
                        source: "qrc:/new/prefix1/picture/list-check.png"
                    }
                }
                Text {
                    text: qsTr("20 статей РИНЦ")
                }
            }
            Row{
                spacing: win1.width / 80//10
                Rectangle{
                    width: sizeCheckList
                    height: sizeCheckList

                    Image {
                        anchors.fill: parent
                        fillMode: Image.PreserveAspectFit
                        source: "qrc:/new/prefix1/picture/list-check.png"
                    }
                }
                Text {
                    text: qsTr("40 статей ВАК")
                }
            }
            Row{
                spacing: win1.width / 80//10
                Rectangle{
                    width: sizeCheckList
                    height: sizeCheckList

                    Image {
                        anchors.fill: parent
                        fillMode: Image.PreserveAspectFit
                        source: "qrc:/new/prefix1/picture/list-check.png"
                    }
                }
                Text {
                    text: qsTr("50 патентов")
                }
            }
            Row{
                spacing: win1.width / 80//10
                Rectangle{
                    width: sizeCheckList
                    height: sizeCheckList

                    Image {
                        anchors.fill: parent
                        fillMode: Image.PreserveAspectFit
                        source: "qrc:/new/prefix1/picture/list-check.png"
                    }
                }
                Text {
                    text: qsTr("Patents")
                }
            }
            Row{
                spacing: win1.width / 80//10
                Rectangle{
                    width: sizeCheckList
                    height: sizeCheckList

                    Image {
                        anchors.fill: parent
                        fillMode: Image.PreserveAspectFit
                        source: "qrc:/new/prefix1/picture/list-check.png"
                    }
                }
                Text {
                    text: qsTr("100 рационализаторских предложений")
                }
            }
        }
    }
}

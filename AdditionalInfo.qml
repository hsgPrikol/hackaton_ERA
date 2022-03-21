import QtQuick 2.15
import QtQuick.Window 2.15
import QtQuick.Controls 1.3
import QtQuick.Layouts 1.3

Rectangle{
    id: blackrectangle

    property bool flag: false
    color: "black"
    width: win1.width
    height: win1.height / 6//200
    Row{
        width: win1.width - win1.width / 8  //100
        height: win1.height / 6//200
        Column{
            y: win1.height / 24//50
            width: win1.width / 2 - win1.width / 13.1//61
            height: win1.height

            Text {
                x: win1.width / 16//50
                text: qsTr("Контакты")
                color: "white"
                font.pixelSize: 12
            }

            Text{
                x: win1.width / 16//50
                text: "Телефон: 8549874864894"
                color: "white"
                font.pixelSize: 12
            }
        }
        Column{
            y: 25
//            anchors.verticalCenter: blackrectangle.verticalCenter
            Image{

                //anchors.horizontalCenter: blackrectangle.horizontalCenter
                fillMode: Image.PreserveAspectCrop
                width: win1.width / 12//122
                height: width
                source: "qrc:/new/prefix1/picture/листик белый.png"
                verticalAlignment:  Image.AlignTop

                MouseArea{
                    anchors.fill: parent
                    onClicked:
                    {
                        anotherWindow.hide()

                    }
                }
            }
//            Text {
//                y: window.hight / 80//15
//                //anchors.horizontalCenter: blackrectangle.horizontalCenter
//                text: qsTr("Нажми меня для инфы")
//                font.pixelSize: 12
//                color: "white"
//            }
        }
        Column{
            y: win1.height / 24//50

            width: win1.width / 2 - win1.width / 13.1 - win1.width / 48
            height: win1.height

//            anchors.right: window.right

            Text {
                anchors.right: parent.right//window.right
                text: qsTr("Период срочной службы")
                color: "white"
                font.pixelSize: 12
                //effectiveHorizontalAlignment: Text.AlignRight
            }

            Text{
                anchors.right: parent.right
                text: "с 07.2021 по 07.2022 гг."
                color: "white"
                font.pixelSize: 12

//                effectivreHorizontalAlignment: Text.AlignRight
            }
        }
    }
}

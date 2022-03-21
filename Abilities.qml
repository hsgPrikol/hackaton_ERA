import QtQuick 2.15
import QtQuick.Window 2.15
import QtQuick.Controls 1.3
import QtQuick.Layouts 1.3

Column{
    function test()
    {
        return 1 / ((window.width * window.height) / 550000)
    }

    function randomTest()
    {
        print("random =",Math.round((Math.random() * (5 - 1) + 1)))
        return Math.round(Math.random() * (5 - 0) + 0) +1
    }

    width: window.width / 2
    spacing: window.width / 80//10

    Column{
        spacing: window.width / 80//10
        width: parent
        Repeater{
            id: repColumn
            model: database.getCountSkills(anotherWindow.index)
            Rectangle{

                width: ((anotherWindow.width - 15)) / 5 * randomTest()
                height: anotherWindow.height / 40//30
                color: "lightgray"
//                Rectangle{
//                    width: parent.width
//                    height: parent.height
//                    color: "transparent"
                    Text {
                        //x: window.width / 80//10
                        x: 15
                        text: anotherWindow.listSkills[index]
                        color: "black"
                        font.pixelSize: 12//window.sizeText / test()
                        anchors.verticalCenter: parent.verticalCenter
                        anchors.left: parent.left
                    }
                }

            }
            //        Rectangle{

            //            width: ((window.width - 15)) / 5 * 2
            //            height: window.height / 40//30
            //            color: "lightgray"

            //            Rectangle{
            //                width: parent.width
            //                height: parent.height
            //                color: "transparent"
            //                Text {
            //                    //x: window.width / 80//10
            //                    x: 15
            //                    text: qsTr("Photoshop")
            //                    color: "black"
            //                    font.pixelSize: 12//window.sizeText / test()
            //                    anchors.verticalCenter: parent.verticalCenter
            //                    anchors.left: parent.left
            //                }
            //            }
            //        }

            //        Rectangle{

            //            width: ((window.width - 15)) / 5* 1
            //            height: window.height / 40//30
            //            color: "lightgray"


            //            Rectangle{
            //                width: parent.width
            //                height: parent.height
            //                color: "transparent"

            //                Text {
            //                    //x: window.width / 80//10
            //                    text: qsTr("C++")
            //                    color: "black"
            //                    font.pixelSize: 12//window.sizeText / test()
            //                    anchors.verticalCenter: parent.verticalCenter
            //                    anchors.left: parent.left
            //                }

            //            }
            //        }

            //        Rectangle{

            //            width: ((window.width - 25)) / 5 * 5//ocenka
            //            height: window.height / 40//30
            //            color: "lightgray"


            //            Rectangle{
            //                width: parent.width
            //                height: parent.height
            //                color: "transparent"

            //                Text {
            //                    //                x: window.width / 80//10
            //                    x: 40
            //                    text: qsTr("C")
            //                    color: "black"
            //                    font.pixelSize: 12//window.sizeText / test()
            //                    anchors.verticalCenter: parent.verticalCenter
            //                    anchors.left: parent.left
            //                }
            //            }
            //        }

            //        Rectangle{

            //            width: ((window.width - 25)) / 5 * 4//ocenka
            //            height: window.height / 40//30
            //            color: "lightgray"

            //            Rectangle{
            //                width: parent.width
            //                height: parent.height
            //                color: "transparent"

            //                Text {
            //                    //                x: window.width / 80//10
            //                    x: 40
            //                    text: qsTr("HTML")
            //                    color: "black"
            //                    font.pixelSize: 12//window.sizeText / test()
            //                    anchors.verticalCenter: parent.verticalCenter
            //                    anchors.left: parent.left
            //                }
            //            }
        }

        Rectangle{
            id: axis
            width: (anotherWindow.width - 15) - 10
            height: anotherWindow.height / 24 * 2 //50
            Image {
                anchors.fill: axis
                //                fillMode: Image.PreserveAspectFit
                source: "qrc:/new/prefix1/picture/шкала.png"
            }
        }
    }


//}

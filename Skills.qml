import QtQuick 2.15
import QtQuick.Window 2.15
import QtQuick.Controls 1.3
import QtQuick.Layouts 1.3

Row{
    function test()
    {
        return 1 / ((win1.width * win1.height) / 450000)
    }

    Rectangle{
        width: 100//window.width / 8 //100
        height: win1.height / 25//15//40
        color: "black"

        Rectangle{
            width: win1.width / 8 //100
            height: win1.height / 25//15//40
            color: "transparent"
            Text {
                text: qsTr("Навыки")
                color: "white"
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
    Rectangle{

        width: win1.width / 2 - (win1.width / 8 + 40)// / 2 //200
        height: win1.height / 30//40
        color: "white"
    }
}

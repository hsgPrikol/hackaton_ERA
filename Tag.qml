import QtQuick 2.12
import QtQuick.Window 2.12
import QtQuick.Controls 2.12


Rectangle{
    width: 40
    height: 21
    radius: 5
    color: "lightgray"
    Text{
        anchors.centerIn: parent
        text: root.listSkills[index]
        font.family: "GOST type B"
        font.pixelSize: 12
    }
}

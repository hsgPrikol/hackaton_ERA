import QtQuick 2.15
import QtQuick.Window 2.15
import QtQuick.Controls 2.4
import QtQuick.Layouts 1.3

ApplicationWindow {
    id: window
    width: 800
    height: 1200
    //    visible: true//
    title: qsTr("About Me")

    property int indexProfile: 0
    property int sizeSkills: 64
    property int sizeCheckList: 20
    property int ocenka: 5
    property int sizeText: 15

    Rectangle{
        id: columnFiltr
        width: 150
        height: 30
        color: "gray"
        z:10
        anchors.right: parent.right
        Column{
            TextField{
                id: filtr
                width: columnFiltr.width
                height: columnFiltr.height

            }
            Button{
                z:100
                id: butFiltr
                width: columnFiltr.width
                height: columnFiltr.height
//                color: "black"
               text: "Искать"
                MouseArea{
                    anchors.fill: butFiltr
                    onClicked: {
                        startWindow.countModel = database.getCountFiltr(filtr.text)
                        startWindow.listFiltr = database.getCountFiltrID(filtr.text)

                        var list = database.getProfileData(startWindow.listFiltr[index])

                        startWindow.fullName = list[0]
                        startWindow.spec = list[1]

                        print(database.getCountFiltrID(filtr.text))
                        if (filtr.text == "")
                        {
                            startWindow.countModel = database.getCountID()
                        }
                    }
                }
            }
        }
    }



    ScrollView{
        clip: true
        anchors.fill: parent
        contentWidth: parent.width
        contentHeight: 1500



        OperatorList{
            id: list1
            //            onFlagChanged: {
            //                if (flag){
            //                    z = 5
            //                }
            //                else z = -5
            //            }
        }
    }
    //}
    Profile{
        id: anotherWindow
        property var haracteristics: "value"
        width: window.width
        height: window.height
        //            z: list.flag ? 5 : -5

        //            onChangeFlagChanged: {
        //                list.flag = !changeFlag
        //                print(list.flag)
        //                print(changeFlag)
        //                print(z)
    }
}

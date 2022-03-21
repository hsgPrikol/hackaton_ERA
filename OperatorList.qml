import QtQuick 2.12
import QtQuick.Window 2.12

Rectangle{
    id: root
    property bool flag: false
    property int count: 0

    function add()
    {
        return index + 1
    }

    anchors.fill: parent
    Item{
        anchors.fill: parent
        Rectangle{
            height: root.height + 500
            y: -250
            width: 50
            color: "white"

            Component.onCompleted: {
//                root.count = database.getCountID()
                startWindow.countModel = database.getCountID()

            }
        }

        Column{
            y: 15
            width: parent.width
            spacing: 10
            x: 10
            Repeater{
                id: repeaterProfile
                anchors.horizontalCenter: parent.horizontalCenter
//                width: parent.width-110
                model: startWindow.countModel
                OperatorCard {
                    id: card

                    property var full_name: ""
                    property var special: ""
                    anchors.horizontalCenter: root.horizontalCenter
                    MouseArea{
                        anchors.fill: parent

                        onClicked: {
//
                            print(index+1)

                            var list = database.getProfileData(index+1)

                            //print(startWindow.listFiltr[0], startWindow.listFiltr[1], "23333333333333333333333333333")

                            database.setText(list[0])
                            print("2222222222222222222222222",list[0], list[1])

                            print(flag)
                            flag  = true
                            print(flag)

                            anotherWindow.show()
                            anotherWindow.test = list[0]
                            anotherWindow.test1 = list[1]
                            anotherWindow.index = add()
                            anotherWindow.listSkills = database.getSkills(index+1)


                            var string = database.getHaracteristics(index+1)

                            anotherWindow.haracteristics = string

                            print(add())



                        }
                    }
                }
            }
        }

        Rectangle{
            x: parent.width-50
            height: startWindow.height + 500
            y: -250
            width: 50
            color: "white"
        }
    }
}

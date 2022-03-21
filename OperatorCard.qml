import QtQuick 2.12
import QtQuick.Window 2.12
import QtQuick.Controls 2.12

Rectangle{
    id: root
    color: "white"
    width: parent.width-50
    height: 100

    property var city: "value"
    property var countSkills: 0
    property string full_name: ""
    property string spec: ""

    function add()
    {
        print(index + 1)
        return index + 1
    }

    property var listSkills: []
    property int sizeArraySkills: 0

    Component.onCompleted: {
        //        root.name1 = database.getCity()
        var value = add()
        root.listSkills = database.getSkills(value)
        sizeArraySkills = value

        print(startWindow.listFiltr[0],startWindow.listFiltr[1], "233232343424234234")

        var listSkills = database.getSkills(value)

        var list = database.getProfileData(value)
        root.full_name = list[0]
        root.spec = list[1]

        startWindow.fullName = root.full_name
        startWindow.spec = root.spec

        root.city = database.getCity(value)

        print(startWindow.fullName, startWindow.spec, "55555555555")
    }

    Rectangle{
        x: 7
        height: 100
        width: 5
        color: "black"
    }

    Rectangle{
        id: cardedge
        x:7
        y: parent.height-2
        width: parent.width - 75
        height: 2
        color: "black"
    }
    y: 7
//    Row{
//        id: rowCity
        Text{
            x: 15
            id: full_name
            text: root.full_name
            font.family: "GOST type B"
            font.pixelSize: 20
        }

//        Text{
//            x: 15
//            anchors.right: parent.right
//            text: root.full_name
//            font.family: "GOST type B"
//            font.pixelSize: 20
//        }
//    }
    Text{
        x: 15
        y: 25

        id: specialization
        text: root.spec
        font.family: "GOST type B"
        font.pixelSize: 15
    }

    Flow{
        width: cardedge.width
        x: 15
        y: 45
        spacing: 3
        Repeater{
            id: repeaterSkills
            model: database.getCountSkills(sizeArraySkills)

            Tag {
            }
        }
    }
}

import QtQuick 2.15
import QtQuick.Window 2.15
import QtQuick.Controls 2.4
import QtQuick.Layouts 1.3


//ApplicationWindow{
//    id: profile
ApplicationWindow{
    id: win1
    signal signalExit
    property var haracter: "value"
    property var test: "value"
    property var test1: "value"
    property var index: 0
    property var listSkills: []
    ScrollView{
        id: scroll
        property string indexProfileMy: window.indexProfile
        property string full_name: ""
        property string spec: ""

        Component.onCompleted: {

            //        scroll.name1 = database.getCity()
            //        indexProfileMy = add()

            //        var a = database.getIndexProfile()+1
            //        print("a,",a)
            //        var list = database.getProfileData(1)
            ////        print("1111111111111111111111111111111111111111", indexProfileMy)
            //        scroll.full_name = list[0]
            //        scroll.spec = list[1]

            //        print(scroll.full_name,scroll.spec)
        }

        property bool changeFlag: addInfo.flag
        property var name1: ""

        function get()
        {
            return database.getText()
        }

        anchors.fill: parent
        clip: true
        contentHeight: 1500//parent.height*1.5
        contentWidth: parent.width
        ScrollBar.vertical: ScrollBar.AlwaysOn

        Rectangle{
            anchors.fill: parent
            color: "white"

            Column{
                height: parent
                spacing: win1.width / 90//80//10

                RowLayout{
                    anchors.horizontalCenter: parent.horizontalCenter
                    width: win1.width - 50
                    y: 10
                    id: rowNameSpecial
                    //                    width: window.width

                    Rectangle{
                        id: name
                        width: win1.width / 8
                        height: win1.height / 40//30
                        color: "transparent"

                        Text {
                            text: test
                            font.pixelSize: 17
                        }
                    }
                    Rectangle{
                        id: special
                        anchors.right: parent.right
                        width: win1.width / 8
                        height: win1.height / 40//30
                        color: "transparent"
                        Text {
                            text: test1
                            font.pixelSize: 17
                        }
                    }
                }

                Rectangle{
                    id: rec
                    width: win1.width / 2.25 //355
                    height: win1.height / 10//59
                    x: 15
                    Image {
                        anchors.fill: rec
                        id: aboutMe
                        fillMode: Image.PreserveAspectFit
                        source: "qrc:/new/prefix1/picture/ПРОФИЛЬ.png"
                    }
                }

                ImageAndInfo {
                    id: imageAndInfo
                    x: win1.width / 80//10
                    //y: window.height / 120//10
                }

                Rectangle{
                    width: win1.width
                    height: win1.height / 60 //20
                    color: "transparent"
                }

                Rectangle{
                    x: win1.width / 80//10
                    width: win1.width - win1.width / 16 //50
                    anchors.centerIn: win1
                    height: win1.height / 300//4
                    color: "black"
                }

                Column{
                    spacing: 15
                    Column{
                        //                        height: 250
                        spacing: 15
                        x: win1.width / 90//80//10
                        width: win1.width
                        Skills {

                        }
                        Abilities {
                            //                            x: window.width / 80//10
                        }
                    }

                    Row{
                        height: 250
                        x: win1.width / 90
                        Science {
                        }

                        Rectangle{
                            id: rec_fewmomentslater
                            width: win1.width / 24 //40
                            height: win1.height / 25//40
                            Image {
                                anchors.fill: rec_fewmomentslater
                                source: "qrc:/new/prefix1/picture/Triangle.png"
                            }
                        }
                    }
                }
                AdditionalInfo {
                    id: addInfo
                }
            }
//        }
    }
}
}


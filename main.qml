import QtQuick 2.15
import QtQuick.Window 2.15
import QtQuick.Controls 2.4
import QtQuick.Layouts 1.3

ApplicationWindow {
    id: startWindow
    width: 400
    height: 240
    visible: true
    title: qsTr("Autorization")
    color: "white"

    property var profFiltr: []
    property var listFiltr: []
    property int countModel: 0
    property var fullName: ""
    property var spec: ""
//    Component.onCompleted: {
//        window.hide()
//    }


    ColumnLayout{
        id: columnLayout
        anchors.centerIn: parent
        spacing: 10

        Rectangle{
            id: logRect
            width: 160
            height: 40
            color: "transparent"
            RowLayout{
                anchors.right:logRect.right
                Text {
                    text: "Login"
                }
                TextField{
                    id: login
                    text: "KBP@local.ru"
                }
            }
        }
        Rectangle{
            id: pasRect
            width: 160
            height:50
            color: "transparent"

            MouseArea{
                id: mousePasRect
                anchors.fill: parent


            }

            RowLayout{
                anchors.right: pasRect.right
                Text {
                    text: "Password"
                }
                TextField{
                    id: password
                    text: "1234"
                    echoMode: TextInput.Password
                }
            }
        }

        Button{
            id: button
            text: "Sign in"

            onClicked: {
                if (login.text === "KBP@local.ru" && password.text === "1234")
                {
                    window.show()
                    startWindow.hide()
                }
            }
        }


        //            onClicked: {
        //                var hash = infoDataBase.hashPassword(password.text);

        //                if (infoDataBase.camparePassword(hash, login.text))

        //                {
        //                    infoDataBase
        //                    startWindow.hide()
        //                    mainProfile.show()
        //                    //                    registration.show()
        //                }
        //                else{
        //                    errorPassword.open()
        //                }
        //            }



        //    }

        //    Component{
        //        id: mainView

        //        Row{

        //        }
        //    }

        //    Profile {
        //    }
    }
    WindowList {
        id: window
    }

//    Profile{
//        id: profi
//    }

    //    RowLayout{
    //        WorkWindow {
    //            id: workWindow

    //            onSignalExit: {
    //                startWindow.show()

    //                workWindow.close()
    //            }
    //        }

    //        WorkWindow{
    //            id: secondWindow

    //            onSignalExit: {
    //                startWindow.show()
    //            }
    //        }
    //    }

    //    Registration {
    //        id: registration
    //    }

    //    MainProfile {
    //        id: mainProfile
    //    }

    //    MessageDialog{
    //        id: errorPassword
    //        title: "Error"
    //        text: "Password don`t equal"
    //        icon: StandardIcon.Critical
    //        standardButtons: StandardButton.Ok

    //        onAccepted: {
    //            password.text = ""
    //        }
    //    }
    //}




}





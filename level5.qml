import QtQuick
import QtQuick.Controls

Rectangle {

    id:level5window
    anchors.fill: parent
    Image
    {
        source:"assets/background.png"
        anchors.fill: parent
        height:parent.height
        width:parent.width
    }
    Loader
    {
        id:mainmenuLoader
        anchors.fill: parent
    }



    Text {
        id:level1
        text: "PYTANIE NUMER 5"
        anchors.top:parent.top
        anchors.topMargin: 20
        anchors.horizontalCenter: parent.horizontalCenter
        font.pointSize: 20
    }

    Text
    {
        id:question
        text:"Przepraszam"
        font.pointSize: 25
        font.bold: true
        anchors.top: level1.bottom
        anchors.topMargin: 20
        anchors.horizontalCenter: parent.horizontalCenter

    }

Button
{
    id:mainmenu
    height:50
    width:50
    anchors.left:parent.left
    anchors.top: parent.top
Text
{
    text:"🏠"
    font.pointSize: 30
    anchors.centerIn: parent
    height:parent.height
    width:parent.width
}


    MouseArea
    {
        id:mainMenuArea
        anchors.fill:parent
        hoverEnabled: true
        cursorShape: Qt.PointingHandCursor

        onClicked:
        {
            mainmenuLoader.source="Main.qml"
        }
    }
}


    Column
    {
        anchors.verticalCenter: parent.verticalCenter
        anchors.horizontalCenter: parent.horizontalCenter
        spacing:20

        //------------------------------------------------A----------------------------------------------------------
    Button
    {
        id:a
        height:50
        width:200
        clip:true

       Rectangle
        {
            id:aRect
            height:parent.height
            width:parent.width
            color:aRectMouse.containsMouse?"#B6FFA1":"white"
            border.color: "black"
            anchors.fill: parent
            radius:10

            Text
            {
                id:aText
                text:"Hola"
                font.pixelSize: 15
                font.bold: true
                anchors.centerIn: parent
            }

            MouseArea
            {
                id:aRectMouse
                anchors.fill: parent
                hoverEnabled: true
                cursorShape: Qt.PointingHandCursor

                onClicked:
                {
                    incorrectAns.visible=true
                }
            }
        }
    }

//------------------------------------------------B----------------------------------------------------------
    Button
    {
        id:b
        height:50
        width:200

        Rectangle
        {
            id:bRect
            height:parent.height
            width:parent.width
            color:bRectMouse.containsMouse?"#B6FFA1":"white"
            border.color: "black"
            anchors.fill: parent
            radius:10

            Text
            {
                id:bText
                text:"Adiós"
                font.pixelSize: 15
                font.bold: true
                anchors.centerIn: parent
            }
        }

        MouseArea
        {
            id:bRectMouse
            anchors.fill: parent
            hoverEnabled: true
            cursorShape: Qt.PointingHandCursor

            onClicked:
            {
incorrectAns.visible=true
            }
        }
    }



    //------------------------------------------------C----------------------------------------------------------
    Button
    {
        id:c
        height:50
        width:200


        Rectangle
        {
            id:cRect
            height:parent.height
            width:parent.width
            color:cRectMouse.containsMouse?"#B6FFA1":"white"
            border.color: "black"
            anchors.fill: parent
            radius:10

            Text
            {
                id:cText
                text:"Hasta luego"
                font.pixelSize: 15
                font.bold: true
                anchors.centerIn: parent
            }

        }
        MouseArea
        {
            id:cRectMouse
            anchors.fill: parent
            hoverEnabled: true
            cursorShape: Qt.PointingHandCursor

            onClicked:
            {
                incorrectAns.visible=true

            }
        }
    }

//------------------------------------------------D----------------------------------------------------------

    Button
    {
        id:d
        height:50
        width:200


        Rectangle
        {
            id:dRect
            height:parent.height
            width:parent.width
            color:dRectMouse.containsMouse?"#B6FFA1":"white"
            border.color: "black"
            anchors.fill: parent
            radius:10

            Text
            {
                id:dText
                text:"Lo siento"
                font.pixelSize: 15
                font.bold: true
                anchors.centerIn: parent
            }

            MouseArea
            {
                id:dRectMouse
                anchors.fill: parent
                hoverEnabled: true
                cursorShape: Qt.PointingHandCursor

                onClicked:
                {
                    correctAns.visible=true

                }
            }
        }
    }
}
    //------------------------------------------------INCORRECT----------------------------------------------------------
    Rectangle
    {
        id:incorrectAns
        height:parent.height
        width:parent.width
        color:"white"
        visible: false

        Text
        {
            id:incorrectAnsText
            color:"red"
            text:"Zła odpowiedź, spróbuj ponownie"
            font.bold: true
            font.pointSize: 14
            anchors.bottom: x.top
            anchors.bottomMargin: 150
            anchors.horizontalCenter: parent.horizontalCenter
        }

        Button
        {
            id:x
            height:100
            width:300
            anchors.centerIn: parent


            Rectangle
            {
                id:xRect
                anchors.fill: parent
                color:"red"
                radius:10
            }
            Text
            {
                text:"✗"
                anchors.centerIn:parent
                font.bold: true
                font.pointSize: 30
                color:"white"

            }
MouseArea
{
    anchors.fill: parent
    cursorShape: Qt.PointingHandCursor
    hoverEnabled: true
    onClicked:
    {
incorrectAns.visible=false
    }
}

        }
    }
 //-----------------------------------------------CORRECT--------------------------------------------------------------
    Rectangle
    {
        id:correctAns
        height:parent.height
        width:parent.width
        color:"white"
        anchors.fill: parent
        visible: false


    Button
    {
        id:correctAnsButton
        height:100
        width:300
        anchors.centerIn: parent
        Rectangle
        {
            id:correntAnsRect
            color:"green"
            anchors.fill: parent
            height:parent.height
            width:parent.width
            radius:10
        }
        Text
        {
            id:concragtsText
            text:"Gratulacje! Kliknij przycisk,
aby przejść do następnego poziomu!"
            anchors.bottom: correctAnsButton.top
            anchors.bottomMargin: 150
            font.pointSize: 13
            color:"green"
            font.bold: true
            anchors.horizontalCenter: parent.horizontalCenter
        }
            Text
            {
                id:correntAnsText
                text:"✔"
                color:"white"
                anchors.centerIn: parent
                font.bold: true
                font.pointSize: 30
            }
            MouseArea
            {
                id:correctMouse
                anchors.fill: parent
                hoverEnabled: true
                cursorShape: Qt.PointingHandCursor

                onClicked:
                {
                    level5Loader.source="chapter2.qml"
                }
            }
    }
    }
    Loader
    {
        id:level5Loader
        anchors.fill: parent
    }

}

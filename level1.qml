import QtQuick
import QtQuick.Controls

Rectangle {

    id:level1window
    color: "#FFF6E3"
    anchors.fill: parent


    Loader
    {
        id:mainmenuLoader
        anchors.fill: parent
    }



    Text {
        id:level1
        text: "PYTANIE NUMER 1"
        anchors.top:parent.top
        anchors.topMargin: 20
        anchors.horizontalCenter: parent.horizontalCenter
        font.pointSize: 20
    }

    Text
    {
        id:question
        text:"Co u Ciebie słychać"
        font.pointSize: 25
        font.bold: true
        anchors.top: level1.bottom
        anchors.topMargin: 20
        anchors.horizontalCenter: parent.horizontalCenter

    }

Button
{
    id:mainmenu
    text:"home"
    height:50
    width:50
    anchors.left:parent.left
    anchors.top: parent.top

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
            color:aRectMouse.containsMouse?"#D4F6FF":"white"
            border.color: "black"
            anchors.fill: parent
            radius:10

            Text
            {
                id:aText
                text:"¿Cómo es tu trabajo?"
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
            color:bRectMouse.containsMouse?"#F0C1E1":"white"
            border.color: "black"
            anchors.fill: parent
            radius:10

            Text
            {
                id:bText
                text:"¿Qué pasa?"
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


                correctAnsRect.visible=true


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
            color:cRectMouse.containsMouse?"#9B7EBD":"white"
            border.color: "black"
            anchors.fill: parent
            radius:10

            Text
            {
                id:cText
                text:"coexistir"
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
                text:"?Qué pasa?"
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
                    incorrectAns.visible=true

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
        id:correctAnsRect
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
                    level2Loader.source="level2.qml"
                }
            }
    }
    }
    Loader
    {
        id:level2Loader
        anchors.fill: parent
    }

}

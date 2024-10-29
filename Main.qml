import QtQuick
import QtQuick.Controls

Window {
    width: 720/2
    height: 1280/2
    visible: true
    title: qsTr("Hello World")


    Rectangle
    {
        id:background
        color:"gray"
        anchors.fill: parent
        height:parent.height
        width:parent.width
    }

    Button
    {
        id:start
        height:40
        width:300
        anchors.top:parent.top
        anchors.topMargin: 50
        anchors.horizontalCenter: parent.horizontalCenter

        Rectangle
        {
            id:firstRect
            color:"#D76C82"
            radius:10
            anchors.fill: parent
            height:parent.height
            width:parent.width

            Text
            {
                id:firstText
                text:"Rozpocznij naukę!"
                color:"white"
                font.bold: true
                font.pointSize: 12
                anchors.centerIn: parent
            }
        }
    }

    Button
    {
        id:muteApp
        height:40
        width:40
        anchors.bottom:parent.bottom
        anchors.bottomMargin: 15
        anchors.right: parent.right
        anchors.rightMargin: 15

        Rectangle
        {
            id:muteAppRect
            color:"#D76C82"
            radius:10
            anchors.fill: parent
            height:parent.height
            width:parent.width

            Text
            {
                id:muteAppText
                text:"🔇"
                color:"white"
                font.pointSize: 12
                anchors.centerIn: parent
            }
        }
    }
        Grid

        {
            id:menu
            spacing:10
            anchors.top:firstRect.bottom
            anchors.left: parent
            anchors.centerIn: parent
            columns:2

    Button
    {
        id:settings
        height:100
        width:100
        Rectangle

        {
            id:settingsRect
            color:"#CDC1FF"
            radius:10
            anchors.fill: parent
            height:parent.height
            width:parent.width

            Text
            {
                id:settingsText
                text:"Ustawienia"
                color:"white"
                font.bold: true
                font.pointSize: 12
                anchors.centerIn: parent
            }

        }
    }
    Button
    {
        id:stats
        height:100
        width:100


        Rectangle
        {
            id:statsRect
            color:"#FFCF9D"
            radius:10
            anchors.fill: parent
            height:parent.height
            width:parent.width

            Text
            {
                id:statsText
                text:"Statystyki"
                color:"white"
                font.pointSize: 12
                font.bold: true
                anchors.centerIn: parent
            }

        }
    }

    Button
    {
        id:achivements
        height:100
        width:100
        Rectangle

        {
            id:achivementsRect
            color:"#72BF78"
            radius:10
            anchors.fill: parent
            height:parent.height
            width:parent.width

            Text
            {
                id:achivementsText
                text:"Osiągnięcia"
                color:"white"
                font.pointSize: 12
                font.bold: true
                anchors.centerIn: parent

            }

        }
    }

    Button
    {
        id:x
        height:100
        width:100
        Rectangle

        {
            id:xRect
            color:"#ECDFCC"
            radius:10
            anchors.fill: parent
            height:parent.height
            width:parent.width

            Text
            {
                id:xText
                text:"x"
                color:"white"
                font.pointSize: 12
                font.bold: true
                anchors.centerIn: parent
            }

        }
    }

    Button
    {
        id:levelChoice
        height:100
        width:100
        Rectangle

        {
            id:levelRect
            color:"#6A9AB0"
            radius:10
            anchors.fill: parent
            height:parent.height
            width:parent.width

            Text
            {
                id:levelText
                text:"  Wybór
poziomu"
                color:"white"
                font.bold: true
                font.pointSize: 12
                anchors.centerIn: parent

            }

        }
    }

    Button
    {
        id:dictionary
        height:100
        width:100
        Rectangle

        {
            id:dictionaryRect
            color:"#CDC1FF"
            radius:10
            anchors.fill: parent
            height:parent.height
            width:parent.width

            Text
            {
                id:dictionaryText
                text:"Słownik"
                color:"white"
                font.bold: true
                font.pointSize: 12
                anchors.centerIn: parent
            }

        }
    }
    }
}


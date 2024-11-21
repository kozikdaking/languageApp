import QtQuick
import QtQuick.Controls

ApplicationWindow {
    id:window
    width: 720/2
    height: 1280/2
    visible: true
    title: qsTr("Spain App")
    minimumWidth: width
        maximumWidth: width
        minimumHeight: height
        maximumHeight: height


    Rectangle
    {
        id:background
        anchors.fill: parent
        height:parent.height
        width:parent.width
        Image
        {
            source:"assets/background.png"
            anchors.fill: parent
            height:parent.height
            width:parent.width
        }

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
            id:startRect
            color:startArea.containsMouse?"#70e000":"#55a630"
            radius:10
            anchors.fill: parent
            height:parent.height
            width:parent.width

            Text
            {
                id:startText
                text:"Rozpocznij naukę!"
                color:"white"
                font.bold: true
                font.pointSize: 12
                anchors.centerIn: parent
            }
        }
        MouseArea
        {
            id:startArea
            anchors.fill:parent
            hoverEnabled: true
            cursorShape: Qt.PointingHandCursor

            onClicked:
            {
                mainLoader.source="level1.qml"
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
       Column
        {
            id:menu
            spacing:15
            anchors.top:firstRect.bottom
            anchors.left: parent
            anchors.centerIn: parent

    Button
    {
        id:settings
        height:40
        width:180
        Rectangle
        {
            id:settingsRect
            color:settingsArea.containsMouse?"#85182a":"#e01e37"
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
        MouseArea
        {
            id:settingsArea
            anchors.fill: parent
            hoverEnabled: true
            cursorShape: Qt.PointingHandCursor
            onClicked:
            {

            }
        }
    }
    Button
    {
        id:stats
        height:40
        width:180


        Rectangle
        {
            id:statsRect
            color:statsArea.containsMouse?"#85182a":"#e01e37"
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
        MouseArea
        {
            id:statsArea
            anchors.fill: parent
            hoverEnabled: true
            cursorShape: Qt.PointingHandCursor
            onClicked:
            {

            }
        }
    }

    Button
    {
        id:achivements
        height:40
        width:180
        Rectangle

        {
            id:achivementsRect
            color:achivementsArea.containsMouse?"#85182a":"#e01e37"
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
        MouseArea
        {
            id:achivementsArea
            anchors.fill: parent
            hoverEnabled: true
            cursorShape: Qt.PointingHandCursor
            onClicked:
            {

            }
        }
    }

    Button
    {
        id:x
        height:40
        width:180
        Rectangle

        {
            id:xRect
            color:xArea.containsMouse?"#85182a":"#e01e37"
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
        MouseArea
        {
            id:xArea
            anchors.fill: parent
            hoverEnabled: true
            cursorShape: Qt.PointingHandCursor
            onClicked:
            {

            }
        }
    }
//-----------------------------------------------------------------------LEVEL-----------------------------------------------------------------------
    Button
    {
        id:levelChoice
        height:40
        width:180
        Rectangle
        {
            id:levelRect
            color:levelChoiceArea.containsMouse?"#85182a":"#e01e37"
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
        MouseArea
        {
            id:levelChoiceArea
            anchors.fill: parent
            hoverEnabled: true
            cursorShape: Qt.PointingHandCursor
            onClicked:
            {
                levelChoiceLoader.source="levelChoice.qml"
            }
        }
    }
//-----------------------------------------------------------------------LEVEL-----------------------------------------------------------------------
    Button
    {
        id:dictionary
        height:40
        width:180
        Rectangle

        {
            id:dictionaryRect
            color:dictionaryArea.containsMouse?"#85182a":"#e01e37"
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
            MouseArea
            {
                id:dictionaryArea
                anchors.fill: parent
                hoverEnabled: true
                cursorShape: Qt.PointingHandCursor
                onClicked:
                {
                    dictionaryLoader.source="Slownik.qml"
                }
            }

        }
    }

    }
        Loader
        {
            id:mainLoader
            anchors.fill: parent
        }
        Loader
        {
            id:levelChoiceLoader
            anchors.fill: parent
        }
        Loader
        {
            id:dictionaryLoader
            anchors.fill: parent
        }
}


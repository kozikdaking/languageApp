import QtQuick
import QtQuick.Controls
Rectangle{

         id:levelchoice
         anchors.fill: parent
        Image
        {
            source:"assets/background.png"
            anchors.fill: parent
            height:parent.height
            width:parent.width
        }
Grid
{
    columns:2
    spacing:10
    anchors.centerIn: parent
//---------------------------------------------------------------------LEVEL 1---------------------------------------------------------------------
Button
{
    id:level1
    height:100
    width:100
Rectangle
{
    color:"#caf0f8"
    anchors.fill: parent
    radius:5
    height:parent.height
    width:parent.width
}
    Text
    {
       text:"POZIOM 1"
       color:"white"
       font.pointSize: 15
       anchors.centerIn: parent
    }
    MouseArea
    {
        id:level1MouseArea
        anchors.fill: parent
        hoverEnabled: true
        cursorShape: Qt.PointingHandCursor
        onClicked:
        {
           level1Loader.source="level1.qml"
        }
    }

}
//---------------------------------------------------------------------LEVEL 2---------------------------------------------------------------------
Button
{
    id:level2
    height:100
    width:100
    Rectangle
    {
        color:"#90e0ef"
        anchors.fill: parent
        radius:5
        height:parent.height
        width:parent.width
    }

    Text
    {
       text:"POZIOM 2"
       color:"white"
       font.pointSize: 15
       anchors.centerIn: parent
    }
    MouseArea
    {
        id:level2MouseArea
        anchors.fill: parent
        hoverEnabled: true
        cursorShape: Qt.PointingHandCursor
        onClicked:
        {
           levelLoader.source="level2.qml"
        }
    }

}
//---------------------------------------------------------------------LEVEL 3---------------------------------------------------------------------
Button
{
    id:level3
    height:100
    width:100
    Rectangle
    {
        color:"#48cae4"
        anchors.fill: parent
        radius:5
        height:parent.height
        width:parent.width
    }

    Text
    {
       text:"POZIOM 3"
       color:"white"
       font.pointSize: 15
       anchors.centerIn: parent
    }
    MouseArea
    {
        id:level3MouseArea
        anchors.fill: parent
        hoverEnabled: true
        cursorShape: Qt.PointingHandCursor
        onClicked:
        {
           levelLoader.source="level3.qml"
        }
    }

}

//---------------------------------------------------------------------LEVEL 4---------------------------------------------------------------------
Button
{
    id:level4
    height:100
    width:100
    Rectangle
    {
        color:"#0096c7"
        anchors.fill: parent
        radius:5
        height:parent.height
        width:parent.width
    }

    Text
    {
       text:"POZIOM 4"
       color:"white"
       font.pointSize: 15
       anchors.centerIn: parent
    }
    MouseArea
    {
        id:level4MouseArea
        anchors.fill: parent
        hoverEnabled: true
        cursorShape: Qt.PointingHandCursor
        onClicked:
        {
           levelLoader.source="level4.qml"
        }
    }

}
//---------------------------------------------------------------------LEVEL 5---------------------------------------------------------------------
Button
{
    id:level5
    height:100
    width:100
    Rectangle
    {
        color:"#023e8a"
        anchors.fill: parent
        radius:5
        height:parent.height
        width:parent.width
    }

    Text
    {
       text:"POZIOM 5"
       color:"white"
       font.pointSize: 15
       anchors.centerIn: parent
    }
    MouseArea
    {
        id:level5MouseArea
        anchors.fill: parent
        hoverEnabled: true
        cursorShape: Qt.PointingHandCursor
        onClicked:
        {
           levelLoader.source="level5.qml"
        }
    }

}
}
//---------------------------------------------------------------------MAIN MENU---------------------------------------------------------------------
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

 Loader
 {
     id:levelLoader
     anchors.fill:parent
 }
 Loader
 {
     id:level2Loader
     anchors.fill:parent
 }

 Loader
 {
     id:mainmenuLoader
     anchors.fill:parent
 }
}


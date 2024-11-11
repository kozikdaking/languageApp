import QtQuick
import QtQuick.Controls
Rectangle{

         id:levelchoice
       anchors.fill: parent
        color:"purple"


//---------------------------------------------------------------------LEVEL 1---------------------------------------------------------------------
Button
{
    id:level1
    height:100
    width:100
x:200
y:300
Rectangle
{
    color:"#8B5DFF"
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
    x:100
    y:200
    Rectangle
    {
        color:"#AE445A"
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
           level2Loader.source="level2.qml"
        }
    }

}
 Loader
 {
     id:level1Loader
     anchors.fill:parent
 }
 Loader
 {
     id:level2Loader
     anchors.fill:parent
 }
}


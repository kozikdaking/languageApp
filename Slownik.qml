import QtQuick
import QtQuick.Controls

Rectangle
{

    id:mainRect
    color:"gray"
width:720/2
height: 2000

    ScrollView {
          width: parent.width
          height: parent.height
          anchors.fill: parent

          Column {
                         width: parent.width
                         spacing: 10
    Text
    {

    id:slowniktext
    anchors.top:parent
    anchors.topMargin: 5
    anchors.horizontalCenter: parent.horizontalCenter
    text:"SŁOWNIK"
    font.pointSize: 25
    color:"#D4F6FF"
   }
Text
    {
        id:spanishWord
        color:"orange"
        font.bold: true
        font.pointSize: 15
        anchors.left: parent.left
        anchors.top: parent.top
        anchors.topMargin: 50
        text:"
        Hola
        Adiós
        Por favor
        Gracias
        Perdón
        Sí
        No
        ¿Cómo estás?
        Bien
        Mal
        ¿Cuántos?
        ¿Dónde?
        Amigo
        Familia
        Casa"


    }
    Text
    {
        id:polishWord
        color:"white"
        font.pointSize: 15
        anchors.left: spanishWord.right
        anchors.leftMargin:2
        anchors.top: parent.top
        anchors.topMargin: 50
        text:"
            Cześć
            Do widzenia
            Proszę
            Dziękuję
            Przepraszam
            Tak
            Nie
            Jak się masz?
            Dobrze
            Źle
            Ile?
            Gdzie?
            Przyjaciel
            Rodzina
            Dom"

    }
}
}
}

import QtQuick 2.15
import QtQuick.Controls 2.15

Rectangle {
    id: mainRect
    color: "gray"
    width: 360
    height: 640


    ScrollView {
        anchors.centerIn: parent
        width: parent.width * 0.9
        height: parent.height* 0.9

        Column {
            width: parent.width
            spacing: 20
            padding: 10
            anchors.horizontalCenter: parent.horizontalCenter

            Text {
                id: slowniktext
                anchors.horizontalCenter: parent.horizontalCenter
                text: "SŁOWNIK"
                font.pointSize: 25
                color: "#D4F6FF"
            }

            Row {
                spacing: 10
                anchors.horizontalCenter: parent.horizontalCenter

                Text {
                    id: spanishWord
                    color: "orange"
                    font.bold: true
                    font.pointSize: 15
                    text: "
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
Casa
Escuela
Trabajo
Amor
Tiempo
Día
Noche
Tarde
Mañana
Verano
Invierno
Primavera
Otoño
Comida
Agua
Feliz
Triste
Perro
Gato
Libro
Playa
Montaña
Ciudad
País"
                }

                Text {
                    id: polishWord
                    color: "white"
                    font.pointSize: 15
                    text: "
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
Dom
Szkoła
Praca
Miłość
Czas
Dzień
Noc
Popołudnie
Rano
Lato
Zima
Wiosna
Jesień
Jedzenie
Woda
Szczęśliwy
Smutny
Pies
Kot
Książka
Plaża
Góra
Miasto
Kraj"
                }
            }
        }
    }

    Button {
        id: mainmenu
        text: "home"
        height: 50
        width: 50
        anchors.left: parent.left
        anchors.top: parent.top
        onClicked: {
            mainmenuLoader.source = "Main.qml"
        }
    }

    Loader {
        id: mainmenuLoader
        anchors.fill: parent
    }
}

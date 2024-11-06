import QtQuick
import QtQuick.Controls
import QtQuick.Layouts

ApplicationWindow {
    visible: true
    width: 800
    height: 600
    title: "Ejercicio 1 - Posicionamiento Qt"

    RowLayout {
        anchors.fill: parent

        ColumnLayout {
            Layout.alignment: Qt.AlignLeft | Qt.AlignVCenter
            Layout.minimumWidth: 150

            Button {
                text: "Elementos"
                onClicked: stackView.currentIndex = 0
            }

            Button {
                text: "Edición"
                onClicked: stackView.currentIndex = 1
            }

            Button {
                text: "Usuarios"
                onClicked: stackView.currentIndex = 2
            }

            Button {
                text: "Configuración"
                onClicked: stackView.currentIndex = 3
            }
        }

        StackLayout {
            id: stackView
            Layout.fillWidth: true
            Layout.fillHeight: true

            // Vista de Elementos
            Item {
                ColumnLayout {
                    anchors.fill: parent
                    spacing: 10

                    GridLayout {
                        columns: 2
                        anchors.centerIn: parent
                        Layout.fillWidth: true
                        Layout.fillHeight: true

                        Rectangle {
                            color: "#E0E0E0"
                            Layout.maximumHeight: 250
                            Layout.maximumWidth: 350
                            Layout.minimumHeight: 50
                            Layout.minimumWidth: 100
                            Layout.preferredHeight: 100
                            Layout.preferredWidth: 150
                            Text {
                                anchors.centerIn: parent
                                text: "Tarjeta 1"
                                font.pointSize: 16
                            }
                        }

                        Rectangle {
                            color: "#E0E0E0"
                            Layout.maximumHeight: 250
                            Layout.maximumWidth: 350
                            Layout.minimumHeight: 50
                            Layout.minimumWidth: 100
                            Layout.preferredHeight: 100
                            Layout.preferredWidth: 150
                            Text {
                                anchors.centerIn: parent
                                text: "Tarjeta 2"
                                font.pointSize: 16
                            }
                        }
                    }

                    Button {
                        text: "Añadir"
                        anchors.bottom: parent.bottom
                        anchors.right: parent.right
                        anchors.margins: 20
                        width: 50
                        height: 50
                        font.pointSize: 20
                        background: Rectangle {
                            color: "#42A5F5"
                            radius: width / 2
                        }
                    }
                }
            }

            Item {
                Text {
                    anchors.centerIn: parent
                    text: "Vista de Edición"
                    font.pointSize: 20
                }
            }

            Item {
                Text {
                    anchors.centerIn: parent
                    text: "Vista de Usuarios"
                    font.pointSize: 20
                }
            }

            Item {
                Text {
                    anchors.centerIn: parent
                    text: "Vista de Configuración"
                    font.pointSize: 20
                }
            }
        }
    }
}

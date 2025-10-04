import Quickshell
import QtQuick
import QtQuick.Effects
import Quickshell.Io
import "./modules/widgets"

Scope {
    Variants {
        model: Quickshell.screens

        PanelWindow {
            required property var modelData
            screen: modelData

            anchors {
                bottom: true
                left: true
                right: true
            }

            implicitHeight: 30
            color: "transparent"

            Rectangle {
                id: glassBackground
                anchors.fill: parent
                color: "#1a1a1a"
                opacity: 0.3

                layer.enabled: true
                layer.effect: MultiEffect {
                    source: glassBackground

                    shadowEnabled: true
                    shadowColor: "#40000000"
                    shadowBlur: 0.8
                    shadowVerticalOffset: 2
                    shadowHorizontalOffset: 0

                    blurEnabled: true
                    blurMax: 80
                    blur: 1.0

                    saturation: 0.1
                    brightness: 0.05
                }
            }

            Rectangle {
                anchors.fill: parent
                color: "transparent"
                border.width: 1
                border.color: "#30ffffff"
                opacity: 0.6
            }

            ClockWidget {
                anchors.centerIn: parent
                color: "white"
            }
        }
    }
}
            


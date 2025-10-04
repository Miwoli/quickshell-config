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

            ClockWidget {
                anchors.centerIn: parent
            }
        }
    }
}
            


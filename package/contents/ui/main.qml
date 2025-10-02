import QtQuick
import QtQuick.Layouts
import org.kde.plasma.core as PlasmaCore
import org.kde.plasma.components 3.0 as PlasmaComponents
import org.kde.plasma.plasmoid 2.0

PlasmoidItem {
    preferredRepresentation: fullRepresentation
    
    fullRepresentation: Item {
        Layout.minimumWidth: label.implicitWidth
        Layout.maximumHeight: label.implicitHeight
        Layout.preferredWidth: 640
        Layout.preferredHeight: 480
        
        PlasmaComponents.Label {
            id: orgname
            anchors.fill: parent
            text: "Organization Name"
            horizontalAlignment: Text.AlignLeft
        }
        PlasmaComponents.Label {
            id: label
            anchors.fill: parent
            text: "Balance"
            horizontalAlignment: Text.AlignHCenter
        }
    }
}
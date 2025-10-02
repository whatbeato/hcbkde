import QtQuick
import QtQuick.Layouts
import org.kde.plasma.core as PlasmaCore
import org.kde.plasma.components 3.0 as PlasmaComponents
import org.kde.plasma.plasmoid 2.0

PlasmoidItem {
    preferredRepresentation: compactRepresentation
    
    fullRepresentation: Item {
        Layout.minimumWidth: label.implicitWidth
        Layout.maximumHeight: label.implicitHeight
        Layout.preferredWidth: 640 * PlasmaCore.Units.devicePixelRatio
        Layout.preferredHeight: 480 * PlasmaCore.Units.devicePixelRatio
        
        PlasmaComponents.Label {
            id: label
            anchors.fill: parent
            text: "testing this out :D"
            horizontalAlignment: Text.AlignHCenter
        }
    }
}
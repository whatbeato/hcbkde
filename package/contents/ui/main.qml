import QtQuick
import QtQuick.Layouts
import org.kde.plasma.core as PlasmaCore
import org.kde.plasma.components 3.0 as PlasmaComponents
import org.kde.plasma.plasmoid 2.0

PlasmoidItem {
    function request() {
        var xhr = XMLHttpRequest();
        xhr.onstatechange = function() {
            if (xhr.readyState == XMLHttpRequest.HEADERS_RECEIVED) {
                print('headers received!')
            } else if(xhr.readyState == XMLHttpRequest.DONE) {
                print('done')
                const response = JSON.parse(xhr.responseText.toString())
                view.model = response.times
            }
        }
        xhr.open("https://hcb.hackclub.com/api/v3/organizations/lisbon")
        xhr.send()
    }
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
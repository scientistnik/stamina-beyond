import QtQuick 2.7
import QtQuick.Controls 2.0
import QtQuick.Layouts 1.0

ApplicationWindow {
    visible: true
    width: 640
    height: 480
    title: qsTr("Stamina Beyond")

    Page {
        id: main_page
        focus: true;

        Rectangle {
            id: main_field
            x: 108
            y: 127
            width: 441
            height: 86
            color: "#ffffff"
            radius: 10;
            clip: false
            border.width: 3
            anchors.rightMargin: 0

            Text {
                id: text_befor
                x: 219
                y: -1
                text: qsTr("HELLO")
                anchors.left: parent.horizontalCenter
                anchors.top: parent.top
                anchors.bottom: parent.bottom
                anchors.right: parent.right
                verticalAlignment: Text.AlignVCenter
                horizontalAlignment: Text.AlignLeft
                font.pixelSize: 42
            }
            Text {
                id: text_after
                x: 219
                y: -1
                text: qsTr("")
                anchors.left: parent.left
                anchors.top: parent.top
                anchors.bottom: parent.bottom
                anchors.right: parent.horizontalCenter
                verticalAlignment: Text.AlignVCenter
                horizontalAlignment: Text.AlignRight
                font.pixelSize: 42
            }

            Rectangle {
                id: rectangle2
                x: 0
                y: 0
                width: 200
                height: 86
                color: "#8a7f7f"
                radius: 0
                opacity: 0.4
                anchors.right: parent.horizontalCenter
                anchors.left: parent.left
                anchors.top: parent.top
                anchors.bottom: parent.bottom
                anchors.leftMargin: 3
            }
        }

        Keys.onPressed: {
            var ch;

            switch(event.key) {
            case Qt.Key_A: ch = 'A'; break;
            case Qt.Key_B: ch = 'B'; break;
            case Qt.Key_C: ch = 'C'; break;
            case Qt.Key_H: ch = 'H'; break;
            case Qt.Key_E: ch = 'E'; break;
            case Qt.Key_L: ch = 'L'; break;
            case Qt.Key_O: ch = 'O'; break;
            case Qt.Key_Shift: ch = 'a'; break;

            }

            var text = text_befor.text
            if (text[0] === ch) {
                text_befor.text = text.substring(1);
                text_after.text += text[0]
            }

            event.accepted = true;

        }

        function key_pressed(ch) {
            var text = text_befor.text
            console.log(text + "=" + ch)
            if (text[0] === ch) {
                text_befor.text = text.substring(1);
                text_after.text += text[0]
            }
        }
    }
    TextField {
        //focus: true;
        Keys.onPressed: {
            var t = text[0]

            console.debug("Hello " + typeof(t))
            main_page.key_pressed(t);
            text = ""
            //event.accepted = true;
        }
    }

}

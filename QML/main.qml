import QtQuick 2.10
import QtQuick.Window 2.10

Window {
    id: root
    visible: true
    width: 1000
    height: 800
    title: qsTr("ClassicSim")

    property color darkGray: "#302f2e"
    property color darkBrown: "#3a2d1f"
    property color gold: "#ceac00"
    property color darkDarkGray: "#070707"
    property color gray: "#727171"

    property color colorDruid: "#FF7D0A"
    property color colorHunter: "#ABD473"
    property color colorMage: "#69CCF0"
    property color colorPaladin: "#F58CBA"
    property color colorPriest: "#FFFFFF"
    property color colorRogue: "#FFF569"
    property color colorShaman: "#0070DE"
    property color colorWarlock: "#9482C9"
    property color colorWarrior: "#C79C6E"
    property string fontNumbers: "Cambria Math"
    property string fontText: "Arial"

    color: darkGray

    RectangleBorders {
        id: continuousDpsUpdateRect
        anchors {
            right: parent.right
            top: parent.top
        }

        width: 220
        height: 120

        rectColor: darkDarkGray

        Text {
            id: continuousDpsUpdateText
            anchors.fill: parent

            text: "70.4"

            font {
                family: fontNumbers
                bold: true
                pointSize: 36
            }

            color: gold

            verticalAlignment: Text.AlignVCenter
            horizontalAlignment: Text.AlignHCenter
        }
    }

    NavigationBar {
        id: rightNavBar
        anchors {
            top: continuousDpsUpdateRect.bottom
            bottom: parent.bottom
            right: parent.right
        }

        choiceBackgroundColor: darkGray
        choiceSelectedBackgroundColor: darkDarkGray
        fontColor: gold

        onTalentsClicked: console.log("main: talents clicked")
        onEquipmentClicked: console.log("main: equipment clicked")
        onBuffsClicked: console.log("main: buffs clicked")
        onSettingsClicked: console.log("main: settings clicked")
    }

    Rectangle {
        id: mainView

        state: rightNavBar.state

        anchors {
            right: rightNavBar.left
            top: continuousDpsUpdateRect.bottom
            left: parent.left
            bottom: parent.bottom
        }

        color: darkDarkGray

        TalentCalculator {
            width: parent.width * 0.90
            x: parent.width / 2 - width / 2
            y: 20
        }
    }
}
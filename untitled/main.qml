import QtQuick 2.12
import QtQuick.Controls 2.5

ApplicationWindow
{
    visible: true
    width: 1080
    height: 1920
    title: qsTr("Tabs")

    SwipeView
    {
        id: swipeView
        anchors.fill: parent
        currentIndex: tabBar.currentIndex

        PageTrivia{        }

        PageYear {        }

        PageDate {        }

        PageMath {        }
    }

    footer: TabBar
    {
        id: tabBar
        currentIndex: swipeView.currentIndex
/*
        TabButton
        {
            id: tabButton
            text: qsTr("Page 1")
        }
        TabButton
        {
            x: 51
            y: 0
            text: qsTr("Page 2")
            anchors.left: tabButton.right
            anchors.leftMargin: 6
            anchors.verticalCenterOffset: 0
            anchors.bottomMargin: 0
            anchors.verticalCenter: parent.verticalCenter
            anchors.bottom: parent.bottom
            anchors.top: parent.top
        }*/
    }
}

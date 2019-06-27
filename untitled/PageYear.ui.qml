import QtQuick 2.12
import QtQuick.Controls 2.5

Page {
	width: 1080
	height:1920

	header: Label {
		id: idLabel
		text: qsTr("Year")
		property alias text1: idLabel.text
		font.pixelSize: Qt.application.font.pixelSize * 2
	}
		id: formContainer

		Text {
			anchors.horizontalCenter: parent.horizontalCenter
			anchors.verticalCenter: parent.verticalCenter
			id: idText
			wrapMode:wrap
			property alias text1: idText.text
			text: "Type a number!"
		}

		TextField {
			id : textFld
			x : parent.width / 2
			property alias num: textFld.displayText
			validator: IntValidator {bottom: 0; }
			placeholderText: qsTr("Enter a number")
		}

		Button {
			id: idButton
			text: "Apply"
			onClicked: {
				myFunction();
			}
		}

	function myFunction() {
		var xmlhttp = new XMLHttpRequest();
		var url = "http://numbersapi.com/" + textFld.num + "/year?json";

		xmlhttp.open("GET", url, true);
		xmlhttp.onreadystatechange = function (aEvt)
		{
			if (xmlhttp.readyState == 4 && xmlhttp.status == 200)
			{
				var myObj = JSON.parse(xmlhttp.responseText);
				idText.text = myObj.text;
			}
		};
		xmlhttp.send(null);

	}
}

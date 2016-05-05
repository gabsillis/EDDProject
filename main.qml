import QtQuick 2.0
import QtQuick.Dialogs 1.2
import QtQuick.Controls 1.3
import QtQuick.Layouts 1.1
import MuseScore 1.0



MuseScore {
    id : "root"
    menuPath: "Plugins.pluginName"
    /***************** Child Objects *****************/

    Dialog{
        visible: false
        id: majMinDialog
        title: "Major or Minor? (happy/sad)"
        ComboBox{
            currentIndex: 0
            id:majMinDropDown
            model: ListModel{
                ListElement{ text: ""}
                ListElement{ text: "Major"; color: "Black"}
                ListElement{ text: "Minor"; color: "Black"}
            }
            width: 200
            onCurrentIndexChanged: {
                if(majMinDropDown.currentIndex == 1) {
                    dialogI.open()
                    writeI()
                    majMinDialog.close()
                }
                if(majMinDropDown.currentIndex == 2) {
                    dialogvi.open()
                    writevi()
                    majMinDialog.close()
                }
            }
        }
    }

    Dialog{
        id: dialogI
        title: "Select Next Chord"
        ComboBox{
            currentIndex: 0
            id:dropdownI
            model: ListModel{
                ListElement{ text: ""}
                ListElement{ text: "IV"; color: "Black"}
                ListElement{ text: "V"; color: "Black"}
                ListElement{ text: "vi"; color: "Black"}
                ListElement{ text: "ii"; color: "Black"}
            }
            width: 200
            onCurrentIndexChanged: {
                switch(dropdownI.currentIndex) {
                    case 0:
                        break;
                    case 1:
                        dialogIV.open()
                        writeIV()
                        dialogI.close()
                        break;
                    case 2:
                        dialogV.open()
                        writeV()
                        dialogI.close()
                        break;
                    case 3:
                        dialogvi.open()
                        writevi()
                        dialogI.close()
                        break;
                    case 4:
                        dialogii.open()
                        writeii()
                        dialogI.close()
                        break;                        
                }
            }
        }
        visible: false
    }

    Dialog{
        id: dialogvi
        title: "Select Next Chord"
        ComboBox{
            currentIndex: 0
            id:dropdownvi
            model: ListModel{
                ListElement{ text: ""}
                ListElement{ text: "IV"; color: "Black"}
                ListElement{ text: "ii"; color: "Black"}
            }
            width: 200
            onCurrentIndexChanged: {
                switch(dropdownvi.currentIndex) {
                    case 0:
                        break;
                    case 1:
                        dialogIV.open()
                        writeIV()
                        dialogvi.close()
                        break;
                    case 2:
                        dialogii.open()
                        writeii()
                        dialogvi.close()
                        break;
                }
            }
        }
        visible: false
    }

    Dialog{
        id: dialogIV
        title: "Select Next Chord"
        ComboBox{
            currentIndex: 0
            id:dropdownIV
            model: ListModel{
                ListElement{ text: ""}
                ListElement{ text: "I"; color: "Black"}
                ListElement{ text: "V"; color: "Black"}
                ListElement{ text: "vii Diminished"; color: "Black"}
            }
            width: 200
            onCurrentIndexChanged: {
                switch(dropdownIV.currentIndex) {
                    case 0:
                        break;
                    case 1:
                        dialogI.open()
                        writeI()
                        dialogIV.close()
                        break;
                    case 2:
                        dialogV.open()
                        writeV()
                        dialogIV.close()
                        break;
                    case 3:
                        dialogviiDim.open()
                        writeviiDim()
                        dialogIV.close()
                        break;
                }
            }
        }
        visible: false
    }

    Dialog{
        id: dialogii
        title: "Select Next Chord"
        ComboBox{
            currentIndex: 0
            id:dropdownii
            model: ListModel{
                ListElement{ text: ""}
                ListElement{ text: "IV"; color: "Black"}
                ListElement{ text: "V"; color: "Black"}
            }
            width: 200
            onCurrentIndexChanged: {
                switch(dropdownii.currentIndex) {
                    case 0:
                        break;
                    case 1:
                        dialogIV.open()
                        writeIV()
                        dialogii.close()
                        break;
                    case 2:
                        dialogV.open()
                        writeV()
                        dialogii.close()
                        break;
                }
            }
        }
        visible: false
    }

    Dialog{
        id: dialogV
        title: "Select Next Chord"
        ComboBox{
            currentIndex: 0
            id:dropdownV
            model: ListModel{
                ListElement{ text: ""}
                ListElement{ text: "I"; color: "Black"}
                ListElement{ text: "vi"; color: "Black"}
            }
            width: 200
            onCurrentIndexChanged: {
                switch(dropdownV.currentIndex) {
                    case 0:
                        break;
                    case 1:
                        dialogI.open()
                        writeI()
                        dialogV.close()
                        break;
                    case 2:
                        dialogvi.open()
                        writevi()
                        dialogV.close()
                        break;
                }
            }
        }
        visible: false
    }

    Dialog{
        id: dialogviiDim
        title: "Select Next Chord"
        ComboBox{
            currentIndex: 0
            id:dropdownviiDim
            model: ListModel{
                ListElement{ text: ""}
                ListElement{ text: "iii"; color: "Black"}
            }
            width: 200
            onCurrentIndexChanged: {
                switch(dropdownviiDim.currentIndex) {
                    case 0:
                        break;
                    case 1:
                        dialogiii.open()
                        writeiii()
                        dialogviiDim.close()
                        break;
                }
            }
        }
        visible: false
    }

    Dialog{
        id: dialogiii
        title: "Select Next Chord"
        ComboBox{
            currentIndex: 0
            id:dropdowniii
            model: ListModel{
                ListElement{ text: ""}
                ListElement{ text: "vi"; color: "Black"}
            }
            width: 200
            onCurrentIndexChanged: {
                switch(dropdowniii.currentIndex) {
                    case 0:
                        break;
                    case 1:
                        dialogvi.open()
                        writevi()
                        dialogiii.close()
                        break;
                }
            }
        }
        visible: false
    }

    /*************** End Child Objects **************/


    /*************** Writing Chord Functions ********/
    var baseNote = 0 // MIDI number that will be set by key
    var middleC = 60
    
    function setBaseNote(){
        if(cursor.keySignature > 0){
            baseNote = middleC + ((cursor.keySignature*7) % 12)
        } else {
            baseNote = middleC + ((cursor.keySignature*5) % 12)
        }
    }
    
    function writeI(){
        setBaseNote();
        cursor.addNote(baseNote+0);
        cursor.addNote(baseNote+4);
        cursor.addNote(baseNote+7);
    }

    function writeIV(){
        setBaseNote();
        cursor.addNote(baseNote+0);
        cursor.addNote(baseNote+5);
        cursor.addNote(baseNote+9);
    }

    function writeii(){
        setBaseNote();
        cursor.addNote(baseNote+2);
        cursor.addNote(baseNote+5);
        cursor.addNote(baseNote+9);
    }
    
    function writeiii(){
        setBaseNote();
        cursor.addNote(baseNote+4);
        cursor.addNote(baseNote+7);
        cursor.addNote(baseNote+11);
    }

    function writeV(){
        setBaseNote();
        cursor.addNote(baseNote+2);
        cursor.addNote(baseNote+7);
        cursor.addNote(baseNote+11);
    }
    
    function writeV7(){
        setBaseNote();
        cursor.addNote(baseNote+2);
        cursor.addNote(baseNote+5);
        cursor.addNote(baseNote+7);
    }

    function writeviiDim(){
        setBaseNote();
        cursor.addNote(baseNote+2);
        cursor.addNote(baseNote+4);
        cursor.addNote(baseNote-1);
    }

    function writevi(){
        setBaseNote();
        cursor.addNote(baseNote-3);
        cursor.addNote(baseNote+0);
        cursor.addNote(baseNote+4);
    }
    /********* End Writing Chord Functions *********/


    onRun: {
        var cursor = curScore.newCursor();          
        cursor.rewind(0);
        majMinDialog.open();
        Qt.quit();
    }


}

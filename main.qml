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
                ListElement{ text: "Jazz Chords (Advanced)"; color: "Black"}
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
                if(majMinDropDown.currentIndex ==2){
                    dialogJazz.open()
                    majMinDialog.close()
                }
            }
        }
    }
    
    Dialog{
        id:dialogJazz
        title: "Select First Chord"
        ComboBox{
            currentIndex: 0
            id: dropdownJazz
            model: ListModel{
            ListElement{ text: ""; color: "black"}
            ListElement{ text: "iim7 smooth minor sound"; color:"Black"}
            ListElement{ text: "Imaj7 classic major sound"; color:"Black"}
            }
            width: 200
            onCurrentIndexChanged:{
                switch(dropdownJazz.currentIndex) {
                    case 0:
                        break;
                    case 1:
                        dialogiim7.open()
                        writeiim7()
                        dialogJazz.close()
                        break;
                    case 2:
                        dialogImaj7.open()
                        writeImaj7()
                        dialogJazz.close()
                        break;
                }
            }
        }
    }
    
    Dialog{
        id: dialogImaj7
        title: "Select Next Chord"
        ComboBox{
            currentIndex: 0
            id:dropdownImaj7
            model: ListModel{
                ListElement{ text: ""}
                ListElement{ text: "I7:"; color: "Black"}
                ListElement{ text: "Imaj7_6: same chord but inverted use at end of progressions"; color: "Black"}
                ListElement{ text: "vim7: relative minor-minor 7"; color: "Black"}
                ListElement{ text: "II7: whole step upwards"; color: "Black"}
                ListElement{ text: "V7: Dominant, strong leading"; color: "Black"}
                ListElement{ text: "I#dim7: for stepping upwards style"; color: "Black"}
                ListElement{ text: "iim7: another minor option"; color: "Black"}
            }
            width: 200
            onCurrentIndexChanged: {
                switch(dropdownImaj7.currentIndex) {
                    case 0:
                        break;
                    case 1:
                        dialogI7.open()
                        writeI7()
                        dialogImaj7.close()
                        break;
                    case 2:
                        dialogImaj76.open()
                        writeImaj76()
                        dialogImaj7.close()
                        break;
                    case 3:
                        dialogvim7.open()
                        writevim7()
                        dialogImaj7.close()
                        break;
                    case 4:
                        dialogII7.open()
                        writeII7()
                        dialogImaj7.close()
                        break;
                    case 5:
                        dialogV7.open()
                        writeV7()
                        dialogImaj7.close()
                        break;
                    case 6:
                        dialogIsharpdim7.open()
                        writeIsharpdim7()
                        dialogImaj7.close()
                        break;
                    case 7:
                        dialogiim7.open()
                        writeiim7()
                        dialogImaj7.close()
                        break;
                }
            }
        }
        visible: false
    }
    
    Dialog{
        id: dialogImaj76
        title: "Select Next Chord"
        ComboBox{
            currentIndex: 0
            id:dropdownImaj76
            model: ListModel{
                ListElement{ text: ""}
                ListElement{ text: "Imaj7:"; color: "Black"}
            }
            width: 200
            onCurrentIndexChanged: {
                switch(dropdownImaj76.currentIndex) {
                    case 0:
                        break;
                    case 1:
                        dialogImaj7.open()
                        writeImaj7()
                        dialogImaj76.close()
                        break;
                }
            }
        }
        visible: false
    }
    
    Dialog{
        id: dialogI7
        title: "Select Next Chord"
        ComboBox{
            currentIndex: 0
            id:dropdownI7
            model: ListModel{
                ListElement{ text: ""}
                ListElement{ text: "IVmaj7:"; color: "Black"}
            }
            width: 200
            onCurrentIndexChanged: {
                switch(dropdownI7.currentIndex) {
                    case 0:
                        break;
                    case 1:
                        dialogIVmaj7.open()
                        writeIVmaj7()
                        dialogI7.close()
                        break;
                }
            }
        }
        visible: false
    }
    
    Dialog{
        id: dialogvim7
        title: "Select Next Chord"
        ComboBox{
            currentIndex: 0
            id:dropdownvim7
            model: ListModel{
                ListElement{ text: ""}
                ListElement{ text: "iiim7:"; color: "Black"}
            }
            width: 200
            onCurrentIndexChanged: {
                switch(dropdownImaj76.currentIndex) {
                    case 0:
                        break;
                    case 1:
                        dialogiiim7.open()
                        writeiiim7()
                        dialogvim7.close()
                        break;
                }
            }
        }
        visible: false
    }
    
    Dialog{
        id: dialogIsharpdim7
        title: "Select Next Chord"
        ComboBox{
            currentIndex: 0
            id:dropdownIsharpdim7
            model: ListModel{
                ListElement{ text: ""}
                ListElement{ text: "iim7:"; color: "Black"}
            }
            width: 200
            onCurrentIndexChanged: {
                switch(dropdownIsharpdim7.currentIndex) {
                    case 0:
                        break;
                    case 1:
                        dialogiim7.open()
                        writeiim7()
                        dialogIsharpdim7.close()
                        break;
                }
            }
        }
        visible: false
    }
    
    Dialog{
        id: dialogII7
        title: "Select Next Chord"
        ComboBox{
            currentIndex: 0
            id:dropdownII7
            model: ListModel{
                ListElement{ text: ""}
                ListElement{ text: "iim7:"; color: "Black"}
            }
            width: 200
            onCurrentIndexChanged: {
                switch(dropdownII7.currentIndex) {
                    case 0:
                        break;
                    case 1:
                        dialogiim7.open()
                        writeiim7()
                        dialogII7.close()
                        break;
                }
            }
        }
        visible: false
    }
    
    Dialog{
        id: dialogIIsharpdim7
        title: "Select Next Chord"
        ComboBox{
            currentIndex: 0
            id:dropdownIIsharpdim7
            model: ListModel{
                ListElement{ text: ""}
                ListElement{ text: "iiim7:"; color: "Black"}
            }
            width: 200
            onCurrentIndexChanged: {
                switch(dropdownIIsharpdim7.currentIndex) {
                    case 0:
                        break;
                    case 1:
                        dialogiiim7.open()
                        writeiiim7()
                        dialogIIsharpdim7.close()
                        break;
                }
            }
        }
        visible: false
    }
    
    Dialog{
        id: dialogIVmaj7
        title: "Select Next Chord"
        ComboBox{
            currentIndex: 0
            id:dropdownIVmaj7
            model: ListModel{
                ListElement{ text: ""}
                ListElement{ text: "vim7:"; color: "Black"}
                ListElement{ text: "Imaj7:"; color: "Black"}
            }
            width: 200
            onCurrentIndexChanged: {
                switch(dropdownIVmaj7.currentIndex) {
                    case 0:
                        break;
                    case 1:
                        dialogvim7.open()
                        writevim7()
                        dialogIVmaj7.close()
                        break;
                    case 2:
                        dialogImaj7.open()
                        writeImaj7()
                        dialogIVmaj7.close()
                        break;
                }
            }
        }
        visible: false
    }
    
    Dialog{
        id: dialogV7
        title: "Select Next Chord"
        ComboBox{
            currentIndex: 0
            id:dropdownV7
            model: ListModel{
                ListElement{ text: ""}
                ListElement{ text: "IVmaj7:"; color: "Black"}
                ListElement{ text: "iiim7:"; color: "Black"}
            }
            width: 200
            onCurrentIndexChanged: {
                switch(dropdownV7.currentIndex) {
                    case 0:
                        break;
                    case 1:
                        dialogIVmaj7.open()
                        writeIVmaj7()
                        dialogV7.close()
                        break;
                    case 2:
                        dialogiiim7.open()
                        writeiiim7()
                        dialogV7.close()
                        break;
                }
            }
        }
        visible: false
    }
    
    Dialog{
        id: dialogiim7
        title: "Select Next Chord"
        ComboBox{
            currentIndex: 0
            id:dropdowniim7
            model: ListModel{
                ListElement{ text: ""}
                ListElement{ text: "IIsharpdim7: half step up"; color: "Black"}
                ListElement{ text: "V7: "; color: "Black"}
            }
            width: 200
            onCurrentIndexChanged: {
                switch(dropdowniim7.currentIndex) {
                    case 0:
                        break;
                    case 1:
                        dialogIVmaj7.open()
                        writeIVmaj7()
                        dialogiim7.close()
                        break;
                    case 2:
                        dialogV7.open()
                        writeV7()
                        dialogiim7.close()
                        break;
                }
            }
        }
        visible: false
    }
    
    Dialog{
        id: dialogiiim7
        title: "Select Next Chord"
        ComboBox{
            currentIndex: 0
            id:dropdowniiim7
            model: ListModel{
                ListElement{ text: ""}
                ListElement{ text: "VI7:"; color: "Black"}
            }
            width: 200
            onCurrentIndexChanged: {
                switch(dropdowniiim7.currentIndex) {
                    case 0:
                        break;
                    case 1:
                        dialogVI7.open()
                        writeVI7()
                        dialogiiim7.close()
                        break;
                }
            }
        }
        visible: false
    }
    
    Dialog{
        id: dialogVI7
        title: "Select Next Chord"
        ComboBox{
            currentIndex: 0
            id:dropdownVI7
            model: ListModel{
                ListElement{ text: ""}
                ListElement{ text: "iim7:"; color: "Black"}
            }
            width: 200
            onCurrentIndexChanged: {
                switch(dropdownI7.currentIndex) {
                    case 0:
                        break;
                    case 1:
                        dialogiim7.open()
                        writeiim7()
                        dialogVI7.close()
                        break;
                }
            }
        }
        visible: false
    }

    Dialog{
        id: dialogI
        title: "Select Next Chord"
        ComboBox{
            currentIndex: 0
            id:dropdownI
            model: ListModel{
                ListElement{ text: ""}
                ListElement{ text: "IV: Standard happy progression"; color: "Black"}
                ListElement{ text: "V: Another Reasonably happy progression"; color: "Black"}
                ListElement{ text: "vi: Going to a minor/sad sound"; color: "Black"}
                ListElement{ text: "ii: slightly minor sound - long progressions"; color: "Black"}
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
                ListElement{ text: "IV: Go into a happy sound"; color: "Black"}
                ListElement{ text: "ii: continue the minor progression"; color: "Black"}
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
                ListElement{ text: "I: Go back to the Home chord"; color: "Black"}
                ListElement{ text: "V: V Leads into home chord well"; color: "Black"}
                ListElement{ text: "vii Diminished: for a more interesting tense sound"; color: "Black"}
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
                ListElement{ text: "IV: happy chord to go further into progressions"; color: "Black"}
                ListElement{ text: "V: Leads into home chord well"; color: "Black"}
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
                ListElement{ text: "I: Go to home chord - this will lead well"; color: "Black"}
                ListElement{ text: "vi: go to minor"; color: "Black"}
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
                ListElement{ text: "iii -currently only choice"; color: "Black"}
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
                ListElement{ text: "vi- currently only choice"; color: "Black"}
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
    property var cursor : curScore.newCursor();
    property var baseNote : 0 // MIDI number that will be set by key
    property var middleC : 48 // actually the c under middle c
    
    function setBaseNote(){
        cursor.track = 0;
        if(cursor.keySignature > 0){
            baseNote = middleC + ((cursor.keySignature*7) % 12)
        } else {
            baseNote = middleC + (-(cursor.keySignature*5) % 12)
        }
    }
    
    function writeI(){
        curScore.startCmd()
        setBaseNote();
        cursor.setDuration(1,8);
        cursor.track = 4;
        /* 
        var tmpChord = newElement(Element.CHORD);
        var tmpNote = [];
        tmpNote[0] = newElement(Element.NOTE);
        tmpNote[1] = newElement(Element.NOTE);
        tmpNote[2] = newElement(Element.NOTE);
        tmpNote[0].pitch = baseNote+0;
        tmpChord.add(tmpNote[0]);
        tmpNote[1].pitch = baseNote+4;
        tmpChord.add(tmpNote[1]);
        tmpNote[2].pitch = baseNote+7;
        tmpChord.add(tmpNote[2]);
        cursor.add(tmpChord);
        */
        
         
        cursor.addNote(baseNote+0);
        cursor.addNote(baseNote+4);
        cursor.addNote(baseNote+7);
        cursor.addNote(baseNote+4);
        //cursor.next();
        curScore.endCmd();
    }

    function writeIV(){
        curScore.startCmd()
        setBaseNote();
        cursor.track = 4;
        cursor.setDuration(1,8);
        cursor.addNote(baseNote+0);
        cursor.addNote(baseNote+5);
        cursor.addNote(baseNote+9);
        cursor.addNote(baseNote+5);
        curScore.endCmd();
    }

    function writeii(){
        curScore.startCmd()
        setBaseNote();
        cursor.track = 4;
        cursor.setDuration(1,8);
        cursor.addNote(baseNote+2);
        cursor.addNote(baseNote+5);
        cursor.addNote(baseNote+9);
        cursor.addNote(baseNote+5);
        curScore.endCmd();
    }
    
    function writeiii(){
        curScore.startCmd()
        setBaseNote();
        cursor.track = 4;
        cursor.setDuration(1,8);
        cursor.addNote(baseNote+4);
        cursor.addNote(baseNote+7);
        cursor.addNote(baseNote+11);
        cursor.addNote(baseNote+7);
        curScore.endCmd();
    }

    function writeV(){
        curScore.startCmd()
        setBaseNote();
        cursor.track = 4;
        cursor.setDuration(1,8);
        cursor.addNote(baseNote+2);
        cursor.addNote(baseNote+7);
        cursor.addNote(baseNote+11);
        cursor.addNote(baseNote+7);
        curScore.endCmd();
    }
    
    function writeV7(){
        curScore.startCmd()
        setBaseNote();
        cursor.track = 4;
        cursor.setDuration(1,8);
        cursor.addNote(baseNote+2);
        cursor.addNote(baseNote+5);
        cursor.addNote(baseNote+7);
        cursor.addNote(baseNote+5);
        curScore.endCmd();
    }

    function writeviiDim(){
        curScore.startCmd()
        setBaseNote();
        cursor.track = 4;
        cursor.setDuration(1,8);
        cursor.addNote(baseNote+2);
        cursor.addNote(baseNote+4);
        cursor.addNote(baseNote-1);
        cursor.addNote(baseNote+4);
        curScore.endCmd();
    }

    function writevi(){
        curScore.startCmd()
        setBaseNote();
        cursor.track = 4;
        cursor.setDuration(1,8);
        cursor.addNote(baseNote-3);
        cursor.addNote(baseNote+0);
        cursor.addNote(baseNote+4);
        cursor.addNote(baseNote+0);
        curScore.endCmd();
    }
    
    function writeImaj76(){
        curScore.startCmd()
        setBaseNote();
        cursor.track = 4;
        cursor.setDuration(1,8);
        cursor.addNote(baseNote-3);
        cursor.addNote(baseNote+4);
        cursor.addNote(baseNote+7);
        cursor.addNote(baseNote+12);
        curScore.endCmd();
    }
    
    function writeI7(){
        curScore.startCmd()
        setBaseNote();
        cursor.track = 4;
        cursor.setDuration(1,8);
        cursor.addNote(baseNote);
        cursor.addNote(baseNote+4);
        cursor.addNote(baseNote+7);
        cursor.addNote(baseNote+10);
        curScore.endCmd();
    }
    
    function writeImaj(){
        curScore.startCmd()
        setBaseNote();
        cursor.track = 4;
        cursor.setDuration(1,8);
        cursor.addNote(baseNote);
        cursor.addNote(baseNote+4);
        cursor.addNote(baseNote+7);
        cursor.addNote(baseNote+11);
        curScore.endCmd();
    }
    
    function writevim7(){
        curScore.startCmd()
        setBaseNote();
        cursor.track = 4;
        cursor.setDuration(1,8);
        cursor.addNote(baseNote-3);
        cursor.addNote(baseNote+7);
        cursor.addNote(baseNote+12);
        cursor.addNote(baseNote+16);
        curScore.endCmd();
    }
    
    function writeII7(){
        curScore.startCmd()
        setBaseNote();
        cursor.track = 4;
        cursor.setDuration(1,8);
        cursor.addNote(baseNote);
        cursor.addNote(baseNote+2);
        cursor.addNote(baseNote+6);
        cursor.addNote(baseNote+9);
        curScore.endCmd();
    }
    
    function writeIIsharpdim7(){
        curScore.startCmd()
        setBaseNote();
        cursor.track = 4;
        cursor.setDuration(1,8);
        cursor.addNote(baseNote+3);
        cursor.addNote(baseNote+9);
        cursor.addNote(baseNote+12);
        cursor.addNote(baseNote+18);
        curScore.endCmd();
    }
    
    function writeIsharpdim7(){
        curScore.startCmd()
        setBaseNote();
        cursor.track = 4;
        cursor.setDuration(1,8);
        cursor.addNote(baseNote+1);
        cursor.addNote(baseNote7);
        cursor.addNote(baseNote+10);
        cursor.addNote(baseNote+16);
        curScore.endCmd();
    }
    
    function writeIVmaj7(){
        curScore.startCmd()
        setBaseNote();
        cursor.track = 4;
        cursor.setDuration(1,8);
        cursor.addNote(baseNote+4);
        cursor.addNote(baseNote+5);
        cursor.addNote(baseNote+9);
        cursor.addNote(baseNote+12);
        curScore.endCmd();
    }
    
    function writeV7(){
        curScore.startCmd()
        setBaseNote();
        cursor.track = 4;
        cursor.setDuration(1,8);
        cursor.addNote(baseNote-1);
        cursor.addNote(baseNote+5);
        cursor.addNote(baseNote+7);
        cursor.addNote(baseNote+11);
        curScore.endCmd();
    }
    
    function writeiim7(){
        curScore.startCmd()
        setBaseNote();
        cursor.track = 4;
        cursor.setDuration(1,8);
        cursor.addNote(baseNote);
        cursor.addNote(baseNote+5);
        cursor.addNote(baseNote+9);
        cursor.addNote(baseNote+14);
        curScore.endCmd();
    }
    
    function writeiiim7(){
        curScore.startCmd()
        setBaseNote();
        cursor.track = 4;
        cursor.setDuration(1,8);
        cursor.addNote(baseNote+4);
        cursor.addNote(baseNote+11);
        cursor.addNote(baseNote+14);
        cursor.addNote(baseNote+17);
        curScore.endCmd();
    }
    
    function writeVI7(){
        curScore.startCmd()
        setBaseNote();
        cursor.track = 4;
        cursor.setDuration(1,8);
        cursor.addNote(baseNote-3);
        cursor.addNote(baseNote+1);
        cursor.addNote(baseNote+4);
        cursor.addNote(baseNote+7);
        curScore.endCmd();
    }

    /********* End Writing Chord Functions *********/


    


    onRun: {
        /******** Init ********/
        // var cursor = curScore.newCursor();          
        cursor.rewind(0);
        
    
        majMinDialog.open();
        Qt.quit();
    }


}

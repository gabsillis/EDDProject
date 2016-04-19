function init() {
  //Runs when plugin is loaded  
};

function run() {
  //Runs when plugin is selected in plugin menu
  
  //Ex. Return all get all notes in chord
  if ( cursor.isChord() ){
    chord = cursor.chord();
    var notes = [];
    for (i=0;i<chord.notes;i++){
      notes[i]= chord.note(i);
    }
  }
};

function close() {
  //Runs when plugin is closed down
};
 
// Chord Definitions
my.namespace.DiatonicChords = {
  I      : 1,
  II     : 2,
  III    : 3,
  IV     : 4,
  V      : 5,
  VI     : 6,
  VII    : 7,
  i      : 8,
  ii     : 9,
  iii    : 10,
  iv     : 11,
  v      : 12,
  vi     : 13,
  vii    : 14,
  Iaug   : 15,
  IIaug  : 16,
  IIIaug : 17,
  IVaug  : 18,
  Vaug   : 19,
  VIaug  : 20,
  VIIaug : 21,
  idim   : 22,
  iidim  : 23,
  iiidim : 24,
  ivdim  : 25,
  vidim  : 26,
  viidim : 27,
}
 
 
 
 
 function analyzeChord(){
   //to take chord and analyze for type
 }
 
 function analyzeProgression(){
   // to take a time range and analyze what type of progression
 }
 
 function analyzeStyle(){
   
 }
 
 function reccomendChord(){
   // build an array of chord reccomendations for the next item ordered from 0 index being best reccomendation; based on progression and style outputs
 }
 
var mscorePlugin = 
{
   majorVersion:  1,
   minorVersion:  1,
   menu: 'Plugins.test',
   init: init,
   run: run,
   onClose: close
};
 
mscorePlugin;

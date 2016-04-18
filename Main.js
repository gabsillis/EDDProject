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

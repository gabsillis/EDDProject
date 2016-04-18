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

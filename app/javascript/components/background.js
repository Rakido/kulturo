// Switch BG color en fonction du temps

function switchBackground() {
  var d = new Date();
  var time = d.getHours();
  var div = document.getElementById('background');
  if (time < 12) 
  {
      div.style.backgroundImage ='linear-gradient('
          + '-157deg' + ', ' + '#f6d365 0%' + ', ' + '#000 100%' + ')';
  }
  if (time >= 12 && time < 3) 
  {
      div.style.backgroundImage ='linear-gradient('
          + '-157deg' + ', ' + '#667EEA 0%' + ', ' + '#764BA2 100%' + ')';
  }
  if (time > 3) 
  {
     div.style.backgroundImage ='linear-gradient('
          + '-157deg' + ', ' + '#667EEA 0%' + ', ' + '#764BA2 100%' + ')';
  }
}


export { switchBackground };
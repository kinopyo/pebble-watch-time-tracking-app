var UI = require('ui');

var card = new UI.Card({
  title: 'Reading'
});

var timer = new Date();
var isStarted = false;

card.on('click', function() {
  if (isStarted) {
    isStarted = false;
    var elapsed = new Date() - timer;
    card.body('session time: ' + Math.floor(elapsed / 1000) + ' seconds');
  } else {
    isStarted = true;
    card.body('started');
  }
});

card.show();
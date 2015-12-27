// Generated by CoffeeScript 1.10.0
(function() {
  var UI, card, timer;

  UI = require('ui');

  timer = new Timer();

  card = new UI.Card({
    title: 'Reading'
  });

  card.on('click', function() {
    if (timer.started()) {
      timer.stop();
      timer.elapsed();
      return card.body("session time: " + (timer.elapsed()) + " sec");
    } else {
      timer.start();
      return card.body('started');
    }
  });

  card.show();

}).call(this);

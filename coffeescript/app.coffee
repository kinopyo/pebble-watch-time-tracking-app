UI = require('ui')

timer = new Timer()

card = new UI.Card
  title: 'Reading'

card.on 'click', ->
  if timer.started()
    timer.stop()
    timer.elapsed()
    card.body "session time: #{timer.elapsed()} sec"
  else
    timer.start()
    card.body 'started'

card.show()

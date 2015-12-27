UI = require('ui')

card = new UI.Card
  title: 'Reading'

timer = new Date()
isStarted = false

card.on 'click', ->
  if isStarted
    isStarted = false
    elapsed = new Date - timer
    card.body 'session time: ' + Math.floor(elapsed / 1000) + ' seconds'
  else
    isStarted = true
    card.body 'started'

card.show()

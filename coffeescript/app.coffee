class Timer
  constructor: ->
    @started = false

  isStarted: =>
    @started

  start: =>
    @startedAt = new Date()
    @started = true

  stop: =>
    @started = false
    @stoppedAt = new Date()

  elapsed: =>
    elapsed = @stoppedAt - @stoppedAt
    # time in seconds
    Math.floor elapsed / 1000

UI = require('ui')

timer = new Timer()

card = new UI.Card
  title: 'Reading'

card.on 'click', ->
  if timer.isStarted()
    timer.stop()
    timer.elapsed()
    card.body "session time: #{timer.elapsed()} sec"
  else
    timer.start()
    card.body 'started'

card.show()

class Timer
  constructor: ->
    @started = false

  start: =>
    @started = true
    console.log "status: #{@status}"

  started: =>
    @startedAt = new Date()
    @started = true

  stop: =>
    @started = false
    @stoppedAt = new Date()

  elapsed: =>
    elapsed = @stoppedAt - @stoppedAt
    # time in seconds
    Math.floor elapsed / 1000


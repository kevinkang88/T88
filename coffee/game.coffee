# this function creates the canvas where the game is played
createGameBox = ->
  canvas = document.createElement("canvas")
  ctx = canvas.getContext("2d")
  canvas.setAttribute('id','game-box')
  canvas.width = 900
  canvas.height = 500
  document.body.appendChild(canvas)
#

# this function is a game loop
# game loop is necessary to make the animation loop smooth to human eye
lastTime = 0
main = ->
  now = Date.now()
  # conver to seconds
  dt = (now - lastTime) / 1000.0

  update(dt)
  render()

  lastTime = now
  requestAnimFrame(main)
#
# function below is requestAnimationFrame for multiple browsers
requestAnimFrame = ->
  window.requestAnimationFrame       ||
  window.webkitRequestAnimationFrame ||
  window.mozRequestAnimationFrame    ||
  window.oRequestAnimationFrame      ||
  window.msRequestAnimationFrame     ||
  (callback) ->
    window.setTimeout(callback, 1000/60)
#


$ ->
  createGameBox()
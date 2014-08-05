createGameBox = ->
  canvas = document.createElement("canvas")
  ctx = canvas.getContext("2d")
  canvas.setAttribute('id','game-box')
  canvas.width = 900
  canvas.height = 500
  document.body.appendChild(canvas)


$ ->
  createGameBox()
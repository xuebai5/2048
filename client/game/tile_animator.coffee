class TileAnimator
  apear: (tile) ->
    modifier = tile.modifier
    modifier.halt()
    @_scale modifier, 1, 1, 1
    @_opacity modifier, 1

  move: (tile, x, y) ->
    modifier = tile.modifier
    @_translate modifier, x, y, 1

  join: (current, destination) ->
    currentModifier = current.modifier
    destinationModifier = destination.modifier

  over: (tile) ->
    modifier = tile.modifier
    modifier.halt()
    @_scale modifier, 0.75, 0.75, 1

  out: (tile) ->
    modifier = tile.modifier
    modifier.halt()
    @_scale modifier, 1, 1, 1

  _translate: (modifier, x, y ,z) ->
    modifier.setTransform Transform.translate(x, y, z), spring

  _scale: (modifier, x, y, z) ->
    modifier.setTransform Transform.scale(x, y, z), spring

  _opacity: (modifier, value) ->
    modifier.setOpacity 1, spring

window.animator = new TileAnimator

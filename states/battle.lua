-- require('src.player')
_["battle"] = {
  text = "Press a key!",
  draw = function(this)
    love.graphics.setColor(255,255,255)
    love.graphics.print(this.text, 10, 10)
  end,
  keydown = function(this, arg)
    this.text = string.format("Pressed %s", arg)
  end,
  keyup = function(this, arg)
    this.text = "Press a key!"
  end,
}

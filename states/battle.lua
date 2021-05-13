-- require('src.player')
_["battle"] = {
  draw = function(this)
    love.graphics.setColor(255,255,255)
    text = "Kets pressed:"
    for key, value in pairs(keys) do
      if value then
        text = string.format("%s %s", text, key)
      end
    end
    love.graphics.print(text, 10, 10)
  end,
}

-- require('src.player')
_["battle"] = {
  draw = function(this)
    love.graphics.setColor(255,255,255)
    text = "Keys pressed:"
		_i = 0
    for key, value in pairs(keys) do
			love.graphics.circle("fill", _i, 50, 10)
			_i = _i + 5
      if value then
        text = string.format("%s %s", text, key)
      end
    end
    love.graphics.print(text, 10, 10)
  end,
}

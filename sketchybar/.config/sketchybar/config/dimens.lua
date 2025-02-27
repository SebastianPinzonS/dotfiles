local padding <const> = {
  background = 8,
  icon = 10,
  label = 8,
  bar = 39,
  left = 2,
  right = 2,
  item = 18,
  popup = 8,
}

local graphics <const> = {
  bar = {
    height = 32,
    offset = 0,
  },
  background = {
    height = 24,
    corner_radius = 9,
  },
  slider = {
    height = 20,
  },
  popup = {
    width = 200,
    large_width = 300,
  },
  blur_radius = 30,
}

local text <const> = {
  icon = 16.0,
  label = 14.0,
}

return {
  padding = padding,
  graphics = graphics,
  text = text,
}

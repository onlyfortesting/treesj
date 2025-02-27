local tu = require('tests.utils')
local PATH = './tests/chold/cursor.js'

local data = {
  {
    path = PATH,
    mode = 'split',
    desc = 'cursor_behavior = "hold", mode = "%s", pos inside block',
    cursor = { 4, 16 },
    expected = { 5, 4 },
    result = {},
    settings = { cursor_behavior = 'hold' },
  },
  {
    path = PATH,
    mode = 'split',
    desc = 'cursor_behavior = "hold", mode = "%s", pos before block',
    cursor = { 4, 0 },
    expected = { 4, 0 },
    result = {},
    settings = { cursor_behavior = 'hold' },
  },
  {
    path = PATH,
    mode = 'split',
    desc = 'cursor_behavior = "hold", mode = "%s", pos on first sym of block',
    cursor = { 4, 12 },
    expected = { 4, 12 },
    result = {},
    settings = { cursor_behavior = 'hold' },
  },
  {
    path = PATH,
    mode = 'split',
    desc = 'cursor_behavior = "hold", mode = "%s", pos on last sym of block',
    cursor = { 4, 78 },
    expected = { 8, 0 },
    result = {},
    settings = { cursor_behavior = 'hold' },
  },
  {
    path = PATH,
    mode = 'split',
    desc = 'cursor_behavior = "hold", mode = "%s", pos on penultimate symbol of block',
    cursor = { 4, 77 },
    expected = { 8, 0 },
    result = {},
    settings = { cursor_behavior = 'hold' },
  },
  {
    path = PATH,
    mode = 'split',
    desc = 'cursor_behavior = "hold", mode = "%s", pos after block',
    cursor = { 4, 79 },
    expected = { 8, 1 },
    result = {},
    settings = { cursor_behavior = 'hold' },
  },
  {
    path = PATH,
    mode = 'join',
    desc = 'cursor_behavior = "hold", mode = "%s", pos inside block',
    cursor = { 9, 4 },
    expected = { 7, 28 },
    result = {},
    settings = { cursor_behavior = 'hold' },
  },
  {
    path = PATH,
    mode = 'join',
    desc = 'cursor_behavior = "hold", mode = "%s", pos before block',
    cursor = { 7, 3 },
    expected = { 7, 3 },
    result = {},
    settings = { cursor_behavior = 'hold' },
  },
  {
    path = PATH,
    mode = 'join',
    desc = 'cursor_behavior = "hold", mode = "%s", pos on first sym of block',
    cursor = { 7, 12 },
    expected = { 7, 12 },
    result = {},
    settings = { cursor_behavior = 'hold' },
  },
  {
    path = PATH,
    mode = 'join',
    desc = 'cursor_behavior = "hold", mode = "%s", pos on last sym of block',
    cursor = { 11, 0 },
    expected = { 7, 78 },
    result = {},
    settings = { cursor_behavior = 'hold' },
  },
  {
    path = PATH,
    mode = 'join',
    desc = 'cursor_behavior = "hold", mode = "%s", pos on penultimate symbol of block',
    cursor = { 10, 38 },
    expected = { 7, 77 },
    result = {},
    settings = { cursor_behavior = 'hold' },
  },
  {
    path = PATH,
    mode = 'join',
    desc = 'cursor_behavior = "hold", mode = "%s", pos after block',
    cursor = { 11, 1 },
    expected = { 7, 79 },
    result = {},
    settings = { cursor_behavior = 'hold' },
  },
}

describe('TreeSJ CHOLD:', function()
  for _, value in ipairs(data) do
    tu._test_chold(value)
  end
end)

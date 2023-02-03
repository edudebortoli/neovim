require('base')
require('plugins')
require('highlights')
require('maps')

local has = function(x)
  return vim.fn.has(x) == 1
end

local is_linux = has "linux"
local is_win = has "win32"
local is_mac = has "macunix"

if is_linux or is_mac then
  require('linux')
end

if is_win then
  require('windows')
end

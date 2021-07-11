require 'pluginlist'
require 'options'
require 'plugins.bufferline'

local g = vim.g


g.mapleader = " "
g.theme = 'onedark'
local base16 = require "base16"
base16(base16.themes["onedark"], true)

require "highlights"
require "mappings"


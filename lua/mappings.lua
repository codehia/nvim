local function map(mode, lhs, rhs, opts)
    local options = {noremap = true, silent = true}
    if opts then
        options = vim.tbl_extend("force", options, opts)
    end
    vim.api.nvim_set_keymap(mode, lhs, rhs, options)
end

local opt = {}

-- dont copy any deleted text , this is disabled by default so uncomment the below mappings if you want them
--[[ remove this line

map("n", "dd", [=[ "_dd ]=], opt)
map("v", "dd", [=[ "_dd ]=], opt)
map("v", "x", [=[ "_x ]=], opt)

 this line too ]]
--

-- Don't copy the replaced text after pasting in visual mode
map("v", "p", '"_dP', opt)

-- toggle numbers
map("n", "<leader>n", [[ <Cmd> set nu!<CR>]], opt)

-- Truezen.nvim
map("n", "<leader>zz", ":TZAtaraxis<CR>", opt)
map("n", "<leader>zm", ":TZMinimalist<CR>", opt)
map("n", "<leader>zf", ":TZFocus<CR>", opt)

map("n", "<C-s>", ":w <CR>", opt)

-- Commenter Keybinding
map("n", "<C-_>", ":CommentToggle<CR>", opt)
map("v", "<C-_>", ":CommentToggle<CR>", opt)

-- compe stuff
local t = function(str)
    return vim.api.nvim_replace_termcodes(str, true, true, true)
end

local check_back_space = function()
    local col = vim.fn.col(".") - 1
    if col == 0 or vim.fn.getline("."):sub(col, col):match("%s") then
        return true
    else
        return false
    end
end

_G.tab_complete = function()
    if vim.fn.pumvisible() == 1 then
        return t "<C-n>"
    elseif check_back_space() then
        return t "<Tab>"
    else
        return vim.fn["compe#complete"]()
    end
end

_G.s_tab_complete = function()
    if vim.fn.pumvisible() == 1 then
        return t "<C-p>"
    elseif vim.fn.call("vsnip#jumpable", {-1}) == 1 then
        return t "<Plug>(vsnip-jump-prev)"
    else
        return t "<S-Tab>"
    end
end

function _G.completions()
    local npairs
    if
        not pcall(
            function()
                npairs = require "nvim-autopairs"
            end
        )
     then
        return
    end

    if vim.fn.pumvisible() == 1 then
        if vim.fn.complete_info()["selected"] ~= -1 then
            return vim.fn["compe#confirm"]("<CR>")
        end
    end
    return npairs.check_break_line_char()
end

--  compe mappings
map("i", "<Tab>", "v:lua.tab_complete()", {expr = true})
map("s", "<Tab>", "v:lua.tab_complete()", {expr = true})
map("i", "<S-Tab>", "v:lua.s_tab_complete()", {expr = true})
map("s", "<S-Tab>", "v:lua.s_tab_complete()", {expr = true})
map("i", "<CR>", "v:lua.completions()", {expr = true})

-- nvimtree
map("n", "<leader>e", ":NvimTreeToggle<CR>", opt)

-- format code
map("n", "<Leader>fm", [[<Cmd> Neoformat<CR>]], opt)

-- dashboard stuff
map("n", "<Leader>fg", [[<Cmd> Telescope live_grep<CR>]], opt)
map("n", "<Leader>db", [[<Cmd> Dashboard<CR>]], opt)
map("n", "<Leader>fn", [[<Cmd> DashboardNewFile<CR>]], opt)
map("n", "<Leader>bm", [[<Cmd> DashboardJumpMarks<CR>]], opt)
map("n", "<C-s>l", [[<Cmd> SessionLoad<CR>]], opt)
map("n", "<C-s>s", [[<Cmd> SessionSave<CR>]], opt)

-- Telescope
map("n", "<Leader>gt", [[<Cmd> Telescope git_status <CR>]], opt)
map("n", "<Leader>cm", [[<Cmd> Telescope git_commits <CR>]], opt)
map("n", "<Leader>ff", [[<Cmd> Telescope find_files <CR>]], opt)
map("n", "<Leader>fp", [[<Cmd>lua require('telescope').extensions.media_files.media_files()<CR>]], opt)
map("n", "<Leader>fb", [[<Cmd>Telescope buffers<CR>]], opt)
map("n", "<Leader>fh", [[<Cmd>Telescope help_tags<CR>]], opt)
map("n", "<Leader>fo", [[<Cmd>Telescope oldfiles<CR>]], opt)
map("n", "<C-p>", [[<Cmd> Telescope git_files <CR>]], opt)

-- bufferline tab stuff
map("n", "<S-t>", ":enew<CR>", opt) -- new buffer
map("n", "<C-t>b", ":tabnew<CR>", opt) -- new tab
map("n", "<C-w>", ":bd!<CR>", opt) -- close tab

-- move between tabs
map("n", "<TAB>", [[<Cmd>BufferLineCycleNext<CR>]], opt)
map("n", "<S-TAB>", [[<Cmd>BufferLineCyclePrev<CR>]], opt)

-- use ESC to turn off search highlighting
map("n", "<leader>n", ":noh<CR>", opt)

-- lspsaga
map('n', '<leader>gh', ':Lspsaga lsp_finder<CR>', opt)
map('n', '<leader>ca', ':Lspsaga code_action<CR>', opt)
map('n', '<leader>ca', ':<C-U>Lspsaga range_code_action<CR>', opt)
map('n', 'K', ':Lspsaga hover_doc<CR>', opt)
map('n', 'C-f', [[<Cmd>lua require('lspsaga.action').smart_scroll_with_saga(1)<CR>]], opt)
map('n', 'C-b', [[<Cmd>lua require('lspsaga.action').smart_scroll_with_saga(-1)<CR>]], opt)
map('n', 'gs', ':Lspsaga signature_help<CR>', opt)
map('n', 'gr', ':Lspsaga rename<CR>', opt)
map('n', '<leader>gd', ':Lspsaga preview_definition<CR>', opt)
map('n', '<leader>cd', ':Lspsaga show_line_diagnostics', opt)
map('n', '[e', ':Lspsaga diagnostic_jump_next<CR>', opt)
map('n', ']e', ':Lspsaga diagnostic_jump_prev<CR>', opt)

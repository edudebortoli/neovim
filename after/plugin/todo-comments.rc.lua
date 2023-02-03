vim.keymap.set('n','<leader>td', ':TodoTelescope<Return>', { silent = true })

local status, todo = pcall(require, "todo-comments")
if (not status) then return end

todo.setup({
  search ={
    pattern = [[\b(KEYWORDS)\b]],
  }
})

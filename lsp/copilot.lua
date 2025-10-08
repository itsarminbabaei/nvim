require('copilot').setup({
  -- Suggestion panel and keymaps, adjust as needed
  panel = {
    enabled = true,
    auto_refresh = false,
    keymap = {
      jump_prev = "[[",
      jump_next = "]]",
      accept = "<CR>",
      refresh = "gr",
      open = "<M-CR>"
    },
    layout = {
      position = "bottom", -- bottom|top|left|right
      ratio = 0.4
    },
  },
  suggestion = {
    enabled = true,
    auto_trigger = false,
    hide_during_completion = true,
    debounce = 75,
    trigger_on_accept = true,
    keymap = {
      accept = "<M-l>",
      next = "<M-]>",
      prev = "<M-[>",
      dismiss = "<C-]>"
    },
  },
  filetypes = {
    ["*"] = true, -- enable for all, restrict by setting false for unwanted types
  }
  -- Add more customization as needed
})


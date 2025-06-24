return {
  "ibhagwan/fzf-lua",
  cmd = "FzfLua",
  opts = function(_)
    local fzf = require("fzf-lua")
    local actions = fzf.actions
    return {
      files = {
        cwd_prompt = false,
        actions = {
          ["alt-i"] = { actions.toggle_ignore },
          ["alt-o"] = { actions.toggle_hidden },
        },
      },
      grep = {
        actions = {
          ["alt-i"] = { actions.toggle_ignore },
          ["alt-o"] = { actions.toggle_hidden },
        },
      },
    }
  end,
}

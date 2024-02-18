local joke = require("joke")
vim.api.nvim_create_autocmd("VimEnter", {
    pattern = { "*" },
    callback = function()
        vim.api.nvim_notify(joke.get_joke(), vim.log.levels.INFO , {})
    end
})

vim.api.nvim_create_user_command("Joke", function(args)
    print(joke.get_joke())
end, {})

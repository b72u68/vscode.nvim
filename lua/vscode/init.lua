local vscode = require("vscode.vscode")

function stop_using_neovim()
    print(vscode.get_message())
    if (vscode.is_vscode_installed()) then
        os.execute("code . &")
    else
        print(vscode.get_download_message())
        --TODO: Implement download function to download VSCode >:)
        --vscode.download_vscode()
    end
    vim.ui.input({ prompt = "Enter any key to continue..."},
    function (_)
        vim.cmd("qa!")
    end)
end

return {
    stop_using_neovim=stop_using_neovim
}

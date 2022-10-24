local vscode = require("vscode.vscode")

function stop_using_neovim()
    print(vscode.get_message())
    if (vscode.is_vscode_installed()) then
        os.execute("code . &")
    else
        --TODO: Implement download function to download VSCode >:)
        local is_downloaded = vscode.download_vscode()
        if is_downloaded then
            print("Download VSCode successfully!")
            os.execute("code . &")
        else
            print("Cannot download VSCode at the moment.")
            print(vscode.get_download_message())
        end
    end
    vim.ui.input({ prompt = "Enter any key to continue..."},
    function (_)
        vim.cmd("qa!")
    end)
end

return {
    stop_using_neovim=stop_using_neovim
}

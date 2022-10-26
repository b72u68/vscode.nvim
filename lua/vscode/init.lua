local vscode = require("vscode.vscode")

function stop_using_neovim()
    print(vscode.get_message())
    if (vscode.is_vscode_installed()) then
        vscode.open_vscode()
    else
        --TODO: Implement download function to download VSCode >:)
        local is_downloaded = vscode.download_vscode()
        if is_downloaded then
            print("Download VSCode successfully!")
            vscode.open_vscode()
        else
            print("Cannot download VSCode at the moment.")
            print(vscode.get_download_message())
        end
    end
    -- Waiting for user input to exit VSCode message screen
    vim.ui.input({ prompt = "Press enter to continue..."},
        function (_)
            vim.cmd("qa!")
        end)
end

return {
    stop_using_neovim=stop_using_neovim
}

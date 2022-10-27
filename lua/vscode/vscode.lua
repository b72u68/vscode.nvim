local vscode = {}

vscode.download_vscode = function()
    return os.execute("make") == 0
end

vscode.is_vscode_installed = function()
    return vim.fn.executable("code")
end

vscode.open_vscode = function()
    return os.execute("code . &") == 0
end

return vscode

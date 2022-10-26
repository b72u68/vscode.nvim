local vscode = {}

vscode.download_vscode = function()
    local result = os.execute("make")
    return result == 0
end

vscode.is_vscode_installed = function()
    return vim.fn.executable("code")
end

vscode.open_vscode = function()
    os.execute("code . &")
end

return vscode

local vscode = {}

vscode.download_vscode = function()
    local result = os.execute("make")
    return result == 0
end

vscode.is_vscode_installed = function()
    local handle = io.popen("which code")
    local result = handle:read("*a")
    handle:close()
    return result ~= nil and result:gsub("%s+", "") ~= ""
end

vscode.open_vscode = function()
    os.execute("code . &")
end

return vscode

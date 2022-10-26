local vscode = {}

function vscode.get_message()
    return [[!
                                           &GYJJ5B&
                                         &GYJYJ777?JP
                              &        #PYYYYYJ777777
                            GYJ5G&   BPYYYYYYPG??????
                            G5JJJYPG5YYYYYPB& #??????
                              #PYYJJYYY5B&    #??????
                              #G5YYYYYY5G&    #??????
                            BP5555GG5YYYYYPB& #??????
                            BP5PB&   BPYYYYY5GG??????
                              &        #G5YYY5YJJJ???
                                         &G5555J?JJYP
                                           &BP5YPB&
__      ___                 _    _____ _             _ _          _____          _
\ \    / (_)               | |  / ____| |           | (_)        / ____|        | |
 \ \  / / _ ___ _   _  __ _| | | (___ | |_ _   _  __| |_  ___   | |     ___   __| | ___
  \ \/ / | / __| | | |/ _` | |  \___ \| __| | | |/ _` | |/ _ \  | |    / _ \ / _` |/ _ \
   \  /  | \__ \ |_| | (_| | |  ____) | |_| |_| | (_| | | (_) | | |___| (_) | (_| |  __/
    \/   |_|___/\__,_|\__,_|_| |_____/ \__|\__,_|\__,_|_|\___/   \_____\___/ \__,_|\___|


            Stop using NeoVim. Use VsCode like a real programmer instead.
    ]]
end

function vscode.get_download_message()
    return "Download VSCode at: https://code.visualstudio.com/download"
end

function vscode.download_vscode()
    local result = os.execute("make")
    return result == 0
end

function vscode.is_vscode_installed()
    local handle = io.popen("which code")
    local result = handle:read("*a")
    handle:close()
    return result ~= nil and result:gsub("%s+", "") ~= ""
end

function vscode.open_vscode()
    os.execute("code . &")
end

return vscode

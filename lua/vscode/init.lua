local vscode = require("vscode.vscode")

local message = [[ 
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

local function stop_using_neovim()
    print(message)
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
            print("Download VSCode at: https://code.visualstudio.com/download")
        end
    end
    -- Waiting for user input to exit VSCode message screen
    vim.ui.input({ prompt = "\nPress enter to continue..."},
        function (_)
            vim.cmd("qa!")
        end)
end

return {
    stop_using_neovim=stop_using_neovim
}

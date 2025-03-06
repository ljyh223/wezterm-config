local platform = require('utils.platform')()

local options = {
   default_prog = {},
   launch_menu = {},
}

if platform.is_win then
   options.default_prog = { 'C:/Program Files/PowerShell/7/pwsh' }
   options.launch_menu = {
      { label = 'PowerShell 7', args = { 'C:/Program Files/PowerShell/7/pwsh' } },
      { label = 'PowerShell Core', args = { 'pwsh' } },
      { label = 'PowerShell Desktop', args = { 'powershell', '-nologo' } },
      { label = 'Command Prompt', args = { 'cmd' } },
      { label = 'WSL', args = { 'wsl' } },
      { label = 'ssh', args = { 'ssh','ljyh' } },
      
      {
         label = 'Git Bash',
         args = { 'D://scoop//apps//git//current//bin//bash.exe' },
      },
   }
elseif platform.is_mac then
   options.default_prog = { '/opt/homebrew/bin/fish', '-l' }
   options.launch_menu = {
      { label = 'Bash', args = { 'bash', '-l' } },
      { label = 'Fish', args = { '/opt/homebrew/bin/fish', '-l' } },
      { label = 'Nushell', args = { '/opt/homebrew/bin/nu', '-l' } },
      { label = 'Zsh', args = { 'zsh', '-l' } },
   }
elseif platform.is_linux then
   options.default_prog = { 'fish', '-l' }
   options.launch_menu = {
      { label = 'Bash', args = { 'bash', '-l' } },
      { label = 'Fish', args = { 'fish', '-l' } },
      { label = 'Zsh', args = { 'zsh', '-l' } },
   }
end

return options

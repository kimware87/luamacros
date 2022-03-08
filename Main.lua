-- assign logical name to macro keyboard
-- lmc_assign_keyboard('MACROS');
lmc_minimize() -- Uncomment to Minimize on Launch
lmc_device_set_name ('MacroPad', '12FC3B84');

-- define callback for whole device
lmc_set_handler('MacroPad',function(button, direction)
  if (direction == 1) then return end  -- ignore down
  
  if     (button == 112) then lmc_spawn("C:\\Users\\Work\\AppData\\Roaming\\Spotify\\Spotify.exe") -- F1 Launch Spotify
  elseif (button == 113) then lmc_spawn("F:\\PortableApps\\luamacrosPortable\\Executables\\ALH New Folder.exe") -- F2 Create New ALH Folder
  elseif (button == 114) then lmc_spawn("F:\\PortableApps\\luamacrosPortable\\Executables\\Work Setup.exe") -- F3 Launch Work Setup
  elseif (button == 115) then lmc_spawn("F:\\PortableApps\\luamacrosPortable\\Executables\\KPI Links.exe") -- F4 Launch KPI Automation
  elseif (button == 116) then lmc_spawn() -- F5
  
  elseif (button == string.byte('1')) then lmc_send_keys("^1") -- Visio Pointer Tool
  elseif (button == string.byte('2')) then lmc_send_keys("^8") -- Visio Rectangle Tool
  elseif (button == string.byte('3')) then lmc_send_keys("^6") -- Visio Line Tool
  elseif (button == string.byte('4')) then lmc_send_keys("^2") -- Visio Text Tool
  elseif (button == string.byte('5')) then lmc_send_keys("{F3}") -- Visio Format Shape
  elseif (button == string.byte('6')) then lmc_send_keys()
   
  elseif (button == string.byte('Q')) then lmc_send_keys("#+{LEFT}") -- Move Active Windows Left or Right
  elseif (button == string.byte('W')) then lmc_send_keys("%NP") -- Visio Insert Image
  elseif (button == string.byte('E')) then lmc_send_keys("^r") -- Visio Rotate Shape to Right
  elseif (button == string.byte('R')) then lmc_send_keys("^h") -- Replace Text
  elseif (button == string.byte('T')) then lmc_send_keys("+{F10}a&&&&~") -- Visio/Word Change Picture
  elseif (button == string.byte('A')) then lmc_send_keys("^a") -- Select All
  elseif (button == string.byte('S')) then lmc_send_keys("^s") -- Save
  elseif (button == string.byte('D')) then lmc_send_keys("{DEL}") -- Delete
  elseif (button == string.byte('F')) then lmc_send_keys("^f") -- Find
  elseif (button == string.byte('G')) then lmc_send_keys("^d") -- Visio Duplicate Shape
  elseif (button == string.byte('Z')) then lmc_send_keys("^z") -- Undo
  elseif (button == string.byte('X')) then lmc_send_keys("^x") -- Cut
  elseif (button == string.byte('C')) then lmc_send_keys("^c") -- Copy
  elseif (button == string.byte('V')) then lmc_send_keys("^v") -- Paste
  elseif (button == string.byte('B')) then lmc_send_keys("^%v") -- Paste Special 
  
  elseif (button == 32) then lmc_send_keys("^k^v") -- Space Insert Hyperlink
  elseif (button == 18) then lmc_send_keys("%a") -- Alt
  elseif (button == 20) then lmc_send_keys() -- Capslock
  elseif (button ==  9) then lmc_send_keys("^+.") -- Tab Visio Increase Font Size
  elseif (button == 192) then lmc_send_keys('<Insert Site Address>') -- Visio Pointer Tool

  
  -- elseif (button == string.byte('N')) then lmc_spawn("notepad", "C:\\test.txt")
  -- elseif (button == string.byte('H')) then lmc_send_keys('Hello world')
  else print('Not yet assigned: ' .. button) 
  end
end)

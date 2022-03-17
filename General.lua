lmc_minimize()
lmc_device_set_name ('MacroPad', '1EA21BF2');


-- define callback for whole device
lmc_set_handler('MacroPad',function(button, direction)
  if (direction == 1) then return end  -- ignore down
  
  if (button == 112) then lmc_spawn("C:\\Users\\Work\\AppData\\Roaming\\Spotify\\Spotify.exe") -- F1 Launch Spotify
  elseif (button == 113) then lmc_spawn("F:\\PortableApps\\luamacrosPortable\\Executables\\ALH New Folder.exe") -- F2 Create New ALH Folder
  elseif (button == 114) then lmc_spawn("F:\\PortableApps\\luamacrosPortable\\Executables\\Work Setup.exe") -- F3 Launch Work Setup
  elseif (button == 115) then lmc_spawn("F:\\PortableApps\\luamacrosPortable\\Executables\\KPI Automation.exe") -- F4 Launch KPI Automation
  elseif (button == 116) then lmc_spawn("F:\\PortableApps\\AutoHotKeyPortable\\Scripts\\AutoCorrect.ahk") -- F5 Launch AutoCorrect
  
  elseif (button == string.byte('1')) then lmc_send_keys("1") -- 
  elseif (button == string.byte('2')) then lmc_send_keys("2") -- 
  elseif (button == string.byte('3')) then lmc_send_keys("3") -- 
  elseif (button == string.byte('4')) then lmc_send_keys("4") -- 
  elseif (button == string.byte('5')) then lmc_send_keys("5") --  
  elseif (button == string.byte('6')) then lmc_send_keys("6") --
  
  elseif (button == string.byte('Q')) then lmc_send_keys("#+{LEFT}") -- Move Active Windows Left or Right
  elseif (button == string.byte('W')) then lmc_send_keys("^w") -- Close Current Browser Tab
  elseif (button == string.byte('E')) then lmc_send_keys("^e") -- Open Query in Browser and File Manager 
  elseif (button == string.byte('R')) then lmc_send_keys("^r") -- Reload Current Page Browser 
  elseif (button == string.byte('T')) then lmc_send_keys("^t") -- Open New Browser Tab
  elseif (button == string.byte('A')) then lmc_send_keys("^a") -- Select All
  elseif (button == string.byte('S')) then lmc_send_keys("^s") -- Save
  elseif (button == string.byte('D')) then lmc_send_keys("{DEL}") -- Delete
  elseif (button == string.byte('F')) then lmc_send_keys("^f") -- Find
  elseif (button == string.byte('G')) then lmc_send_keys("^g") -- Next Item on Find Result
  elseif (button == string.byte('Z')) then lmc_send_keys("^z") -- Undo
  elseif (button == string.byte('X')) then lmc_send_keys("^x") -- Cut
  elseif (button == string.byte('C')) then lmc_send_keys("^c") -- Copy
  elseif (button == string.byte('V')) then lmc_send_keys("^v") -- Paste
  elseif (button == string.byte('Z')) then lmc_send_keys("^z") -- Undo
  elseif (button == string.byte('B')) then lmc_send_keys("^%v") -- Paste Special 
  
  elseif (button == 32) then lmc_send_keys("^k") -- Space Insert Hyperlink
  elseif (button == 18) then lmc_send_keys() -- Alt
  elseif (button == 20) then lmc_send_keys() -- Capslock 
  elseif (button ==  9) then lmc_send_keys("^{TAB}") --Tab
  
  
  -- elseif (button == string.byte('N')) then lmc_spawn("notepad", "C:\\test.txt")
  -- elseif (button == string.byte('H')) then lmc_send_keys('Hello world')
  else print('Not yet assigned: ' .. button) 
  end
end)

-- ^ = Control
-- % = Alt
-- + = Shift
-- # = Win
-- & = Tab
-- ~ = Enter

-- lmc_spawn() - Launch a Application
-- lmc_send_keys('') or ("")  - Send Keystrokes
-- lmc_send_input() - Send Specific Key Scan Code
-- lmc_minimize() -- minimize Luamacros during runtime
-- lmc.minimizeToTray = true - Minimize Luamacros to Tray during runtime
-- lmc_device_set_name ('Logical Name of Device', 'DeviceID'); - Setting Name for Device and specify DeviceID

-- Shortcut Link configure as Luamacros.exe -r Test.lua - This will start LuaMacros, runs the script Test.lua automatically
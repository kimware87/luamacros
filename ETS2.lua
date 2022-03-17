-- assign logical name to macro keyboard
-- lmc_assign_keyboard('MACROS');
-- lmc_minimize() -- Uncomment to Minimize on Launch
lmc_device_set_name ('MacroPad', '1EA21BF2');


-- define callback for whole device
lmc_set_handler('MacroPad',function(button, direction)
  if (direction == 1) then return end  -- ignore down
  
  lmc_send_keys("#3")
  
  if     (button == 27) then lmc_send_keys("{ESC}")
  elseif (button == 112) then lmc_send_keys("{F1}")
  elseif (button == 113) then lmc_send_keys("{F2}")
  elseif (button == 114) then lmc_send_keys("{F3}")
  elseif (button == 115) then lmc_send_keys("{F4}")
  elseif (button == 116) then lmc_send_keys("{F5}")
  
  elseif (button == 192) then lmc_send_keys() -- (`~)
  elseif (button == string.byte('1')) then lmc_send_keys("1") -- Interior Camera
  elseif (button == string.byte('2')) then lmc_send_keys("2") -- Following Camera
  elseif (button == string.byte('3')) then lmc_send_keys("3") -- Vertical Camera
  elseif (button == string.byte('4')) then lmc_send_keys("4") -- Roof Camera
  elseif (button == string.byte('5')) then lmc_send_keys("5") -- Window Rear View Camera
  elseif (button == string.byte('6')) then lmc_send_keys("6") -- Bumper Camera
  
  elseif (button == string.byte('Q')) then lmc_send_keys("[") -- Left Indicator / Signal Left
  elseif (button == string.byte('W')) then lmc_send_keys("W") -- Acceleration
  elseif (button == string.byte('E')) then lmc_send_keys("]") -- Right Indicator / Signal Right
  elseif (button == string.byte('R')) then lmc_send_keys("R") -- Radio Menu
  elseif (button == string.byte('T')) then lmc_send_keys("T") -- Connect / Disconnect Trailer
  elseif (button == string.byte('A')) then lmc_send_keys("A") -- Turn Left
  elseif (button == string.byte('S')) then lmc_send_keys("S") -- Break / Reverse
  elseif (button == string.byte('D')) then lmc_send_keys("D") -- Turn Right
  elseif (button == string.byte('F')) then lmc_send_keys("P") -- Wipers
  elseif (button == string.byte('G')) then lmc_send_keys("M") -- Map Menu
  elseif (button == string.byte('Z')) then lmc_send_keys("E") -- Start / Off Engine
  elseif (button == string.byte('X')) then lmc_send_keys("H") -- Horn
  elseif (button == string.byte('C')) then lmc_send_keys("C") -- Cruise Control
  elseif (button == string.byte('V')) then lmc_send_keys("L") -- Light Signal
  elseif (button == string.byte('B')) then lmc_send_keys("K") -- High Beam
  
  elseif (button == 32) then lmc_send_keys("{SPACE}") -- Handbrake
  elseif (button == 18) then lmc_send_keys("{ALT}") -- Alt
  elseif (button == 20) then lmc_send_keys("{CAPSLOCK}") -- Capslock
  elseif (button ==  9) then lmc_send_keys("{TAB}") -- Tab
  
  -- elseif (button == string.byte('N')) then lmc_spawn("notepad", "C:\\test.txt")
  -- elseif (button == string.byte('H')) then lmc_send_keys('Hello world')
  else print('Not yet assigned: ' .. button) 
  end
end)
--[[

  Lieutenant Bennet

  Copyright (C) 2012 Jessica Tölke

  This program is free software: you can redistribute it and/or modify
  it under the terms of the GNU General Public License as published by
  the Free Software Foundation, either version 3 of the License, or
  (at your option) any later version.

  This program is distributed in the hope that it will be useful,
  but WITHOUT ANY WARRANTY; without even the implied warranty of
  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
  GNU General Public License for more details.

  You should have received a copy of the GNU General Public License
  along with this program.  If not, see <http://www.gnu.org/licenses/>.

--]]

local function lieutnant_talk(npc, ch)
    local function say(message)
        npc_message(npc, ch, message)
    end
    say("Oh? What are you doing here? This area is only for the higher ranks.")
end

local lieutnant = create_npc_by_name("Lieutenant Bennet", lieutnant_talk)

being_set_base_attribute(lieutnant, 16, 1)
local patrol = Patrol:new("Lieutenant Bennet")
patrol:assign_being(lieutnant)
schedule_every(13, function() patrol:logic() end)

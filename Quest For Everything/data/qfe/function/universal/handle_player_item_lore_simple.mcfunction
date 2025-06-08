# Check if the item exists and store success (1 if found, 0 if not found)
$execute store success score @s ItemFound run data get entity @s Inventory[{id:'$(item)'}]

# Only get the slot if the item was actually found
$execute if score @s ItemFound matches 1 store result score @s ItemSlot run data get entity @s Inventory[{id:'$(item)'}].Slot

# When not takeItems, add player name and playtime lore to the item in the determined slot
execute if score takeItems GameSetup matches 0 run function qfe:universal/add_player_item_lore_by_slot

tag @s add trophy_sand_and_glass
give @s minecraft:player_head[minecraft:item_name="Trophy - Sand & Glass",minecraft:note_block_sound="minecraft:block.suspicious_sand.break",minecraft:profile={properties:[{name:"textures",value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvNGY0OTNkZDgwNjUzM2Q5ZDIwZTg0OTUzOTU0MzY1ZjRkMzY5NzA5Y2ViYzlkZGVmMDIyZDFmZDQwZDg2YTY4ZiJ9fX0="}]},minecraft:custom_data={trophy:"trophy_sand_and_glass",lore:false}] 1

# Store the slot of only the unlabelled (new) trophy to avoid modifying other players' trophies
execute store result score @s ItemSlot run data get entity @s Inventory[{id:"minecraft:player_head",components:{"minecraft:custom_data":{trophy:"trophy_sand_and_glass",lore:false}}}].Slot
execute if score playerLore GameSetup matches 1 run function qfe:universal/add_player_trophy_lore_by_slot
execute if score playerLore GameSetup matches 0 run function qfe:universal/add_trophy_lore_by_slot

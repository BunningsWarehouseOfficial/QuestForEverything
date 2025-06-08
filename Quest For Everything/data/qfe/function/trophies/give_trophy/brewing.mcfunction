tag @s add trophy_brewing
give @s minecraft:player_head[minecraft:item_name="Trophy - Brewing",minecraft:note_block_sound="minecraft:block.brewing_stand.brew",minecraft:profile={properties:[{name:"textures",value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvODQ4YTE5Y2RmNDJkNzQ4YjQxYjcyZmI0Mzc2YWUzZjYzYzExNjVkMmRjZTA2NTE3MzNkZjI2MzQ0NmM3N2JhNiJ9fX0="}]},minecraft:custom_data={trophy:"trophy_brewing",lore:false}] 1

# Store the slot of only the unlabelled (new) trophy to avoid modifying other players' trophies
execute store result score @s ItemSlot run data get entity @s Inventory[{id:"minecraft:player_head",components:{"minecraft:custom_data":{trophy:"trophy_brewing",lore:false}}}].Slot
execute if score playerLore GameSetup matches 1 run function qfe:universal/add_player_trophy_lore_by_slot
execute if score playerLore GameSetup matches 0 run function qfe:universal/add_trophy_lore_by_slot

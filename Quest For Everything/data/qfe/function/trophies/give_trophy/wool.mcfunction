tag @s add trophy_wool
give @s minecraft:player_head[minecraft:item_name="Trophy - Wool",minecraft:note_block_sound="minecraft:block.wool.place",minecraft:profile={properties:[{name: "textures",value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvZDA4ZGY2MGM1MTA3NGVlZjI1NDRmZjM4Y2VhZDllMTY2NzVhZTQyNTE5MTYxMDUxODBlMWY4Y2UxOTdhYjNiYyJ9fX0="}]},minecraft:custom_data={trophy:"trophy_wool",lore:false}] 1

# Store the slot of only the unlabelled (new) trophy to avoid modifying other players' trophies
execute store result score @s ItemSlot run data get entity @s Inventory[{id:"minecraft:player_head",components:{"minecraft:custom_data":{trophy:"trophy_wool",lore:false}}}].Slot
function qfe:universal/add_trophy_lore_by_slot

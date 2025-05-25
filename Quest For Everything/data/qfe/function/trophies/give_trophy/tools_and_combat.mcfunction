tag @s add trophy_tools_and_combat
give @s minecraft:player_head[minecraft:item_name="Trophy - Tools & Combat",minecraft:note_block_sound="minecraft:item.bucket.empty_lava",minecraft:profile={properties:[{name:"textures",value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvODkxMTgzZWZiOTQxYzU3YzZhMzdmNjFjOTRlMjViNDRiNjdhODA0NDUyZTAyYTBkMjk5NmRlZGE2ZDIwZDdjNiJ9fX0="}]},minecraft:custom_data={trophy:"trophy_tools_and_combat",lore:false}] 1

# Store the slot of only the unlabelled (new) trophy to avoid modifying other players' trophies
execute store result score @s ItemSlot run data get entity @s Inventory[{id:"minecraft:player_head",components:{"minecraft:custom_data":{trophy:"trophy_tools_and_combat",lore:false}}}].Slot
function qfe:universal/add_trophy_lore_by_slot

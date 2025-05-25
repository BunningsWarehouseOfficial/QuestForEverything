tag @s add trophy_terracotta_and_concrete
give @s minecraft:player_head[minecraft:item_name="Trophy - Terracotta & Concrete",minecraft:note_block_sound="minecraft:block.stone.break",minecraft:profile={properties:[{name:"textures",value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvODJkNWZlZmUyMGRhZjMxYzIzOGVlMjI3ZGQxNDE4MjdhZGE1ZWY4NDgyZDhkMzU3YmJlNWE3Y2Y0MGFmODUifX19"}]},minecraft:custom_data={trophy:"trophy_terracotta_and_concrete",lore:false}] 1

# Store the slot of only the unlabelled (new) trophy to avoid modifying other players' trophies
execute store result score @s ItemSlot run data get entity @s Inventory[{id:"minecraft:player_head",components:{"minecraft:custom_data":{trophy:"trophy_terracotta_and_concrete",lore:false}}}].Slot
function qfe:universal/add_trophy_lore_by_slot

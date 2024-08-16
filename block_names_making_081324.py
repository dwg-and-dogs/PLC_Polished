# -*- coding: utf-8 -*-
"""
Created on Tue Aug 13 11:04:57 2024

@author: dwg11
"""

# Sample content for testing (This would be replaced by reading an actual file)
map_names = """
CALM_COAST
SERENE_SPRINGS
GAULDENROD
GAULDENROD_DORMS
GAULDENROD_STOCKROOM
GAULDENROD_GUILD
GAULDENROD_HOUSE
GAULDENROD_UNDERGROUND_SOUTH
GAULDENROD_UNDERGROUND_NORTH
GAULDENROD_UNDERGROUND
GAULDENROD_SERENE_SPRINGS_GATE
CALM_COAST_COTTAGE
GAULDENROD_TOWER_1F
GAULDENROD_TOWER_2F
GAULDENROD_TOWER_3F
GAULDENROD_TOWER_4F
STADIUM_GROUNDS
STADIUM_UNDERGROUND
STADIUM_BOX

ROUTE_KAJO
KAJO_ACQUIFER
MAGNET_TRAIN_TUNNEL
FIRST_CLASS_CABIN
SECOND_CLASS_CABIN
KAJO_CABIN
UNDERGROUND_RADIO_TOWER

EMPERORS_GARDEN
WESTERN_CAPITAL_DORMS
WESTERN_CAPITAL_DANCE_THEATRE
WESTERN_CAPITAL_STOCKROOM
WESTERN_CAPITAL_CEMETERY
WESTERN_CAPITAL
WHISPERS_WAY
TIMELESS_TAPESTRY
BRASS_TOWER_B1F
BRASS_TOWER_1F
BRASS_TOWER_2F
BRASS_TOWER_3F
BRASS_TOWER_4F
BRASS_TOWER_ROOF
BRASS_TOWER_2F_WARP
BRASS_TOWER_3F_WARP
BRASS_TOWER_4F_WARP
TIN_TOWER_OLD_1F
TIN_TOWER_OLD_2F
TIN_TOWER_OLD_3F

CAPITAL_CULL_GATE
CATTLE_CULL_38
CATTLE_CULL_39
TRADERS_LANDING
LANDING_STOCKROOM
LANDING_DORMS
LANDING_HOUSE_1
LANDING_HOUSE_2
LANDING_TAVERN
LANDING_BARBEAU
CIANWOOD_COVE
PHANTOM_FJORD
SHELTERED_SHORES
RUSALKA_RUINS_1F
RUSALKA_RUINS_B1F
RUSALKA_RUINS_LIT_CABINS
RUSALKA_RUINS_DARK_CABINS
RUSALKA_RUINS_CAPTAIN
SEAFLUX_NEXUS
LANDING_DOCKS
ARDUOUS_ANCHORAGE

OLIVINE_DESAL_1F
OLIVINE_DESAL_INTAKE
OLIVINE_DESAL_B1F

SLOWPOKE_DREAMS
SLOWPOKE_DREAMS_BACKGROUND_N
SLOWPOKE_DREAMS_BACKGROUND_S
SLOWPOKE_DREAMS_BACKGROUND_E
SLOWPOKE_DREAMS_BACKGROUND_W

TRANQUIL_TARN
SINJOH_CROSSROADS
SINJOH_DORMS
SINJOH_ELDERS_HOUSE
SINJOH_STOCKROOM
GROTTOED_GLACIER_1F
GROTTOED_GLACIER_B1F
GROTTOED_GLACIER_B2F

WESTERN_GLACIER_1F
WESTERN_GLACIER_B1F
WESTERN_GLACIER_B2F
EMPIRES_EXTENT_EERIE_HAMLET_GATE
EMPIRES_EXTENT
EMPIRES_EXTENT_CAVERN
DRAGONS_DEN
EERIE_HAMLET
EERIE_HAMLET_DORMS
EERIE_HAMLET_STOCKROOM
REBELS_REDOUBT_1F
REBELS_REDOUBT_B1F
REBELS_REDOUBT_B2F
REBELS_REDOUBT_B3F

SULFUR_STY
SULFUR_STY_HOUSE_1
SULFUR_STY_HOUSE_2
CLASTS_CRADLE_3F
CLASTS_CRADLE_2F
CLASTS_CRADLE_1F
CLASTS_CRADLE_B1F
""".strip().splitlines()


def process_map_name_corrected(map_name):
    # Decapitalize and remove underscores
    processed_name = map_name.title().replace('_', '')
    block_data_name = f'{processed_name}_BlockData'
    
    # Create the required text with corrected format
    section_text = f'SECTION "{block_data_name}", ROMX'
    block_data_text = f'{block_data_name}:'
    incbin_text = f'\tINCBIN "maps/{processed_name}.ablk.lz"'
    
    return f"{section_text}\n{block_data_text}\n{incbin_text}\n"

# Process all map names again and write to a new file
output_file_content_corrected = "\n".join([process_map_name_corrected(map_name) for map_name in map_names])

# Write the corrected output to the file
output_file_path_corrected = 'fullmap_blocks_corrected.txt'
with open(output_file_path_corrected, 'w') as file:
    file.write(output_file_content_corrected)
globalvar CheckpointPositions

rule "Initialize Gamemode":
    @Event global
    @Delimiter
    CheckpointPositions = [vect(1, 1, 1)]
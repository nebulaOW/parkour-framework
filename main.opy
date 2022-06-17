globalvar CheckpointPositions
globalvar Prime_Radius_VA
globalvar LevelColors

playervar Active
playervar CurrentLevel
playervar CurrentCheckpoint
playervar CurrentRings

rule "Initialize Gamemode":
    @Event global
    CheckpointPositions = [vect(1, 1, 1)]
    Prime_Radius_VA = [vect(110, 2, 0)]


def abilityEnable():
    eventPlayer.setAbility1Enabled(true)
    eventPlayer.setAbility2Enabled(true)
    eventPlayer.setPrimaryFireEnabled(true)
    eventPlayer.setSecondaryFireEnabled(true)

def abilityDisable():
    eventPlayer.setAbility1Enabled(false)
    eventPlayer.setAbility2Enabled(false)
    eventPlayer.setPrimaryFireEnabled(false)
    eventPlayer.setSecondaryFireEnabled(false)

def generateRings():
    createEffect(eventPlayer, Effect.RING, LevelColors[eventPlayer.CurrentLevel], CheckpointPositions[eventPlayer.CurrentCheckpoint], Prime_Radius_VA[eventPlayer.CurrentCheckpoint], EffectReeval.NONE)
    eventPlayer.CurrentRings[0] = getLastCreatedEntity()
    createEffect(eventPlayer, Effect.RING, LevelColors[eventPlayer.CurrentLevel], CheckpointPositions[eventPlayer.CurrentCheckpoint + 1], Prime_Radius_VA[eventPlayer.CurrentCheckpoint + 1], EffectReeval.NONE)
    eventPlayer.CurrentRings[1] = getLastCreatedEntity()

def destroyRings():
    destroyEffect(eventPlayer.CurrentRings[0])
    destroyEffect(eventPlayer.CurrentRings[1])

globalvar CheckpointPositions
globalvar Prime_Radius_VA
globalvar LevelColors

playervar Active
playervar CurrentLevel
playervar CurrentCheckpoint
playervar CurrentRings

rule "Initialize Gamemode":
    @Event global
    CheckpointPositions = [vect(-6.028, 0.576, -79.737), vect(3.885, 6.500, -69.834)]
    Prime_Radius_VA = [vect(11, 2, 0), vect(3, 2, 0)]
    LevelColors = [Color.GREEN, Color.SKY_BLUE]


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
    createEffect(eventPlayer, Effect.RING, LevelColors[eventPlayer.CurrentLevel], CheckpointPositions[eventPlayer.CurrentCheckpoint], Prime_Radius_VA[eventPlayer.CurrentCheckpoint].y, EffectReeval.VISIBILITY_POSITION_RADIUS_AND_COLOR)
    eventPlayer.CurrentRings[0] = getLastCreatedEntity()
    createEffect(eventPlayer, Effect.RING, LevelColors[eventPlayer.CurrentLevel], CheckpointPositions[eventPlayer.CurrentCheckpoint + 1], Prime_Radius_VA[eventPlayer.CurrentCheckpoint + 1].y, EffectReeval.VISIBILITY_POSITION_RADIUS_AND_COLOR)
    eventPlayer.CurrentRings[1] = getLastCreatedEntity()


def destroyRings():
    destroyEffect(eventPlayer.CurrentRings[0])
    destroyEffect(eventPlayer.CurrentRings[1])

rule "Player Joins":
    @Event eachPlayer
    @Condition eventPlayer.hasSpawned()
    eventPlayer.CurrentLevel = 0
    eventPlayer.CurrentCheckpoint = 0
    eventPlayer.Active = false
    eventPlayer.teleport(CheckpointPositions[0])
    generateRings()


rule "Start Run":
    @Event eachPlayer
    @Condition distance(CheckpointPositions[eventPlayer.CurrentCheckpoint], eventPlayer.getPosition()) > Prime_Radius_VA[eventPlayer.CurrentCheckpoint].y
    eventPlayer.Active = true

rule "Floor is Lava":
    @Event eachPlayer
    @Condition eventPlayer.Active == true
    @Condition eventPlayer.isOnGround()

    if CheckpointPositions[eventPlayer.CurrentCheckpoint] % 3:
        pass
    elif distance(CheckpointPositions[eventPlayer.CurrentCheckpoint + 1], eventPlayer.getPosition()) <= Prime_Radius_VA[eventPlayer.CurrentCheckpoint + 1].y:
        eventPlayer.teleport(CheckpointPositions[eventPlayer.CurrentCheckpoint + 1])
        eventPlayer.CurrentCheckpoint += 1
        destroyRings()
        generateRings()
    else:
        eventPlayer.teleport(CheckpointPositions[eventPlayer.CurrentCheckpoint])

    eventPlayer.Active = false
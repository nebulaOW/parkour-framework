globalvar CheckpointPositions
globalvar Prime_Radius_VA
globalvar LevelColors
globalvar TimeRemaining 2

playervar Active
playervar CurrentLevel
playervar CurrentCheckpoint
playervar CurrentRings
playervar TempIterator

rule "Match time -- Written By Hax":
    if getCurrentGamemode() == Gamemode.SKIRMISH:
        goto lbl_0
    wait(0.25)
    setMatchTime(1)
    wait(1.1)
    setMatchTime(1)
    wait(1.1)
    lbl_0:
    while true:
        setMatchTime(3600)
        wait(2875)
        TimeRemaining += true
        if TimeRemaining == 5:
            TimeRemaining = 1800
            hudHeader(getAllPlayers(), "  Server Restarts In {0} Min  ".format(ceil(TimeRemaining / 60)), HudPosition.RIGHT, -200, Color.RED, HudReeval.VISIBILITY_AND_STRING, SpecVisibility.ALWAYS)
            chase(TimeRemaining, false, rate=true, ChaseReeval.NONE)
            wait(1795)
            bigMessage(getAllPlayers(), "Restarting")
            wait(5)
            if getCurrentGamemode() == Gamemode.FFA:
                declarePlayerVictory(getPlayersInSlot(1, Team.ALL))
            else:
                declareTeamVictory(Team.1)
            return





rule "Initialize Gamemode":
    @Event global
    CheckpointPositions = [vect(-6.03, -0.92, -79.74), vect(3.885, 5.00, -69.834)]
    Prime_Radius_VA = [vect(11, 2, 0), vect(3, 2, 0)]
    LevelColors = [Color.GREEN, Color.SKY_BLUE]


def abilityEnable():
    eventPlayer.cancelPrimaryAction()
    eventPlayer.setAbility1Enabled(true)
    eventPlayer.setAbility2Enabled(true)
    eventPlayer.setPrimaryFireEnabled(true)
    eventPlayer.setSecondaryFireEnabled(true)
    eventPlayer.setAbilityCooldown(Button.ABILITY_1, 0)
    eventPlayer.setAbilityCooldown(Button.ABILITY_2, 0)
    eventPlayer.setAbilityCooldown(Button.PRIMARY_FIRE, 0)
    eventPlayer.setAbilityCooldown(Button.SECONDARY_FIRE, 0)

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

def checkpointEnd():
    abilityDisable()
    abilityEnable()
    eventPlayer.Active = false

def checkpointComplete():
    eventPlayer.teleport(CheckpointPositions[eventPlayer.CurrentCheckpoint + 1])
    eventPlayer.CurrentCheckpoint += 1
    # destroyRings()
    # generateRings()
    checkpointEnd()

def checkpointFail():
    eventPlayer.setStatusEffect(null, Status.ROOTED, 0.300)
    eventPlayer.teleport(CheckpointPositions[eventPlayer.CurrentCheckpoint])
    checkpointEnd()


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

    if CheckpointPositions[eventPlayer.CurrentCheckpoint] % 3 == 0:
        return
    elif distance(CheckpointPositions[eventPlayer.CurrentCheckpoint + 1], eventPlayer.getPosition()) <= Prime_Radius_VA[eventPlayer.CurrentCheckpoint + 1].y:
        checkpointComplete()
    else:
        checkpointFail()

    

rule "Full Reset":
    @Event eachPlayer
    @Condition eventPlayer.isHoldingButton(Button.MELEE)
    destroyRings()
    eventPlayer.CurrentLevel = 0
    eventPlayer.CurrentCheckpoint = 0
    eventPlayer.Active = false
    eventPlayer.teleport(CheckpointPositions[0])
    generateRings()
    abilityEnable()
    

rule "Ground HUD Vect":
    @Event eachPlayer
    hudSubtext(eventPlayer, "{}".format(nearestWalkablePosition(eventPlayer.getPosition())), HudPosition.LEFT, 0, Color.WHITE, HudReeval.STRING, SpecVisibility.ALWAYS) 

#Global variables

globalvar CPposition 0
globalvar Prime 4
globalvar Effect_ 8


#Player variables

playervar CreatorState 0
playervar EditingTool 1
playervar LocalC 2
playervar Checkpoint 3
playervar Shift 4
playervar Roaming 5
playervar Local_Pos 6
playervar Local_Rad 7
playervar Local_Index 8
playervar EditTime 9
playervar EditRadius 10
playervar CPData 11
playervar Elements 12
playervar Detector1 14
playervar Detector2 15
playervar Detector3 16
playervar Zipline 18
playervar Effinitiate 40
playervar Effpos 41
playervar Effrad 42
playervar Effstate 43
playervar Efftim 44
playervar Efftype 45
playervar EffradD 46
playervar Effabi 47
playervar LockE 48
playervar EfflockC 49
playervar Effvisible 50
playervar Effdetect 51
playervar Effactual 52
playervar EditState 53
playervar EditType 54
playervar CPcount 55
playervar Ablock 62
playervar AbilityCount 63
playervar HoldTime 70
playervar PioneerGenerateCP 71
playervar MovingElement 74
playervar MovingElementConfirm 75
playervar Remove 79
playervar Grace 81
playervar ForceAbility 82
playervar Pressing_A_D 94
playervar Pressing_W_S 95
playervar HeightChase 96
playervar TempRing 97
playervar Text 99
playervar ShiftSpeed 103
playervar ElementLimiter 106
playervar WSAutoEL 115


#Subroutine names

subroutine MultiPurposeCamera 0
subroutine CPselect 4
subroutine CtrlZ 10
subroutine CPclearend 16
subroutine EffectCreate 19
subroutine EffectPos 24
subroutine EffectInitiate 27
subroutine While1 28
subroutine CreateEffect 30
subroutine GenerateElements 32
subroutine EffectAbilities 34
subroutine CPfail 36
subroutine AbilityCDreset 38
subroutine Exit 40
subroutine teleport 42
subroutine CPchange 55
subroutine CheckpointEffect 56
subroutine EffectLock 58
subroutine Time_Ability_Effect 64
subroutine EffectSelect 65
subroutine Permeation_Effect 70
subroutine Portal_Effect 71
subroutine Death_Effect 72
subroutine Black_Hole_Effect 73


#Activated extensions

#!extension explosionSounds


/*
rule "Time / Ability change   /   Death   /   Permeation   Effect":
*/

rule "Effect Menu":
    @Event eachPlayer
    @Condition eventPlayer.EditingTool == 10
    @Condition (eventPlayer.isHoldingButton(Button.ULTIMATE) or eventPlayer.isHoldingButton(Button.INTERACT) or eventPlayer.isHoldingButton(Button.MELEE) or eventPlayer.getThrottle().x) == true
    @Condition eventPlayer.MovingElementConfirm == false
    
    #Select Effect / Empty Slot
    if eventPlayer.getThrottle().x:
        eventPlayer.LocalC[7] += (-1 if eventPlayer.LocalC[7] > false else len(eventPlayer.Efftype)) if eventPlayer.getThrottle().x > false else true if eventPlayer.LocalC[7] < len(eventPlayer.Efftype) else len(eventPlayer.Efftype) * -1
        EffectSelect()
    #Create New / Edit Effect
    if eventPlayer.isHoldingButton(Button.INTERACT):
        if eventPlayer.MovingElement != CPposition[eventPlayer.Checkpoint] or eventPlayer.MovingElement == CPposition[eventPlayer.Checkpoint] and eventPlayer.ElementLimiter < 4:
            goto lbl_0
        smallMessage(eventPlayer, "Too many elements! (4/4)")
        return
        lbl_0:
        While1()
        eventPlayer.EditingTool = 9
        #New
        if eventPlayer.MovingElement == CPposition[eventPlayer.Checkpoint]:
            CreateEffect()
            #Edit
        else:
            #When Going Back from special effects to Time effects there needs to be some time to come back to
            eventPlayer.LocalC[6] = -0.5
            #Potential Ability Effect
            if eventPlayer.EditState > true and eventPlayer.EditState < 7:
                eventPlayer.EditState *= -1
            EffectPos()
    #Remove Effect
    if eventPlayer.isHoldingButton(Button.MELEE) and eventPlayer.MovingElement != CPposition[eventPlayer.Checkpoint]:
        While1()
        if not eventPlayer.Remove:
            eventPlayer.Remove = true
            hudText(eventPlayer, "Remove Effect?", null, "   Melee [YES]\r\n\r\n   Ultimate [NO]", HudPosition.TOP, -47.5, Color.WHITE, Color.WHITE, Color.RED, HudReeval.NONE, SpecVisibility.DEFAULT)
            eventPlayer.Text[10] = getLastCreatedText()
            return
        CtrlZ()
        if eventPlayer.Remove:
            destroyHudText(eventPlayer.Text[10])
            eventPlayer.Remove = false
            del eventPlayer.Effactual[eventPlayer.LocalC[7]]
            if any([abs(player) == 5 or abs(player) == 6 or abs(player) == 8 or abs(player) == 9 for player in eventPlayer.EditState]):
                del eventPlayer.Effactual[eventPlayer.LocalC[7] + (false if abs(eventPlayer.EditState) == 5 or abs(eventPlayer.EditState) == 8 else -1)]
                eventPlayer.LocalC[7] -= false if abs(eventPlayer.EditState) == 5 or abs(eventPlayer.EditState) == 8 else true
            Effect_[eventPlayer.Checkpoint] = eventPlayer.Effactual if eventPlayer.Effactual else false
            eventPlayer.LocalC[7] -= true if eventPlayer.LocalC[7] else false
            EffectSelect()
        GenerateElements()
        return
    #Back / Discard Delete
    if eventPlayer.isHoldingButton(Button.ULTIMATE):
        While1()
        if eventPlayer.Remove:
            destroyHudText(eventPlayer.Text[10])
            eventPlayer.Remove = false
            return
        eventPlayer.EditRadius = 2
        CPselect()


def EffectSelect():
    @Name "Effect Select sub"
    
    #Order because of Edit Time Rule
    eventPlayer.EditTime = eventPlayer.Effactual[eventPlayer.LocalC[7]].last()
    eventPlayer.MovingElement = eventPlayer.Effactual[eventPlayer.LocalC[7]][0]
    eventPlayer.EditRadius = eventPlayer.Effactual[eventPlayer.LocalC[7]][true]
    eventPlayer.EditState = eventPlayer.Effactual[eventPlayer.LocalC[7]][2]
    eventPlayer.EditType = eventPlayer.EditRadius >= false
    eventPlayer.EditRadius = abs(eventPlayer.EditRadius)
    if eventPlayer.MovingElement:
        return
    eventPlayer.MovingElement = CPposition[eventPlayer.Checkpoint]
    smallMessage(eventPlayer, "Empty Slot")


def CreateEffect():
    @Name "Create Effect"
    
    eventPlayer.MovingElement = raycast(eventPlayer.getEyePosition(), eventPlayer.getEyePosition() + eventPlayer.getFacingDirection() * 6, getAllPlayers(), eventPlayer, true).getHitPosition()
    eventPlayer.EditRadius = 2
    eventPlayer.EditingTool = 9
    eventPlayer.EditState = false
    eventPlayer.EditType = true
    eventPlayer.EditTime = -0.5
    EffectPos()


rule "Editing Effect State & Type":
    @Event eachPlayer
    @Condition eventPlayer.EditingTool == 9
    @Condition (eventPlayer.isHoldingButton(Button.INTERACT) or eventPlayer.isHoldingButton(Button.ABILITY_2)) == true
    @Condition eventPlayer.EditState != -6
    @Condition (eventPlayer.EditState == -5 and eventPlayer.Effactual[eventPlayer.LocalC[7]][2] == 5) == false
    @Condition eventPlayer.EditState != 9
    @Condition (eventPlayer.EditState == 8 and eventPlayer.Effactual[eventPlayer.LocalC[7]][2] == 8) == false
    
    #State
    if eventPlayer.isHoldingButton(Button.INTERACT):
        eventPlayer.setStatusEffect(null, Status.ROOTED, 9999)
        eventPlayer.LocalC[8] = eventPlayer.MovingElement + (angleToDirection(eventPlayer.getHorizontalFacingAngle(), eventPlayer.getVerticalFacingAngle()) * -1 * (max(eventPlayer.EditRadius + 2, 6)))
        eventPlayer.startCamera(eventPlayer.LocalC[8], updateEveryTick(eventPlayer.LocalC[8] + eventPlayer.getFacingDirection()), 500)
        eventPlayer.Detector2 = worldVector(Vector.FORWARD * 4, eventPlayer, Transform.ROTATION_AND_TRANSLATION) - eventPlayer.getPosition()
        eventPlayer.Detector3 = eventPlayer.LocalC[8] + eventPlayer.Detector2[0] - Vector.UP * 0.25
        for eventPlayer.Detector1 in range(true, 9, true):
            eventPlayer.Detector2[eventPlayer.Detector1] = worldVector(Vector.FORWARD * 4 + ((angleToDirection(90, 180 + 360 / 8 * eventPlayer.Detector1)) * 1.3), eventPlayer, Transform.ROTATION_AND_TRANSLATION) - eventPlayer.getPosition()
            eventPlayer.Detector3[eventPlayer.Detector1] = eventPlayer.LocalC[8] + eventPlayer.Detector2[eventPlayer.Detector1] - Vector.UP * 0.25
        eventPlayer.setFacing(angleToDirection(eventPlayer.getHorizontalFacingAngle(), false), Relativity.TO_WORLD)
        waitUntil(not eventPlayer.isHoldingButton(Button.INTERACT), 99999)
        eventPlayer.clearStatusEffect(Status.ROOTED)
        MultiPurposeCamera()
        if not eventPlayer.Detector2.index((sorted(eventPlayer.Detector2, lambda player: distance(eventPlayer.getFacingDirection() * 4, player)))[0]):
            return
        eventPlayer.EditState = eventPlayer.Detector2.index((sorted(eventPlayer.Detector2, lambda player: distance(eventPlayer.getFacingDirection() * 4, player)))[0]) - true
        eventPlayer.EditState *= -1 if eventPlayer.EditState > true else true
        eventPlayer.Detector2 = false
        eventPlayer.Detector3 = false
        #Time
        if not eventPlayer.EditState:
            eventPlayer.EditState = false
            eventPlayer.EditTime = eventPlayer.LocalC[6]
            #Death
        elif eventPlayer.EditState == 1:
            eventPlayer.LocalC[6] = -0.5 if eventPlayer.EditState else eventPlayer.EditTime
            eventPlayer.EditTime = false
            #Ability
        elif eventPlayer.EditState == -2:
            eventPlayer.LocalC[6] = -0.5 if eventPlayer.EditState else eventPlayer.EditTime
            eventPlayer.EditTime = true
            #Permeation
        elif eventPlayer.EditState == -3:
            eventPlayer.LocalC[6] = -0.5 if eventPlayer.EditState else eventPlayer.EditTime
            eventPlayer.EditTime = 11
            #Checkpoint
        elif eventPlayer.EditState == -4:
            eventPlayer.LocalC[6] = -0.5 if eventPlayer.EditState else eventPlayer.EditTime
            eventPlayer.EditTime = 1
            eventPlayer.EditType = true
            #Portal
        elif eventPlayer.EditState == -5:
            eventPlayer.LocalC[6] = -0.5 if eventPlayer.EditState else eventPlayer.EditTime
            eventPlayer.EditTime = 11
            eventPlayer.EditType = true
            #Black hole
        elif eventPlayer.EditState == -6:
            eventPlayer.EditState = 7
            eventPlayer.LocalC[6] = -0.5 if eventPlayer.EditState else eventPlayer.EditTime
            eventPlayer.EditTime = false
            eventPlayer.EditType = true
            #Zipline
        elif eventPlayer.EditState == -7:
            eventPlayer.EditState = 8
            eventPlayer.LocalC[6] = -0.5 if eventPlayer.EditState else eventPlayer.EditTime
            eventPlayer.EditTime = false
            eventPlayer.EditType = true
        #Effect Type
    elif not eventPlayer.isHoldingButton(Button.PRIMARY_FIRE) and eventPlayer.isHoldingButton(Button.ABILITY_2):
        if eventPlayer.EditState < -3:
            return
        eventPlayer.EditType = not eventPlayer.EditType


rule "Edit Ability Effect":
    @Event eachPlayer
    @Condition eventPlayer.EditingTool == 9
    @Condition eventPlayer.EditState < false
    @Condition (eventPlayer.isHoldingButton(Button.PRIMARY_FIRE) and (eventPlayer.isHoldingButton(Button.RELOAD) or eventPlayer.isHoldingButton(Button.SECONDARY_FIRE) or eventPlayer.isHoldingButton(Button.ABILITY_1) or eventPlayer.isHoldingButton(Button.ABILITY_2))) == true
    
    if eventPlayer.isHoldingButton(Button.RELOAD):
        eventPlayer.Text[false] = "Centerless Toggle" if eventPlayer.EditState == -4 else "Reset Ability CD Toggle"
        eventPlayer.HoldTime = 100
        chase(eventPlayer.HoldTime, false, duration=2, ChaseReeval.NONE)
        waitUntil(not eventPlayer.isHoldingButton(Button.RELOAD), 2)
        eventPlayer.HoldTime = false
        if eventPlayer.isHoldingButton(Button.RELOAD):
            eventPlayer.EditTime *= -1
        else:
            eventPlayer.EditTime = (true if abs(eventPlayer.EditTime) == 11 else 11) * (true if eventPlayer.EditTime > false else -1)
    elif eventPlayer.EditTime % 11:
        if eventPlayer.isHoldingButton(Button.SECONDARY_FIRE):
            eventPlayer.EditTime *= 2 if eventPlayer.EditTime % 2 else 0.5
        elif eventPlayer.isHoldingButton(Button.ABILITY_1):
            eventPlayer.EditTime *= 3 if eventPlayer.EditTime % 3 else true / 3
        else:
            eventPlayer.EditTime *= 5 if eventPlayer.EditTime % 5 else 0.2


def EffectPos():
    @Name "Moving Effect sub"
    
    eventPlayer.Roaming = true
    chase(eventPlayer.MovingElement, eventPlayer.MovingElement + vect(false, eventPlayer.HeightChase, false) + eventPlayer.Pressing_W_S + eventPlayer.Pressing_A_D, rate=eventPlayer.ShiftSpeed * 3, ChaseReeval.DESTINATION_AND_RATE)
    #Not moving CP (?)
    eventPlayer.MovingElementConfirm = 2


rule "Confirm / Discard Effect":
    @Event eachPlayer
    @Condition (eventPlayer.isHoldingButton(Button.ULTIMATE) or eventPlayer.isHoldingButton(Button.MELEE)) == true
    @Condition eventPlayer.MovingElementConfirm == true
    @Condition eventPlayer.EditingTool == 9
    
    wait(0.5, Wait.ABORT_WHEN_FALSE)
    eventPlayer.MovingElementConfirm = false
    stopChasingVariable(eventPlayer.MovingElement)
    #Discard
    if eventPlayer.isHoldingButton(Button.ULTIMATE):
        While1()
        smallMessage(eventPlayer, "Discarded")
        #If Discarding initial 2nd Portal, Remove 1st as well
        if eventPlayer.EditState == -6 and eventPlayer.Effactual[eventPlayer.LocalC[7]][2] != 6:
            eventPlayer.LocalC[7] -= true
            del eventPlayer.Effactual[eventPlayer.LocalC[7]]
            Effect_[eventPlayer.Checkpoint] = eventPlayer.Effactual
        #If Discarding initial 2nd Zipline, Remove 1st as well
        if eventPlayer.EditState == 9 and eventPlayer.Effactual[eventPlayer.LocalC[7]][2] != 9:
            eventPlayer.LocalC[7] -= true
            del eventPlayer.Effactual[eventPlayer.LocalC[7]]
            Effect_[eventPlayer.Checkpoint] = eventPlayer.Effactual
        if not eventPlayer.CPData[true]:
            eventPlayer.MovingElement = CPposition[eventPlayer.Checkpoint]
        else:
            EffectSelect()
        eventPlayer.EditingTool = 10
        CPchange()
        #Confirm
    else:
        While1()
        if Prime[eventPlayer.Checkpoint] % 11 and eventPlayer.WSAutoEL and eventPlayer.EditState == -2 and Prime[eventPlayer.Checkpoint] % 17:
            Prime[eventPlayer.Checkpoint] *= 17
        #Confirming Initial 1st Portal & starting 2nd
        if eventPlayer.EditState == -5 and eventPlayer.Effactual[eventPlayer.LocalC[7]][2] != 5:
            #2D
            eventPlayer.Effactual[eventPlayer.LocalC[7]] = [eventPlayer.MovingElement, 1.1, 5, eventPlayer.EditTime]
            eventPlayer.LocalC[7] += true
            eventPlayer.EditState = -6
            EffectPos()
            #Confirming Initial Ziplines Starting Point & Starting End
        elif eventPlayer.EditState == 8 and eventPlayer.Effactual[eventPlayer.LocalC[7]][2] != 8:
            #2D
            eventPlayer.Effactual[eventPlayer.LocalC[7]] = [eventPlayer.MovingElement + (vect(0.001 if not eventPlayer.MovingElement.x else false, false, false)), false, 8, false]
            eventPlayer.LocalC[7] += true
            eventPlayer.EditState = 9
            EffectPos()
            eventPlayer.EditRadius = false
            eventPlayer.EditTime = false
            #Confirm Edit
        else:
            eventPlayer.EditingTool = 10
            #2D
            eventPlayer.Effactual[eventPlayer.LocalC[7]] = [eventPlayer.MovingElement, 1.1 if any([player == -5 or player == -6 for player in eventPlayer.EditState]) else true if any([player == 8 or player == 9 for player in eventPlayer.EditState]) else eventPlayer.EditRadius * (true if eventPlayer.EditType else -1), abs(eventPlayer.EditState), eventPlayer.EditTime]
        #3D EZ
        Effect_[eventPlayer.Checkpoint] = eventPlayer.Effactual
        CPchange()


rule "Effect Quick Time Change in Effect Menu":
    @Event eachPlayer
    @Condition eventPlayer.EditingTool == 10
    @Condition eventPlayer.MovingElement != CPposition[eventPlayer.Checkpoint]
    @Condition eventPlayer.Effstate[eventPlayer.LocalC[7]] == false
    @Condition eventPlayer.Efftim[eventPlayer.LocalC[7]] != eventPlayer.EditTime
    
    wait(0.048, Wait.ABORT_WHEN_FALSE)
    eventPlayer.Efftim[eventPlayer.LocalC[7]] = eventPlayer.EditTime
    #2D
    eventPlayer.Effactual[eventPlayer.LocalC[7]] = [eventPlayer.MovingElement, eventPlayer.EditRadius * (true if eventPlayer.EditType else -1), abs(eventPlayer.EditState), eventPlayer.EditTime]
    #3D
    Effect_[eventPlayer.Checkpoint] = eventPlayer.Effactual


rule "Effect Background Preload":
    wait(7)
    #Spheres
    createEffect(localPlayer if localPlayer.EditingTool == 9 and localPlayer.EditType and abs(localPlayer.EditState) < 4 else [], Effect.SPHERE, (Color.RED if localPlayer.EditState == 1 else Color.BLACK if localPlayer.EditState == -2 else Color.LIME_GREEN) if localPlayer.EditState else Color.SKY_BLUE if localPlayer.EditTime <= false else Color.PURPLE, localPlayer.MovingElement, localPlayer.EditRadius, EffectReeval.VISIBILITY_POSITION_RADIUS_AND_COLOR)
    #Pillars
    createEffect(localPlayer if localPlayer.EditingTool == 9 and not localPlayer.EditType and abs(localPlayer.EditState) < 4 else [], Effect.LIGHT_SHAFT, (Color.RED if localPlayer.EditState == 1 else Color.WHITE if localPlayer.EditState == -2 else Color.LIME_GREEN) if localPlayer.EditState else Color.SKY_BLUE if localPlayer.EditTime <= false else Color.PURPLE, localPlayer.MovingElement, localPlayer.EditRadius, EffectReeval.VISIBILITY_POSITION_RADIUS_AND_COLOR)
    #Checkpoint
    createEffect(localPlayer if localPlayer.EditingTool == 9 and localPlayer.EditState == -4 else [], Effect.RING, Color.ORANGE, localPlayer.MovingElement, localPlayer.EditRadius, EffectReeval.VISIBILITY_POSITION_RADIUS_AND_COLOR)
    createEffect(localPlayer if localPlayer.EditingTool == 9 and localPlayer.EditState == -4 else [], Effect.SPHERE, Color.RED, localPlayer.MovingElement, 0.2, EffectReeval.VISIBILITY_POSITION_AND_RADIUS)
    #Portal
    createEffect(localPlayer if localPlayer.EditingTool == 9 and (any([player == -5 or player == -6 for player in localPlayer.EditState])) else [], Effect.GOOD_AURA, Color.ORANGE if localPlayer.EditState == -5 else Color.SKY_BLUE, localPlayer.MovingElement, 1.6, EffectReeval.VISIBILITY_POSITION_RADIUS_AND_COLOR)
    #Black Hole
    createEffect(localPlayer if localPlayer.EditingTool == 9 and localPlayer.EditState == 7 else [], Effect.ORB, Color.BLACK, localPlayer.MovingElement, localPlayer.EditRadius, EffectReeval.VISIBILITY_POSITION_RADIUS_AND_COLOR)
    createEffect(localPlayer if localPlayer.EditingTool == 9 and localPlayer.EditState == 7 else [], Effect.SPHERE, Color.BLACK, localPlayer.MovingElement, localPlayer.EditRadius, EffectReeval.VISIBILITY_POSITION_RADIUS_AND_COLOR)
    #Zipline
    createBeam(localPlayer if localPlayer.EditingTool == 9 and (any([player == 8 or player == 9 for player in localPlayer.EditState])) else [], Beam.BAD, localPlayer.MovingElement if localPlayer.EditState == 8 else (localPlayer.Effactual[localPlayer.LocalC[7] - true])[0], localPlayer.MovingElement if localPlayer.EditState == 9 else (localPlayer.Effactual[localPlayer.LocalC[7] + true])[0] if (localPlayer.Effactual[localPlayer.LocalC[7] + true])[2] == 9 else localPlayer.MovingElement + vect(false, 0.1, false), Color.BLUE, EffectReeval.VISIBILITY_POSITION_AND_RADIUS)


def EffectInitiate():
    @Name "Effect Initiate sub"
    
    eventPlayer.Local_Pos = eventPlayer.Local_Pos.slice(false, eventPlayer.CPcount)
    eventPlayer.Local_Rad = eventPlayer.Local_Rad.slice(false, eventPlayer.CPcount)
    eventPlayer.Local_Index = false
    eventPlayer.EfflockC = []
    #3D to 2D
    eventPlayer.Effactual = Effect_[eventPlayer.Checkpoint]
    eventPlayer.Effpos = [player[0] for player in eventPlayer.Effactual]
    eventPlayer.Effrad = [player[true] for player in eventPlayer.Effactual]
    eventPlayer.Effstate = [player[2] for player in eventPlayer.Effactual]
    eventPlayer.Efftim = [player.last() for player in eventPlayer.Effactual]
    eventPlayer.Efftype = [player >= false for player in eventPlayer.Effrad]
    eventPlayer.Effrad = [abs(player) for player in eventPlayer.Effrad]
    eventPlayer.EffradD = [player + 0.45 for player in eventPlayer.Effrad]
    eventPlayer.Effabi = [[true if player % 2 else false, true if player % 3 else false, true if player % 5 else false] for player in eventPlayer.Efftim]
    wait()
    for eventPlayer.Effinitiate in range(false, len(eventPlayer.Effpos), true):
        wait()
        EffectCreate()
        if eventPlayer.EditingTool != 10:
            if eventPlayer.Effstate[eventPlayer.Effinitiate] == 4:
                eventPlayer.Local_Pos.append(eventPlayer.Effpos[eventPlayer.Effinitiate])
                eventPlayer.Local_Rad[len(eventPlayer.Local_Pos) - true] = eventPlayer.Effrad[eventPlayer.Effinitiate]
                eventPlayer.Local_Index[len(eventPlayer.Local_Pos) - true] = eventPlayer.Effinitiate
                eventPlayer.Effpos[eventPlayer.Effinitiate] = false
            if any([i == 8 or i == 9 for i in eventPlayer.Effstate[eventPlayer.Effinitiate]]):
                if eventPlayer.Effstate[eventPlayer.Effinitiate] == 8:
                    eventPlayer.Effrad[eventPlayer.Effinitiate] = eventPlayer.Effpos[eventPlayer.Effinitiate]
                else:
                    eventPlayer.Efftype[eventPlayer.Effinitiate - true] = eventPlayer.Effpos[eventPlayer.Effinitiate]
                eventPlayer.Effpos[eventPlayer.Effinitiate] = false
            if any(eventPlayer.LockE) and (any([not i or i == 2 or (false if Prime[eventPlayer.Checkpoint] % 29 else i == 4) for i in eventPlayer.Effstate[eventPlayer.Effinitiate]])):
                eventPlayer.EfflockC[eventPlayer.Effinitiate] = true
            elif false in eventPlayer.Effstate:
                eventPlayer.EfflockC[eventPlayer.Effinitiate] = 0


def EffectCreate():
    @Name "Effect Generate sub"
    
    if eventPlayer.Efftype[eventPlayer.Effinitiate]:
        if eventPlayer.Effstate[eventPlayer.Effinitiate] < 4:
            if any([i == 1 or i == 3 for i in eventPlayer.Effstate[eventPlayer.Effinitiate]]):
                createEffect(eventPlayer, Effect.SPHERE, Color.RED if eventPlayer.Effstate[eventPlayer.Effinitiate] == 1 else Color.LIME_GREEN, eventPlayer.Effpos[eventPlayer.Effinitiate], eventPlayer.Effrad[eventPlayer.Effinitiate], EffectReeval.NONE)
            else:
                createEffect([] if eventPlayer.Effvisible[evalOnce(eventPlayer.Effinitiate)] else eventPlayer, Effect.SPHERE, Color.WHITE if eventPlayer.Effstate[eventPlayer.Effinitiate] else Color.PURPLE if eventPlayer.Efftim[eventPlayer.Effinitiate] > false else Color.SKY_BLUE, eventPlayer.Effpos[eventPlayer.Effinitiate], eventPlayer.Effrad[eventPlayer.Effinitiate], EffectReeval.VISIBILITY)
        elif eventPlayer.Effstate[eventPlayer.Effinitiate] == 4:
            createEffect(eventPlayer, Effect.RING, Color.RED if eventPlayer.Effvisible[evalOnce(eventPlayer.Effinitiate)] else Color.ORANGE, eventPlayer.Effpos[eventPlayer.Effinitiate], eventPlayer.Effrad[eventPlayer.Effinitiate], EffectReeval.COLOR)
        elif any([i == 5 or i == 6 for i in eventPlayer.Effstate[eventPlayer.Effinitiate]]):
            createEffect(eventPlayer, Effect.GOOD_AURA, Color.ORANGE if eventPlayer.Effstate[eventPlayer.Effinitiate] == 5 else Color.SKY_BLUE, eventPlayer.Effpos[eventPlayer.Effinitiate], 1.6, EffectReeval.NONE)
        elif eventPlayer.Effstate[eventPlayer.Effinitiate] == 7:
            createEffect(eventPlayer, Effect.ORB, Color.BLACK, eventPlayer.Effpos[eventPlayer.Effinitiate], eventPlayer.Effrad[eventPlayer.Effinitiate], EffectReeval.NONE)
        else:
            if eventPlayer.Effstate[eventPlayer.Effinitiate + true] != 9:
                return
            createBeam(eventPlayer, Beam.BAD, eventPlayer.Effpos[eventPlayer.Effinitiate], eventPlayer.Effpos[eventPlayer.Effinitiate + true], Color.BLUE, EffectReeval.NONE)
    else:
        if any([i == 1 or i == 3 for i in eventPlayer.Effstate[eventPlayer.Effinitiate]]):
            createEffect(eventPlayer, Effect.LIGHT_SHAFT, Color.RED if eventPlayer.Effstate[eventPlayer.Effinitiate] == 1 else Color.LIME_GREEN, eventPlayer.Effpos[eventPlayer.Effinitiate], eventPlayer.Effrad[eventPlayer.Effinitiate], EffectReeval.NONE)
        else:
            createEffect([] if eventPlayer.Effvisible[evalOnce(eventPlayer.Effinitiate)] else eventPlayer, Effect.LIGHT_SHAFT, Color.WHITE if eventPlayer.Effstate[eventPlayer.Effinitiate] else Color.PURPLE if eventPlayer.Efftim[eventPlayer.Effinitiate] > false else Color.SKY_BLUE, eventPlayer.Effpos[eventPlayer.Effinitiate], eventPlayer.Effrad[eventPlayer.Effinitiate], EffectReeval.VISIBILITY)
    eventPlayer.Elements[false].append(getLastCreatedEntity())
    #Not Death Effect or regular Permeation effect
    if any([(eventPlayer.Efftim[eventPlayer.Effinitiate] != 11 if i == 3 else true) if i != 1 and i != 7 and i != 8 and i != 9 else false for i in eventPlayer.Effstate[eventPlayer.Effinitiate]]):
        if eventPlayer.Effstate[eventPlayer.Effinitiate]:
            createInWorldText([] if eventPlayer.Effvisible[evalOnce(eventPlayer.Effinitiate)] else eventPlayer, "{2}{0}{2}{1}".format(("{0}{1}{2}".format(abilityIconString(eventPlayer.getCurrentHero(), Button.SECONDARY_FIRE) if eventPlayer.Effabi[eventPlayer.Effinitiate][0] else "  ", abilityIconString(eventPlayer.getCurrentHero(), Button.ABILITY_1) if eventPlayer.Effabi[eventPlayer.Effinitiate][true] else "  ", abilityIconString(eventPlayer.getCurrentHero(), Button.ABILITY_2) if eventPlayer.Effabi[eventPlayer.Effinitiate].last() else "  ")) if eventPlayer.Efftim[eventPlayer.Effinitiate] % 11 else "   NC   ", "\n   {0}   ".format(iconString(Icon.FLAG)) if eventPlayer.Effstate[eventPlayer.Effinitiate] == 4 else "", "*" if eventPlayer.Efftim[eventPlayer.Effinitiate] < false else ""), eventPlayer.Effpos[eventPlayer.Effinitiate] + Vector.UP * 1.75, 1.3, Clip.NONE, WorldTextReeval.VISIBILITY, Color.WHITE, SpecVisibility.DEFAULT)
        else:
            createInWorldText([] if eventPlayer.Effvisible[evalOnce(eventPlayer.Effinitiate)] else eventPlayer, "" if eventPlayer.Efftim[evalOnce(eventPlayer.Effinitiate)] == false else "{0}{1}".format("" if eventPlayer.Efftim[evalOnce(eventPlayer.Effinitiate)] < false else "+", eventPlayer.Efftim[evalOnce(eventPlayer.Effinitiate)] + 0.001), evalOnce(eventPlayer.Effpos[eventPlayer.Effinitiate]) if evalOnce(eventPlayer.Efftype[eventPlayer.Effinitiate]) else evalOnce(eventPlayer.Effpos[eventPlayer.Effinitiate] * (Vector.LEFT + Vector.FORWARD)) + updateEveryTick(vect(false, max(eventPlayer.getEyePosition().y, evalOnce(eventPlayer.Effpos[eventPlayer.Effinitiate].y)), false)), 2, Clip.NONE, WorldTextReeval.VISIBILITY_POSITION_AND_STRING, Color.AQUA if eventPlayer.Efftim[eventPlayer.Effinitiate] < false else Color.RED, SpecVisibility.DEFAULT)
        eventPlayer.Elements[2].append(getLastCreatedText())
    wait()


rule "Effect Detect":
    @Event eachPlayer
    @Condition (eventPlayer.CreatorState < 2 or (any([player == -4 or player == -6 for player in eventPlayer.EditingTool]))) == true
    @Condition eventPlayer.CPData[true] == true
    @Condition (any([player and not eventPlayer.Effvisible[i] and (((distance(eventPlayer.getPosition() + vect(false, 0.45, false), player if eventPlayer.Efftype[i] else player * vect(true, false, true) + (vect(false, max(eventPlayer.getPosition().y + 0.45, player.y), false)))) < eventPlayer.EffradD[i]) or distance(eventPlayer.getPosition() + vect(false, 1.25, false), player) < eventPlayer.EffradD[i]) for player, i in eventPlayer.Effpos])) == true
    @Condition eventPlayer.Effdetect == false
    @Condition eventPlayer.Shift == false
    
    eventPlayer.Effdetect = (eventPlayer.Effpos.index((sorted([player for player in eventPlayer.Effpos if player and not eventPlayer.Effvisible[eventPlayer.Effpos.index(player)]], lambda i: (distance(evalOnce(eventPlayer.getPosition() + vect(false, 0.85, false)), i * vect(true, false, true) + (vect(false, max(-10000 if eventPlayer.Efftype[eventPlayer.Effpos.index(i)] else evalOnce(eventPlayer.getPosition().y + 0.85), i.y), false)))) / eventPlayer.EffradD[eventPlayer.Effpos.index(i)]))[0])) + true
    eventPlayer.Effactual = eventPlayer.Effdetect - true
    goto loc+eventPlayer.Effstate[eventPlayer.Effactual] * 2 + true
    while false:
        Time_Ability_Effect()
        break
        Death_Effect()
        break
        Time_Ability_Effect()
        break
        Permeation_Effect()
        break
        #Checkpoint
        pass #__end__()
        pass #__end__()
        #Portal 1 - no need for duplicates
        pass #__end__()
        pass #__end__()
        Portal_Effect()
        break
        Black_Hole_Effect()
        break
    eventPlayer.Effdetect = false
    wait()
    __loopIfConditionIsTrue__()


def Time_Ability_Effect():
    @Name "Time / Ability Effect sub"
    
    playEffect(eventPlayer, DynamicEffect.RING_EXPLOSION_SOUND, Color.WHITE, eventPlayer, 69)
    eventPlayer.Effvisible[eventPlayer.Effactual] = true
    if eventPlayer.Effstate[eventPlayer.Effactual]:
        async(EffectAbilities, AsyncBehavior.RESTART)
    else:
        eventPlayer.Effvisible[len(eventPlayer.Efftype)] += eventPlayer.Efftim[eventPlayer.Effactual]
    EffectLock()


def Death_Effect():
    @Name "Death Effect"
    
    if eventPlayer.EditingTool == -4:
        #Prepare Cancel Primary action
        if eventPlayer.isUsingAbility2() or eventPlayer.Grace and not eventPlayer.isHoldingButton(Button.SECONDARY_FIRE):
            eventPlayer.ForceAbility = 2 if eventPlayer.Grace else true
        Exit()
        CPfail()
        destroyEffect(eventPlayer.TempRing)
        wait(0.048)
        eventPlayer.PioneerGenerateCP = false
        eventPlayer.AbilityCount = Vector.LEFT * Vector.UP
    else:
        CPfail()


def Permeation_Effect():
    @Name "Permeation Effect sub"
    
    __skipIf__(eventPlayer.Efftim[eventPlayer.Effactual] == 11, true)
    async(EffectAbilities, AsyncBehavior.RESTART)
    playEffect(eventPlayer, DynamicEffect.MOIRA_FADE_DISAPPEAR_SOUND, null, eventPlayer, 80)
    eventPlayer.disableEnvironmentCollision(true)
    eventPlayer.Effdetect = [eventPlayer.Effpos[eventPlayer.Effactual] * vect(true, false, true), eventPlayer.Effpos[eventPlayer.Effactual].y, eventPlayer.Efftype[eventPlayer.Effactual], eventPlayer.EffradD[eventPlayer.Effactual] + 0.5]
    waitUntil((distance(eventPlayer.getPosition() + vect(false, 0.85, false), eventPlayer.Effdetect[0] + (vect(false, max(-10000 if eventPlayer.Effdetect[2] else eventPlayer.getPosition().y + 0.85, eventPlayer.Effdetect[true]), false)))) > eventPlayer.Effdetect.last(), 9999)
    eventPlayer.enableEnvironmentCollision()
    playEffect(eventPlayer, DynamicEffect.MOIRA_FADE_REAPPEAR_SOUND, null, eventPlayer, 80)


def Portal_Effect():
    @Name "Portal Effect sub"
    
    eventPlayer.Effinitiate = eventPlayer.Effactual + (true if eventPlayer.Effstate[eventPlayer.Effactual] == 5 else -1)
    playEffect(eventPlayer, DynamicEffect.TRACER_RECALL_DISAPPEAR_SOUND, Color.ORANGE, eventPlayer, 100)
    eventPlayer.teleport(eventPlayer.Effpos[eventPlayer.Effinitiate])
    if eventPlayer.isUsingAbility2():
        #Disable to eliminate Slam Bounce
        eventPlayer.setMoveSpeed(false)
        eventPlayer.cancelPrimaryAction()
        eventPlayer.setMoveSpeed(100)
    __skipIf__(eventPlayer.Efftim[eventPlayer.Effactual] == 11, true)
    async(EffectAbilities, AsyncBehavior.RESTART)
    eventPlayer.Effdetect = [eventPlayer.Effpos[eventPlayer.Effinitiate], eventPlayer.EffradD[eventPlayer.Effinitiate] + 0.7]
    wait(0.25)
    waitUntil(distance(eventPlayer.getPosition() + vect(false, 0.85, false), eventPlayer.Effdetect[0]) > eventPlayer.Effdetect.last(), 9999)


def EffectAbilities():
    @Name "Effect Ability Enable / Disable sub"
    
    eventPlayer.Shift = true
    if eventPlayer.isUsingAbility2():
        #Disable to eliminate Slam Bounce
        eventPlayer.setMoveSpeed(false)
        #Ablock Slam Cancel
        if eventPlayer.Ablock == true and eventPlayer.Effabi[eventPlayer.Effactual].last():
            eventPlayer.cancelPrimaryAction()
    eventPlayer.setSecondaryFireEnabled(eventPlayer.Effabi[eventPlayer.Effactual][0])
    eventPlayer.setAbility1Enabled(eventPlayer.Effabi[eventPlayer.Effactual][true])
    eventPlayer.setAbility2Enabled(eventPlayer.Effabi[eventPlayer.Effactual].last())
    eventPlayer.setMoveSpeed(100)
    #CD reset
    if eventPlayer.Efftim[eventPlayer.Effactual] < false:
        if eventPlayer.isUsingAbility1():
            waitUntil(eventPlayer.getAbilityCooldown(Button.ABILITY_1) != false, true)
        elif eventPlayer.Grace:
            waitUntil(eventPlayer.getAbilityCooldown(Button.SECONDARY_FIRE) != false, 2)
        else:
            eventPlayer.cancelPrimaryAction()
        AbilityCDreset()
    #Ablock Slam CD Reset
    if eventPlayer.Ablock == 2 and eventPlayer.getAbilityCooldown(Button.ABILITY_2):
        eventPlayer.setAbilityCooldown(Button.ABILITY_2, 0.6)
    #Needed for Ablock to function perfectly
    wait()
    eventPlayer.Shift = false


def CheckpointEffect():
    @Name "Effect Checkpoint sub"
    
    eventPlayer.Effdetect = true
    eventPlayer.Effactual = eventPlayer.Local_Index[eventPlayer.CPData[2]]
    eventPlayer.Shift = true
    eventPlayer.disallowButton(Button.ABILITY_2)
    if eventPlayer.isUsingAbility2() and not eventPlayer.isHoldingButton(Button.ABILITY_1):
        eventPlayer.cancelPrimaryAction()
    playEffect(eventPlayer, DynamicEffect.BUFF_EXPLOSION_SOUND, Color.WHITE, eventPlayer, 69)
    eventPlayer.Effvisible[eventPlayer.Effactual] = true
    eventPlayer.CPData[3] = eventPlayer.Local_Pos[eventPlayer.CPData[2]]
    eventPlayer.CPData[4] = eventPlayer.Local_Rad[eventPlayer.CPData[2]]
    __skipIf__(eventPlayer.Efftim[eventPlayer.Effactual] < false, true)
    teleport()
    if eventPlayer.Efftim[eventPlayer.Effactual] % 11:
        eventPlayer.setSecondaryFireEnabled(eventPlayer.Effabi[eventPlayer.Effactual][0])
        eventPlayer.setAbility1Enabled(eventPlayer.Effabi[eventPlayer.Effactual][true])
        eventPlayer.setAbility2Enabled(eventPlayer.Effabi[eventPlayer.Effactual].last())
    CPclearend()
    EffectLock()
    waitUntil(distance(eventPlayer.getPosition(), eventPlayer.CPData[3]) > eventPlayer.CPData[4], 9999)
    if eventPlayer.CPData[true] == 1:
        eventPlayer.Effvisible[eventPlayer.Effactual] = 0
    eventPlayer.CPData[3] = eventPlayer.CPData[7]
    eventPlayer.CPData[4] = eventPlayer.CPData[8]
    eventPlayer.Effdetect = false


def Black_Hole_Effect():
    @Name "Black Hole Effect sub"
    
    eventPlayer.setMoveSpeed(false)
    eventPlayer.setGravity(false)
    __skipIf__(not eventPlayer.isUsingAbility2(), true)
    eventPlayer.cancelPrimaryAction()
    eventPlayer.Effdetect = [eventPlayer.Effpos[eventPlayer.Effactual], eventPlayer.EffradD[eventPlayer.Effactual] + 0.5]
    eventPlayer.setMoveSpeed(100)
    while distance(eventPlayer.getPosition() + vect(false, 0.85, false), eventPlayer.Effdetect[0]) < eventPlayer.Effdetect.last():
        eventPlayer.applyImpulse(directionTowards(eventPlayer.getPosition() + vect(false, 0.85, false), eventPlayer.Effdetect[0]), 0.5 + ((5 * (true - ((distance(normalize(eventPlayer.getVelocity()), directionTowards(eventPlayer.getPosition() + vect(false, 0.85, false), eventPlayer.Effdetect[0]))) / 2))) * (max(0.4, true - ((distance(eventPlayer.getPosition() + vect(false, 0.85, false), eventPlayer.Effdetect[0])) / eventPlayer.Effdetect.last())))), Relativity.TO_WORLD, Impulse.INCORPORATE_CONTRARY_MOTION)
        playEffect(eventPlayer, DynamicEffect.ZARYA_PARTICLE_CANNON_EXPLOSION_SOUND, Color.WHITE, eventPlayer.Effdetect[0], 10)
        wait(0.048)
    eventPlayer.setGravity(100)


rule "Effect Zipline":
    @Event eachPlayer
    @Condition eventPlayer.isHoldingButton(Button.JUMP) == true
    @Condition eventPlayer.CreatorState != 3
    @Condition eventPlayer.Effdetect == false
    @Condition any([player.x for player in eventPlayer.Effrad]) == true
    @Condition any([distance(eventPlayer.getEyePosition(), i + directionTowards(i, eventPlayer.Efftype[eventPlayer.Effrad.index(i)]) * max(false, min(dotProduct(directionTowards(i, eventPlayer.Efftype[eventPlayer.Effrad.index(i)]), vectorTowards(i, eventPlayer.getEyePosition())), distance(i, eventPlayer.Efftype[eventPlayer.Effrad.index(i)])))) < 1.1 for i in [player for player in eventPlayer.Effrad if player.x]]) == true
    
    eventPlayer.cancelPrimaryAction()
    eventPlayer.Effactual = eventPlayer.Effrad.index((sorted([player for player in eventPlayer.Effrad if player.x], lambda i: distance(eventPlayer.getEyePosition(), i + directionTowards(i, eventPlayer.Efftype[eventPlayer.Effrad.index(i)]) * max(false, min(dotProduct(directionTowards(i, eventPlayer.Efftype[eventPlayer.Effrad.index(i)]), vectorTowards(i, eventPlayer.getEyePosition())), distance(i, eventPlayer.Efftype[eventPlayer.Effrad.index(i)]))))))[0])
    eventPlayer.Effdetect = [eventPlayer.Effrad[eventPlayer.Effactual], eventPlayer.Efftype[eventPlayer.Effactual]]
    eventPlayer.Effactual = eventPlayer.Effdetect[0] + ((directionTowards(eventPlayer.Effdetect[0], eventPlayer.Effdetect.last() + Vector.DOWN + Vector.DOWN)) * max(false, min(dotProduct(directionTowards(eventPlayer.Effdetect[0], eventPlayer.Effdetect.last()), vectorTowards(eventPlayer.Effdetect[0], eventPlayer.getEyePosition())), distance(eventPlayer.Effdetect[0], eventPlayer.Effdetect.last())))) + Vector.DOWN + Vector.DOWN
    eventPlayer.Effdetect = eventPlayer.Effdetect.last() + directionTowards(eventPlayer.Effdetect[0], eventPlayer.Effdetect.last()) + Vector.DOWN + Vector.DOWN
    chase(eventPlayer.Effactual, evalOnce(eventPlayer.Effdetect), rate=5 + eventPlayer.Zipline, ChaseReeval.DESTINATION_AND_RATE)
    eventPlayer.Zipline = 4
    chase(eventPlayer.Zipline, 15, rate=7, ChaseReeval.NONE)
    eventPlayer.disableEnvironmentCollision(true)
    eventPlayer.startForcingPosition(eventPlayer.Effactual, true)
    waitUntil(eventPlayer.Shift or distance(eventPlayer.Effactual, evalOnce(eventPlayer.Effdetect)) < 1 or eventPlayer.Grace and not eventPlayer.isFiringSecondaryFire() or not eventPlayer.isHoldingButton(Button.JUMP) or eventPlayer.isUsingAbility1() or eventPlayer.isUsingAbility2() or eventPlayer.isHoldingButton(Button.CROUCH), 99999)
    waitUntil(eventPlayer.Shift or distance(eventPlayer.Effactual, evalOnce(eventPlayer.Effdetect)) < 1 or eventPlayer.Grace and not eventPlayer.isFiringSecondaryFire() or eventPlayer.isHoldingButton(Button.JUMP) or eventPlayer.isUsingAbility1() or eventPlayer.isUsingAbility2() or eventPlayer.isHoldingButton(Button.CROUCH), 99999)
    eventPlayer.enableEnvironmentCollision()
    eventPlayer.stopForcingPosition()
    stopChasingVariable(eventPlayer.Effactual)
    stopChasingVariable(eventPlayer.Zipline)
    eventPlayer.Effdetect = false
    if eventPlayer.Shift:
        return
    if not eventPlayer.isUsingAbility1() and not eventPlayer.isUsingAbility2() and (eventPlayer.isHoldingButton(Button.JUMP) or eventPlayer.isHoldingButton(Button.CROUCH)):
        if eventPlayer.isHoldingButton(Button.JUMP) and eventPlayer.getVelocity().y > false or eventPlayer.isHoldingButton(Button.CROUCH) and eventPlayer.getVelocity().y < false:
            eventPlayer.applyImpulse(Vector.UP if eventPlayer.isHoldingButton(Button.JUMP) else Vector.DOWN, 8 if eventPlayer.isHoldingButton(Button.JUMP) else 2, Relativity.TO_WORLD, Impulse.INCORPORATE_CONTRARY_MOTION)
        else:
            eventPlayer.applyImpulse(Vector.UP if eventPlayer.isHoldingButton(Button.JUMP) else Vector.DOWN, 8 if eventPlayer.isHoldingButton(Button.JUMP) else 2, Relativity.TO_WORLD, Impulse.CANCEL_CONTRARY_MOTION_XYZ)
    wait(0.7)


def EffectLock():
    @Name "Effect Lock Check sub"
    
    if true in eventPlayer.LockE:
        if eventPlayer.Effvisible.slice(false, len(eventPlayer.Efftype)) == eventPlayer.EfflockC:
            eventPlayer.LockE = false



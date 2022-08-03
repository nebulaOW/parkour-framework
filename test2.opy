#Global variables

globalvar CPposition 0
globalvar Radius_VA_GoBackCP 1
globalvar Connections 2
globalvar Mission 3
globalvar Prime 4
globalvar AbilityCount 5
globalvar HiddenCP_TpRad_TT 6
globalvar TP 7
globalvar Effect_ 8
globalvar X1 9
globalvar Y1 10
globalvar Z1 11
globalvar X2 12
globalvar Y2 13
globalvar Z2 15


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
playervar GenRings 13
playervar Detector1 14
playervar Detector2 15
playervar Detector3 16
playervar RayCast 17
playervar Zipline 18
playervar Mission 20
playervar MissionD 21
playervar MissionTime 22
playervar LockM 23
playervar MissionC 24
playervar HorizontalAngle 25
playervar M360 26
playervar DetectorBounce 27
playervar MissionDisplay 28
playervar MissionHUD 29
playervar MissionTimeChange 30
playervar MissionSelect 31
playervar MissionSet 32
playervar PrimeOffset 33
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
playervar Start 60
playervar TTtimer 61
playervar Ablock 62
playervar AbilityCount 63
playervar HoldTime 70
playervar PioneerGenerateCP 71
playervar TempVA 72
playervar TempCP 73
playervar MovingElement 74
playervar MovingElementConfirm 75
playervar AddRemove 76
playervar AddRemove2 77
playervar SaveCP 78
playervar Remove 79
playervar AscendingSlice 80
playervar Grace 81
playervar ForceAbility 82
playervar Diverge 83
playervar Diverge2 84
playervar RunTime 85
playervar RunState 86
playervar CPtimer 87
playervar LastCPtime 88
playervar Level 89
playervar LevelCounter 90
playervar PB 91
playervar BestTimes 92
playervar TimeChangeDisplay 93
playervar Pressing_A_D 94
playervar Pressing_W_S 95
playervar HeightChase 96
playervar TempRing 97
playervar PrimeNumbers 98
playervar Text 99
playervar MissionText 100
playervar MissionReset 101
playervar MissionCompletion 102
playervar ShiftSpeed 103
playervar ShiftSuperSpeed 104
playervar WSElementLimiter 105
playervar ElementLimiter 106
playervar ConnectionCount 107
playervar WSMultiCreator 108
playervar WSCPcreateskip 109
playervar Invis 110
playervar Vector000 111
playervar WSSkipGoBack 112
playervar Jump2win 113
playervar AntiCrash 114
playervar WSAutoEL 115
playervar CtrlZtoggle 119
playervar CtrlZ 120
playervar CtrlZ2 121
playervar dontcomein 122
playervar Animated 123
playervar Debug 124
playervar ZU 125
playervar LUL 126
playervar W 127


#Subroutine names

subroutine MultiPurposeCamera 0
subroutine CreatorRing 1
subroutine CreateRings 2
subroutine RPFix 3
subroutine CPselect 4
subroutine outCPselect 5
subroutine CreateSlice 6
subroutine FPedit 7
subroutine TempCP 8
subroutine MoveTempCP 9
subroutine CtrlZ 10
subroutine Correct_CP_Data 11
subroutine NextCP 12
subroutine PrevCP 13
subroutine RemoveCP 14
subroutine CreateCP 15
subroutine CPclearend 16
subroutine AJCenable 17
subroutine AJCdisable 18
subroutine EffectCreate 19
subroutine AscendingSlice 20
subroutine DescendingSlice 21
subroutine AppendCP 22
subroutine AppendAscSlice 23
subroutine EffectPos 24
subroutine ToPioneer 25
subroutine TimeTrial 26
subroutine EffectInitiate 27
subroutine While1 28
subroutine While2 29
subroutine CreateEffect 30
subroutine DestroyElements 31
subroutine GenerateElements 32
subroutine DisallowMovement 33
subroutine EffectAbilities 34
subroutine TTclear 35
subroutine CPfail 36
subroutine CPclear 37
subroutine AbilityCDreset 38
subroutine Z 39
subroutine Exit 40
subroutine MoveCPconfirm 41
subroutine teleport 42
subroutine AbilityEnableDisable 43
subroutine LevelRingsAndIcons 44
subroutine LevelCreate 45
subroutine SetDiverge 46
subroutine GenerateTempCP 47
subroutine EditGenTempCP 48
subroutine DestroyTimes 49
subroutine ConnectionCopy 50
subroutine EffectTimeChange 51
subroutine AppendPosRad 52
subroutine TimeTrialPioneer 53
subroutine TimeTrialOpt 54
subroutine CPchange 55
subroutine CheckpointEffect 56
subroutine SetFacing 57
subroutine EffectLock 58
subroutine MissionPlayerHUD 59
subroutine DisallowButtons 60
subroutine AllowButtons 61
subroutine MissionSet 62
subroutine MissionReset 63
subroutine Time_Ability_Effect 64
subroutine EffectSelect 65
subroutine MissionAppend 66
subroutine MissionTimeChange 67
subroutine RPMissions 68
subroutine RPDiag 69
subroutine Permeation_Effect 70
subroutine Portal_Effect 71
subroutine Death_Effect 72
subroutine Black_Hole_Effect 73


#Activated extensions

#!extension explosionSounds


rule "README.txt":
    @Event eachPlayer
    #TheCyberon's comprehensive Basics & Multilevel Creation Guide: 
    #discord.gg/doomfistparkour 
    #Channel: #Framework-Tutorials
    #@Condition Vector.UP == Vector.DOWN
    #Bad Guide: 
    #Step 1. Select Map You want to Create on.
    #2. Start the Game and get creative.
    #3. Open Inspector. You can get to it by pressing ESC and it will be the 2nd Option on the Right.
    #4. Select "Global" on the bottom right box if it's not already.
    #@Condition false == true
    #5. On the bottom there are five boxes. Click the box with "(X)" in it.
    #6. Your map is saved to your clipboard. You can paste them on a clean Notepad or optionally you can go to Rule "Paste 1" and click on the orange box with "+" in it.
    #@Condition true == false
    #7. If you saved your Map Data on a Notepad you can go to the Play Template Workshop code [KNEAT] made by me and paste the Map Data in "MAP DATA". If you pasted everything in "Paste 1", you can save the Preset and you can Edit your Map later.
    #@Condition "Your mum is" == "BIG"
    #8. In Play Template Workshop [KNEAT] you can Edit Icons, Colors, Level Names, Effects, etc. They're labeled with "CUSTOMIZE".
    #9. You're done! Make lobby for everyone and Have Fun!
    #@Condition eventPlayer.LUL == 69
    
    #Have a map you've made in another Framework and want to try it here? I made a Converter for this purpose.
    #CODE: 2R00R
    #__end__()
    #eventPlayer.W = 69
    #wait(1.337)
    #eventPlayer.LUL = eventPlayer.W * 0.42
    #wait(1.337)
    #eventPlayer.ZU = eventPlayer.LUL * eventPlayer.W


rule "README FOR CODERS.txt":
    #Prime Number Switches explained:
    #
    #2: Rocket Punch Disabled
    #3: Uppercut Disabled
    #5: Seismic Slam Disabled
    #
    #7: Centerless CP upon completion
    #
    #11: Multilevel Level Select
    #13: First CP of a Level in a Multilevel
    #@Condition Vector.DOWN == Vector.UP
    #17: Effect Lock Connection 1
    #19: Effect Lock Connection 2
    #23: Effect Lock Connection 3
    #
    #29: Effect CPs Required
    #@Condition Vector.LEFT == Vector.RIGHT
    #Editing Tool values explained:
    #    
    #-6: Time Trial Pioneer
    #-5: Time Trial Menu
    #-4: Pioneer
    #-3: Hidden CP Creation
    #-2: First CP Creation
    #-1: Default CP Creation
    #0: Main Menu 1
    #1: Moving CP
    #2: Confirm / Discard Moved CP
    #@Condition Vector.DOWN == Vector.UP
    #3: Abilities / View Angle / Centerless
    #4: Main Menu 2
    #5: Teleport
    #6: ???
    #7: Connect CP
    #8: Remove CP
    #9: Moving / Editing Effect
    #10: Effects
    #11: Remove Connection
    #12: Missions
    #@Condition Vector.LEFT == Vector.RIGHT
    
    #Mission Primes explained:
    #
    #2: No Rocket Punch
    #3: No Uppercut
    #5: No Seismic Slam
    #
    #7: Stallless
    #11: Headbounce
    #13: 360 spin
    #continue
    #17: Use Rocket Punch First
    #19: Use Uppercut First
    #23: Use Seismic Slam First
    #
    #29: Diagonal Rocket Punch
    #31: Down Diagonal Rocket Punch
    #37: Rocket Punch Bounce
    #__end__()


rule "Workshop Settings":
    @Event eachPlayer
    
    eventPlayer.WSMultiCreator = createWorkshopSetting(bool, "General", "Multiple Creators", false, 0)
    eventPlayer.WSElementLimiter = createWorkshopSetting(bool, "General", "Element limiter  |  WARNING! Over limit elements & full lobby = elements might not render", false, 1)
    eventPlayer.WSCPcreateskip = createWorkshopSetting(bool, "General", "Move to the created Checkpoint", true, 2)
    eventPlayer.WSSkipGoBack = createWorkshopSetting(float[0.032:0.25], "General", "Skip / Go Back Speed", 0.25, 3)
    eventPlayer.WSAutoEL = createWorkshopSetting(bool, "General", "Automatic Effect Lock upon placing an Ability Effect", true, 4)


/*
rule "Map Data":
    @Event eachPlayer
    
*/

rule "Paste 1":


/*
rule "Paste 2":
*/

/*
rule "Paste 3":
*/

rule "Update Master 9001":
    @Event playerJoined
    @Condition eventPlayer == hostPlayer
    
    #These 3 just so one can copy these actions on a notepad, Paste Old Version Map Data and then replace the actions in this rule to preserve the new variable names.
    Radius_VA_GoBackCP = Radius_VA_GoBackCP
    Prime = Prime
    HiddenCP_TpRad_TT = [player if player else false for player in HiddenCP_TpRad_TT]
    eventPlayer.LocalC = [[] for player in CPposition]
    #sub 1.8
    if any(Y1) or any(X2):
        eventPlayer.LocalC = [(player.concat([[Z1[i], Y1[i].y * -1, 1 if Y1[i].x == 9999 else 2 if Y1[i].x > 9900 else false if Y1[i].x > -9900 else 3 if Y1[i].x == -9999 else 4, 11 if abs(Y1[i].x) > 9990 else abs(Y1[i].x) - 9900 if abs(Y1[i].x) > 9900 else Y1[i].x]])) if Z1[i] else player for player, i in eventPlayer.LocalC]
        eventPlayer.LocalC = [(player.concat([[Y2[i], X2[i].x * -1, 1 if Y1[i].z == 9999 else 2 if Y1[i].z > 9900 else false if Y1[i].z > -9900 else 3 if Y1[i].z == -9999 else 4, 11 if abs(Y1[i].z) > 9990 else abs(Y1[i].z) - 9900 if abs(Y1[i].z) > 9900 else Y1[i].z]])) if Y2[i] else player for player, i in eventPlayer.LocalC]
        eventPlayer.LocalC = [(player.concat([[Z2[i], X2[i].z * -1, 1 if X2[i].y == 9999 else 2 if X2[i].y > 9900 else false if X2[i].y > -9900 else 3 if X2[i].y == -9999 else 4, 11 if abs(X2[i].y) > 9990 else abs(X2[i].y) - 9900 if abs(X2[i].y) > 9900 else X2[i].y]])) if Z2[i] else player for player, i in eventPlayer.LocalC]
        #sub 2.0
    elif any(Z1) or any(Y2) or any(Z2):
        eventPlayer.LocalC = [(eventPlayer.LocalC[i].concat([[player[0], player.last() * -1, 1 if player[true] == 9999 else 2 if player[true] > 9900 else false if player[true] > -9900 else 3 if player[true] == -9999 else 4, 11 if abs(player[true]) > 9990 else abs(player[true]) - 9900 if abs(player[true]) > 9900 else player[true]]])) if player else eventPlayer.LocalC[i] for player, i in Z1]
        eventPlayer.LocalC = [(eventPlayer.LocalC[i].concat([[player[0], player.last() * -1, 1 if player[true] == 9999 else 2 if player[true] > 9900 else false if player[true] > -9900 else 3 if player[true] == -9999 else 4, 11 if abs(player[true]) > 9990 else abs(player[true]) - 9900 if abs(player[true]) > 9900 else player[true]]])) if player else eventPlayer.LocalC[i] for player, i in Y2]
        eventPlayer.LocalC = [(eventPlayer.LocalC[i].concat([[player[0], player.last() * -1, 1 if player[true] == 9999 else 2 if player[true] > 9900 else false if player[true] > -9900 else 3 if player[true] == -9999 else 4, 11 if abs(player[true]) > 9990 else abs(player[true]) - 9900 if abs(player[true]) > 9900 else player[true]]])) if player else eventPlayer.LocalC[i] for player, i in Z2]
    else:
        eventPlayer.LocalC = []
    eventPlayer.LocalC = [false if player == [] else player for player in eventPlayer.LocalC]
    eventPlayer.LocalC = [eventPlayer.LocalC] if eventPlayer.LocalC != [] else false
    if eventPlayer.LocalC[0] != []:
        if any(TP):
            eventPlayer.LocalC[true] = [[player, TP[i], AbilityCount[i].x, AbilityCount[i].y, AbilityCount[i].z] if player != 1 else player for player, i in Mission]
            Mission = eventPlayer.LocalC[true]
        Mission = [player if player[true] else true for player in Mission]
        Connections = [player.x if player / player == vect(true, false, false) else player.y if player / player == vect(false, true, false) else player.z if player / player == vect(false, false, true) else player if player else false for player in Connections]
        Effect_ = eventPlayer.LocalC[0]
        TP = X1
        AbilityCount = [false for player in CPposition]
        for eventPlayer.LocalC in range(false, len(CPposition), true):
            if Mission[eventPlayer.LocalC][true]:
                Mission[eventPlayer.LocalC] = [i for i in Mission[eventPlayer.LocalC] if i]
        X1 = 0
        Y1 = 0
        Z1 = 0
        X2 = 0
        Y2 = 0
        Z2 = 0


rule "Match time":
    disableAnnouncer()
    disableGamemodeCompletion()
    disableMusic()
    getAllPlayers().disableRespawn()
    disableScoring()
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
        wait(3500)


rule "Resets, Texts, etc.":
    @Event eachPlayer
    @Condition eventPlayer.hasSpawned() == true
    
    eventPlayer.PrimeNumbers = [2, 3, 5, 7, 11, 13, 17, 19, 23, 29, 31, 37, 41, 43]
    eventPlayer.MissionReset = [false, false, false, false, false, false, false, false, false, false, false, false]
    eventPlayer.Vector000 = [vect(false, false, false), vect(false, false, false), vect(false, false, false), vect(false, false, false)]
    eventPlayer.MissionText = ["Empty Slot", "No {0} ".format(abilityIconString(eventPlayer.getCurrentHero(), Button.SECONDARY_FIRE)), "No {0} ".format(abilityIconString(eventPlayer.getCurrentHero(), Button.ABILITY_1)), "No {0} ".format(abilityIconString(eventPlayer.getCurrentHero(), Button.ABILITY_2)), "Stallless  ", "HB                                                 ", "360                                        ", "{0} 1st　 ".format(abilityIconString(eventPlayer.getCurrentHero(), Button.SECONDARY_FIRE)), "{0} 1st　 ".format(abilityIconString(eventPlayer.getCurrentHero(), Button.ABILITY_1)), "{0} 1st　 ".format(abilityIconString(eventPlayer.getCurrentHero(), Button.ABILITY_2)), "UP {0}　   ".format(abilityIconString(eventPlayer.getCurrentHero(), Button.SECONDARY_FIRE)), "DWN {0}  ".format(abilityIconString(eventPlayer.getCurrentHero(), Button.SECONDARY_FIRE)), "BNC {0}  ".format(abilityIconString(eventPlayer.getCurrentHero(), Button.SECONDARY_FIRE))]
    eventPlayer.MissionCompletion = ["   ", "√ ", "X  ", "   ", "X  ", "√ ", "LOCKED", "PERFECT", "LOCKED            X", "", "PERFECT", "LOCKED            X"]


rule "Creator setup":
    @Event eachPlayer
    @Condition eventPlayer == (eventPlayer if eventPlayer.WSMultiCreator else hostPlayer)
    @Condition eventPlayer.hasSpawned() == true
    
    eventPlayer.CreatorState = 2
    disableInspector()
    if CPposition:
        eventPlayer.EditingTool = -1
        eventPlayer.teleport(CPposition[0])
    else:
        eventPlayer.Checkpoint = -1
        eventPlayer.EditingTool = -2
        hudSubtext(eventPlayer, " \n\n\n\n\n\n\n\n\n\nMelee | Create Checkpoint\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n", HudPosition.TOP, -50, Color.WHITE, HudReeval.NONE, SpecVisibility.DEFAULT)
        eventPlayer.LocalC[false].append(getLastCreatedText())
        hudSubtext(eventPlayer, "Interact | Switch", HudPosition.TOP, -49, Color.WHITE, HudReeval.NONE, SpecVisibility.DEFAULT)
        eventPlayer.LocalC[false].append(getLastCreatedText())
        hudHeader(eventPlayer, (" Ability Count " if eventPlayer.LocalC.last() == 2 else " Diverge / Single ") if eventPlayer.LocalC.last() else " Multilevel ", HudPosition.TOP, -48, (Color.BLUE if eventPlayer.LocalC.last() == 2 else Color.RED) if eventPlayer.LocalC.last() else Color.WHITE, HudReeval.STRING_AND_COLOR, SpecVisibility.DEFAULT)
        eventPlayer.LocalC[false].append(getLastCreatedText())
    eventPlayer.EditRadius = 2
    eventPlayer.Pressing_A_D = Vector.LEFT * Vector.UP
    eventPlayer.Pressing_W_S = Vector.LEFT * Vector.UP
    #eventPlayer.W = true
    eventPlayer.ShiftSpeed = true
    CreatorRing()
    if CPposition:
        CtrlZ()
        GenerateElements()


rule "Player setup":
    @Event eachPlayer
    @Condition eventPlayer.hasSpawned() == true
    
    eventPlayer.disableGamemodeHud()
    eventPlayer.disableGamemodeInWorldUi()
    waitUntil(Prime, 99999)
    #eventPlayer.ZU = true
    chase(eventPlayer.TimeChangeDisplay, false, rate=true, ChaseReeval.NONE)
    eventPlayer.disablePlayerCollision()
    eventPlayer.setStatusEffect(null, Status.INVINCIBLE, 99999)
    chase(eventPlayer.CPtimer, 9999, rate=true, ChaseReeval.NONE)
    eventPlayer.AbilityCount = Vector.LEFT * Vector.UP
    CPchange()
    if Radius_VA_GoBackCP[0].y:
        while eventPlayer.getHorizontalFacingAngle() / 100 != Radius_VA_GoBackCP[0].y / 100:
            eventPlayer.setFacing(angleToDirection(Radius_VA_GoBackCP[eventPlayer.Checkpoint].y, eventPlayer.getVerticalFacingAngle() - 0.01), Relativity.TO_WORLD)
            wait(0.25)


/*
rule "Checkpoint Functions":
*/

rule "CP Force":
    @Event eachPlayer
    @Condition eventPlayer.CPData[false] != eventPlayer.Checkpoint
    @Condition eventPlayer.Remove == false
    
    wait(0.16, Wait.ABORT_WHEN_FALSE)
    CPchange()


def CPchange():
    @Name "CP Change sub"
    
    eventPlayer.LockE = false
    #Check Effects
    eventPlayer.CPData[true] = (1 if Prime[eventPlayer.Checkpoint] % 29 else 2) if Effect_[eventPlayer.Checkpoint] else false
    eventPlayer.CPData[5] = eventPlayer.CPData[false]
    eventPlayer.CPData[3] = TP[eventPlayer.Checkpoint] if TP[eventPlayer.Checkpoint] else CPposition[eventPlayer.Checkpoint]
    eventPlayer.CPData[4] = HiddenCP_TpRad_TT[eventPlayer.Checkpoint].y if TP[eventPlayer.Checkpoint] else Radius_VA_GoBackCP[eventPlayer.Checkpoint].x
    #Effect Lock
    eventPlayer.CPData[6] = false
    eventPlayer.CPData[7] = eventPlayer.CPData[3]
    eventPlayer.CPData[8] = eventPlayer.CPData[4]
    if Prime[eventPlayer.Checkpoint] % 13 or eventPlayer.Level or eventPlayer.EditingTool == -2:
        goto lbl_0
    eventPlayer.Level = eventPlayer.CPData[2] + true
    eventPlayer.CPData[9] = CPposition.index(eventPlayer.Local_Pos[eventPlayer.CPData[2]]) + -2
    eventPlayer.CPData[10] = CPposition.index(eventPlayer.Local_Pos[eventPlayer.Level])
    #Stop Tester Timer
    lbl_0:
    __skipIf__((Prime[eventPlayer.Checkpoint + true]) % 13, true)
    stopChasingVariable(eventPlayer.RunTime)
    #set abilities
    __skipIf__(eventPlayer.CreatorState == 3, true)
    AbilityEnableDisable()
    #Reset Missions
    async(MissionReset, AsyncBehavior.RESTART)
    SetDiverge()
    #Recenter
    if eventPlayer.CreatorState == 3 or eventPlayer.Shift == 1 or TP[eventPlayer.Checkpoint] or Prime[eventPlayer.Checkpoint] % 7:
        teleport()
    #Check Effect Lock
    if eventPlayer.CPData[true]:
        eventPlayer.Effvisible = []
        __skipIf__(Prime[eventPlayer.Checkpoint] % 17, true)
        eventPlayer.LockE[false] = true
        __skipIf__(Prime[eventPlayer.Checkpoint] % 19, true)
        eventPlayer.LockE[true] = true
        __skipIf__(Prime[eventPlayer.Checkpoint] % 23, true)
        eventPlayer.LockE[2] = true
        eventPlayer.CPData[6] = eventPlayer.LockE
    GenerateElements()
    #Chase CP
    eventPlayer.CPData[false] = eventPlayer.Checkpoint


def AppendPosRad():
    @Name "Append CP Positions & Radii"
    
    eventPlayer.Local_Pos = eventPlayer.Vector000 if Prime[eventPlayer.Checkpoint] % 11 else []
    eventPlayer.Local_Rad = []
    if Prime[eventPlayer.Checkpoint] % 11:
        if Connections[eventPlayer.Checkpoint].x or Connections[eventPlayer.Checkpoint].y or Connections[eventPlayer.Checkpoint].z:
            if Connections[eventPlayer.Checkpoint].x:
                eventPlayer.Local_Pos[false] = CPposition[Connections[eventPlayer.Checkpoint].x]
                eventPlayer.Local_Rad[false] = Radius_VA_GoBackCP[Connections[eventPlayer.Checkpoint].x].x
            if Connections[eventPlayer.Checkpoint].y:
                eventPlayer.Local_Pos[true] = CPposition[Connections[eventPlayer.Checkpoint].y]
                eventPlayer.Local_Rad[true] = Radius_VA_GoBackCP[Connections[eventPlayer.Checkpoint].y].x
            if Connections[eventPlayer.Checkpoint].z:
                eventPlayer.Local_Pos[2] = CPposition[Connections[eventPlayer.Checkpoint].z]
                eventPlayer.Local_Rad[2] = Radius_VA_GoBackCP[Connections[eventPlayer.Checkpoint].z].x
        elif Connections[eventPlayer.Checkpoint]:
            eventPlayer.Local_Pos[false] = CPposition[Connections[eventPlayer.Checkpoint]]
            eventPlayer.Local_Rad[false] = Radius_VA_GoBackCP[Connections[eventPlayer.Checkpoint]].x
        if HiddenCP_TpRad_TT[eventPlayer.Checkpoint].x:
            eventPlayer.Local_Pos[3] = CPposition[HiddenCP_TpRad_TT[eventPlayer.Checkpoint].x]
            eventPlayer.Local_Rad[3] = Radius_VA_GoBackCP[HiddenCP_TpRad_TT[eventPlayer.Checkpoint].x].x
    else:
        eventPlayer.Local_Pos = [player for player in CPposition if not Prime[CPposition.index(player)] % 13]
        for eventPlayer.Detector1 in range(false, len(eventPlayer.Local_Pos), true):
            eventPlayer.Local_Rad = eventPlayer.Local_Rad.concat(Radius_VA_GoBackCP[CPposition.index(eventPlayer.Local_Pos[eventPlayer.Detector1])].x)
    eventPlayer.CPcount = len(eventPlayer.Local_Pos)


rule "CP Clear / Fail":
    @Event eachPlayer
    @Condition distance(eventPlayer.getPosition(), eventPlayer.CPData[3]) > eventPlayer.CPData[4] + 0.1
    @Condition (eventPlayer.isFiringSecondaryFire() or eventPlayer.Grace < 0.12) == true
    @Condition eventPlayer.hasSpawned() == true
    @Condition eventPlayer.CreatorState != 3
    @Condition eventPlayer.Shift == false
    @Condition eventPlayer.Roaming == false
    @Condition eventPlayer.isOnGround() == true
    
    __skipIf__(eventPlayer.TTtimer, true)
    eventPlayer.disallowButton(Button.ABILITY_2)
    #Prepare Cancel Primary action
    if eventPlayer.isUsingAbility2() or eventPlayer.Grace and not eventPlayer.isHoldingButton(Button.SECONDARY_FIRE):
        eventPlayer.ForceAbility = 2 if eventPlayer.Grace else true
    if any([player and distance(eventPlayer.getPosition(), eventPlayer.Local_Pos[i]) <= player for player, i in eventPlayer.Local_Rad]):
        CPclear()
    else:
        CPfail()
    __loopIfConditionIsTrue__()


def CPclear():
    @Name "CP Clear sub"
    
    #Cancel Slam Animation (3 actions)
    if eventPlayer.ForceAbility == 1 and not eventPlayer.isHoldingButton(Button.ABILITY_1):
        eventPlayer.cancelPrimaryAction()
    eventPlayer.CPData[2] = eventPlayer.Local_Pos.index([player for player, i in eventPlayer.Local_Pos if distance(eventPlayer.getPosition(), player) <= eventPlayer.Local_Rad[i]])
    if eventPlayer.CPData[2] >= eventPlayer.CPcount:
        CheckpointEffect()
    elif eventPlayer.EditingTool == -6:
        CPfail()
    elif eventPlayer.LockE[eventPlayer.CPData[2]]:
        playEffect(eventPlayer, DynamicEffect.DEBUFF_IMPACT_SOUND, Color.PURPLE, eventPlayer, 50)
        CPfail()
        smallMessage(eventPlayer, "Effect Locked{0}".format(" Including Checkpoints" if eventPlayer.CPData[true] == 2 else ""))
    elif eventPlayer.LockM[eventPlayer.CPData[2]]:
        playEffect(eventPlayer, DynamicEffect.DEBUFF_IMPACT_SOUND, Color.PURPLE, eventPlayer, 50)
        CPfail()
        smallMessage(eventPlayer, "Mission Locked")
    else:
        eventPlayer.Shift = 2
        if HiddenCP_TpRad_TT[eventPlayer.Checkpoint].z:
            TTclear()
        if eventPlayer.Effinitiate:
            EffectTimeChange()
        MissionTimeChange()
        eventPlayer.Checkpoint = CPposition.index(eventPlayer.Local_Pos[eventPlayer.CPData[2]])
        playEffect(eventPlayer, DynamicEffect.BUFF_EXPLOSION_SOUND, Color.PURPLE, eventPlayer, 69)
        eventPlayer.LastCPtime = eventPlayer.CPtimer
        eventPlayer.CPtimer = false
        CPchange()
        CPclearend()


def CPclearend():
    @Name "CP Clear Ending sub (optimizes Effect CP)"
    
    AbilityCDreset()
    #Bullet Punch / Uppercut Cancel (6 actions)
    if not eventPlayer.isHoldingButton(Button.SECONDARY_FIRE) and not eventPlayer.isHoldingButton(Button.ABILITY_1) and not eventPlayer.isHoldingButton(Button.ABILITY_2):
        wait(0.032)
        eventPlayer.cancelPrimaryAction()
        wait()
        async(RPFix, AsyncBehavior.RESTART)
    eventPlayer.setAbilityCooldown(Button.SECONDARY_FIRE, false)
    wait(0.112)
    eventPlayer.Shift = false
    eventPlayer.ForceAbility = false
    eventPlayer.allowButton(Button.ABILITY_2)


def CPfail():
    @Name "CP Fail sub"
    
    if eventPlayer.TTtimer:
        if eventPlayer.EditingTool == -6:
            eventPlayer.LocalC[7] = abs(eventPlayer.EditTime) - abs(eventPlayer.TTtimer)
        eventPlayer.TTtimer = false
        eventPlayer.Roaming = true
    else:
        eventPlayer.Shift = true
        eventPlayer.CPData[3] = eventPlayer.CPData[7]
        eventPlayer.CPData[4] = eventPlayer.CPData[8]
        eventPlayer.teleport(eventPlayer.CPData[3])
        eventPlayer.startForcingPosition(eventPlayer.CPData[3], false)
        eventPlayer.cancelPrimaryAction()
        eventPlayer.LockE = eventPlayer.CPData[6]
        eventPlayer.Effvisible = []
        eventPlayer.DetectorBounce = false
        if Radius_VA_GoBackCP[eventPlayer.Checkpoint].y and eventPlayer.CreatorState < 2:
            async(SetFacing, AsyncBehavior.RESTART)
        elif eventPlayer.EditingTool == -4 and eventPlayer.TempVA:
            eventPlayer.startFacing(angleToDirection(eventPlayer.TempVA, eventPlayer.getVerticalFacingAngle()), 10000, Relativity.TO_WORLD, FacingReeval.DIRECTION_AND_TURN_RATE)
        wait(0.08)
        eventPlayer.stopForcingPosition()
        eventPlayer.CPtimer = false
        async(MissionReset, AsyncBehavior.RESTART)
        __skipIf__(eventPlayer.CreatorState == 3, true)
        AbilityEnableDisable()
        AbilityCDreset()
        wait(0.336 if eventPlayer.ForceAbility == 2 else 0.08)
        async(RPFix, AsyncBehavior.RESTART)
        eventPlayer.ForceAbility = false
        eventPlayer.stopFacing()
        eventPlayer.allowButton(Button.ABILITY_2)
        eventPlayer.Shift = false


rule "Grace":
    @Event eachPlayer
    @Condition eventPlayer.isFiringSecondaryFire() == true
    
    eventPlayer.Grace = 0.119
    chase(eventPlayer.Grace, 0.5, rate=0.26, ChaseReeval.NONE)
    waitUntil(not eventPlayer.isFiringSecondaryFire(), 99999)
    chase(eventPlayer.Grace, false, rate=true, ChaseReeval.NONE)
    #Ability Count
    if AbilityCount[eventPlayer.Checkpoint] and not eventPlayer.isHoldingButton(Button.PRIMARY_FIRE):
        if eventPlayer.EditingTool == -4 and not eventPlayer.PioneerGenerateCP:
            eventPlayer.AbilityCount += Vector.LEFT
        elif eventPlayer.CreatorState < 2:
            if eventPlayer.AbilityCount.x:
                goto lbl_0
            eventPlayer.AbilityCount += Vector.LEFT
            wait()
            lbl_0:
            eventPlayer.AbilityCount += Vector.RIGHT
    if eventPlayer.Mission:
        RPMissions()
    waitUntil(not eventPlayer.Grace, 99999)
    stopChasingVariable(eventPlayer.Grace)


def RPFix():
    @Name "Rocket Punch Fix"
    
    if eventPlayer.isHoldingButton(Button.SECONDARY_FIRE):
        eventPlayer.startForcingButton(Button.SECONDARY_FIRE)
        waitUntil(not eventPlayer.Shift and not eventPlayer.isHoldingButton(Button.SECONDARY_FIRE), 99999)
        eventPlayer.stopForcingButton(Button.SECONDARY_FIRE)


def SetFacing():
    @Name "Set Facing sub"
    
    eventPlayer.startFacing(angleToDirection(Radius_VA_GoBackCP[eventPlayer.Checkpoint].y, eventPlayer.getVerticalFacingAngle()), 10000, Relativity.TO_WORLD, FacingReeval.DIRECTION_AND_TURN_RATE)
    waitUntil(eventPlayer.getHorizontalFacingAngle() / 100 == Radius_VA_GoBackCP[eventPlayer.Checkpoint].y / 100, 1)
    eventPlayer.stopFacing()


def teleport():
    @Name "Teleport sub"
    
    eventPlayer.teleport(eventPlayer.CPData[3])


def AbilityEnableDisable():
    @Name "Ability Enable/Disable sub"
    
    if eventPlayer.EditingTool == -2:
        return
    eventPlayer.AbilityCount = AbilityCount[eventPlayer.Checkpoint].last()
    if AbilityCount[eventPlayer.Checkpoint]:
        if eventPlayer.EditingTool == -4:
            eventPlayer.setSecondaryFireEnabled(true)
            eventPlayer.setAbility1Enabled(true)
            eventPlayer.setAbility2Enabled(true)
        else:
            eventPlayer.setSecondaryFireEnabled(true if eventPlayer.AbilityCount.x else false)
            eventPlayer.setAbility1Enabled(true if eventPlayer.AbilityCount.y else false)
            eventPlayer.setAbility2Enabled(true if eventPlayer.AbilityCount.z else false)
    else:
        eventPlayer.setSecondaryFireEnabled(true if Prime[eventPlayer.Checkpoint] % 2 else false)
        eventPlayer.setAbility1Enabled(true if Prime[eventPlayer.Checkpoint] % 3 else false)
        eventPlayer.setAbility2Enabled(true if Prime[eventPlayer.Checkpoint] % 5 else false)


rule "Ability Count - Disable Rocket Punch":
    @Event eachPlayer
    @Condition eventPlayer.CreatorState < 2
    @Condition AbilityCount[eventPlayer.Checkpoint] == true
    @Condition eventPlayer.AbilityCount.x == false
    @Condition eventPlayer.getAbilityCooldown(Button.SECONDARY_FIRE) == true
    
    eventPlayer.setSecondaryFireEnabled(false)


rule "Ability Count - Disable Uppercut":
    @Event eachPlayer
    @Condition eventPlayer.CreatorState < 2
    @Condition AbilityCount[eventPlayer.Checkpoint] == true
    @Condition eventPlayer.AbilityCount.y == false
    @Condition eventPlayer.getAbilityCooldown(Button.ABILITY_1) == true
    
    eventPlayer.setAbility1Enabled(false)


rule "Ability Count - Disable Seismic Slam":
    @Event eachPlayer
    @Condition eventPlayer.CreatorState < 2
    @Condition AbilityCount[eventPlayer.Checkpoint] == true
    @Condition eventPlayer.AbilityCount.z == false
    @Condition eventPlayer.getAbilityCooldown(Button.ABILITY_2) == true
    
    eventPlayer.setAbility2Enabled(false)


rule "Reset abilities inside CP":
    @Event eachPlayer
    @Condition eventPlayer.Shift == false
    @Condition distance(eventPlayer.getPosition(), eventPlayer.CPData[3]) <= eventPlayer.CPData[4] + 0.5
    @Condition (eventPlayer.getAbilityCooldown(Button.SECONDARY_FIRE) or eventPlayer.getAltitude() < 1 and eventPlayer.getAbilityCooldown(Button.ABILITY_1) or eventPlayer.getAbilityCooldown(Button.ABILITY_2)) == true
    
    __skipIf__(eventPlayer.TTtimer and not eventPlayer.Start, true)
    eventPlayer.Shift = true
    AbilityCDreset()
    wait(0.048)
    eventPlayer.Shift = false
    __loopIfConditionIsTrue__()
    if eventPlayer.Mission and eventPlayer.CPData[3] == eventPlayer.CPData[7]:
        eventPlayer.MissionC = eventPlayer.MissionReset
        MissionPlayerHUD()


def AbilityCDreset():
    @Name "Ability CD reset sub"
    
    eventPlayer.setAbilityCooldown(Button.ABILITY_1, false)
    eventPlayer.setAbilityCooldown(Button.ABILITY_2, false)
    eventPlayer.setAbilityCooldown(Button.SECONDARY_FIRE, false)


def SetDiverge():
    @Name "Set Diverge sub"
    
    AppendPosRad()
    eventPlayer.Diverge2 = eventPlayer.Local_Rad.index([player for player in eventPlayer.Local_Rad if player][0])
    eventPlayer.Diverge = 0 if not Connections[eventPlayer.Checkpoint] and Prime[eventPlayer.Checkpoint] % 11 else CPposition.index([player for player in eventPlayer.Local_Pos if player][0])


def GenerateElements():
    @Name "Generate Elements sub"
    
    if eventPlayer.dontcomein:
        return
    eventPlayer.dontcomein = true
    DestroyElements()
    eventPlayer.Elements = [[], [], []]
    CreateRings()
    #Check Missions
    MissionAppend()
    #Effects
    if eventPlayer.CPData[true]:
        async(EffectInitiate, AsyncBehavior.RESTART)
    eventPlayer.dontcomein = false


def CreateRings():
    @Name "Generate Rings sub"
    
    if eventPlayer.Checkpoint == -1:
        return
    if not Prime[eventPlayer.Checkpoint] % 11:
        LevelRingsAndIcons()
    if not eventPlayer.CPData[true]:
        return
    #TCD Lock Checker
    for eventPlayer.GenRings in range(false, 3, true):
        if eventPlayer.LockE[eventPlayer.GenRings]:
            createInWorldText(eventPlayer if eventPlayer.LockE[evalOnce(eventPlayer.GenRings)] else null, "{0}{1}".format(abilityIconString(Hero.WINSTON, Button.ABILITY_2), "+" if not Prime[eventPlayer.Checkpoint] % 29 else ""), eventPlayer.Local_Pos[eventPlayer.GenRings], true, Clip.NONE, WorldTextReeval.VISIBILITY, Color.WHITE, SpecVisibility.DEFAULT)
            eventPlayer.Elements[2].append(getLastCreatedText())


def LevelRingsAndIcons():
    @Name "Level Selector Rings and Icons sub"
    
    eventPlayer.LevelCounter = 1
    eventPlayer.Detector3 = [[_ for _, i in CPposition if not Prime[i] % 13], [i.x for i, idx in Radius_VA_GoBackCP if not Prime[idx] % 13]]
    if eventPlayer.Detector3[0] == []:
        return
    for eventPlayer.Detector2 in range(false, len(eventPlayer.Detector3.last()), true):
        createEffect(eventPlayer, Effect.RING, Color.WHITE, eventPlayer.Detector3[0][eventPlayer.Detector2], eventPlayer.Detector3.last()[eventPlayer.Detector2], EffectReeval.NONE)
        eventPlayer.Elements[false].append(getLastCreatedEntity())
        createInWorldText(eventPlayer, "{0}{1}".format(eventPlayer.LevelCounter, iconString(Icon.FLAG)), eventPlayer.Detector3[0][eventPlayer.Detector2] + Vector.UP, 1, Clip.NONE, WorldTextReeval.NONE, Color.AQUA, SpecVisibility.DEFAULT)
        eventPlayer.Elements[2].append(getLastCreatedText())
        wait()
        eventPlayer.LevelCounter += 1


def DestroyElements():
    @Name "Destroy Elements sub"
    
    destroyEffect(eventPlayer.Elements[0])
    for eventPlayer.Detector1 in range(false, max(len(eventPlayer.Elements[true]), len(eventPlayer.Elements[2])), true):
        destroyIcon(eventPlayer.Elements[true][eventPlayer.Detector1])
        destroyInWorldText(eventPlayer.Elements[2][eventPlayer.Detector1])
    wait()


/*
rule "Creation Menus":
*/

rule "Create Starting CP":
    @Event eachPlayer
    @Condition eventPlayer.Checkpoint == -1
    @Condition eventPlayer == (eventPlayer if eventPlayer.WSMultiCreator else hostPlayer)
    @Condition (eventPlayer.isHoldingButton(Button.INTERACT) or eventPlayer.isHoldingButton(Button.MELEE)) == true
    
    if eventPlayer.isHoldingButton(Button.INTERACT):
        eventPlayer.LocalC[true] += -2 if eventPlayer.LocalC.last() == 2 else true
    else:
        waitUntil(not eventPlayer.isHoldingButton(Button.MELEE), 99999)
        for eventPlayer.Detector1 in range(true, 4, true):
            destroyHudText(eventPlayer.LocalC[0][eventPlayer.Detector1])
        CreateCP()
        getAllPlayers().Checkpoint += true
        (getAllPlayers() if eventPlayer.WSMultiCreator else eventPlayer).EditingTool = -1
        Prime = true if eventPlayer.LocalC.last() else 11
        if eventPlayer.LocalC.last() == 2:
            AbilityCount = [[true, Vector.LEFT * Vector.UP]]
        CPchange()


rule "Create CP":
    @Event eachPlayer
    @Condition (eventPlayer.isHoldingButton(Button.PRIMARY_FIRE) or eventPlayer.isHoldingButton(Button.MELEE)) == true
    @Condition eventPlayer.CreatorState == 2
    @Condition eventPlayer.EditingTool == -1
    @Condition Prime[eventPlayer.Checkpoint] % 11 == true
    
    if not eventPlayer.isHoldingButton(Button.INTERACT) and eventPlayer.isHoldingButton(Button.MELEE):
        if eventPlayer.ElementLimiter > 3:
            smallMessage(eventPlayer, "Too many elements! (4/4)")
        elif any([not i.x or not i.y or not i.z for i in Connections[eventPlayer.Checkpoint]]):
            CreateCP()
            GenerateElements()
        else:
            smallMessage(eventPlayer, "No :)")
    #> To Pioneer
    if eventPlayer.isHoldingButton(Button.PRIMARY_FIRE):
        if HiddenCP_TpRad_TT[eventPlayer.Checkpoint].z:
            eventPlayer.EditRadius = 2
            eventPlayer.EditTime = HiddenCP_TpRad_TT[eventPlayer.Checkpoint].z
            #throw off
            eventPlayer.MovingElement = true
            eventPlayer.Roaming = true
            eventPlayer.EditingTool = -5
        elif any([not i.x or not i.y or not i.z for i in Connections[eventPlayer.Checkpoint]]):
            ToPioneer()
        else:
            smallMessage(eventPlayer, "No :)")


def CreateCP():
    @Name "Create Checkpoint sub"
    
    CtrlZ()
    if eventPlayer.ConnectionCount == 3:
        smallMessage(eventPlayer, "Connections full! (3/3)")
    else:
        if eventPlayer.EditingTool != -3:
            if Connections[eventPlayer.Checkpoint].x or Connections[eventPlayer.Checkpoint].y or Connections[eventPlayer.Checkpoint].z:
                eventPlayer.AddRemove = 1 if not Connections[eventPlayer.Checkpoint].x else 2 if not Connections[eventPlayer.Checkpoint].y else 3
            else:
                eventPlayer.AddRemove = 2 if Connections[eventPlayer.Checkpoint] else 1
        eventPlayer.AddRemove2 = eventPlayer.AddRemove
        eventPlayer.Roaming = true
        Correct_CP_Data()
        TempCP()
        CreateSlice()
        __skipIf__(eventPlayer.EditingTool == -4, true)
        eventPlayer.Roaming = false
        if eventPlayer.EditingTool != -3:
            if Connections[eventPlayer.Checkpoint].x or Connections[eventPlayer.Checkpoint].y or Connections[eventPlayer.Checkpoint].z:
                Connections[eventPlayer.Checkpoint] += Vector.LEFT * (eventPlayer.Checkpoint + true) if eventPlayer.AddRemove == 1 else Vector.UP * (eventPlayer.Checkpoint + 2) if eventPlayer.AddRemove == 2 else Vector.FORWARD * (eventPlayer.Checkpoint + 3)
            else:
                Connections[eventPlayer.Checkpoint] = vect(Connections[eventPlayer.Checkpoint], eventPlayer.Checkpoint + 2, false) if Connections[eventPlayer.Checkpoint] else eventPlayer.Checkpoint + true
        SetDiverge()
        #Go to Created CP if Creating First CP / Level CP / Hidden CP / Pioneer
        if AbilityCount[eventPlayer.Checkpoint][0] or eventPlayer.Level and (any([player != -5 and player != -3 for player in eventPlayer.EditingTool])) or any([player != -2 and player != -3 and player != -4 for player in eventPlayer.EditingTool]) and eventPlayer.WSCPcreateskip:
            eventPlayer.Checkpoint += eventPlayer.AddRemove
            CPchange()
        eventPlayer.AddRemove = false
        eventPlayer.AddRemove2 = false


rule "Pioneer":
    @Event eachPlayer
    @Condition eventPlayer.EditingTool == -4
    @Condition (eventPlayer.isHoldingButton(Button.ULTIMATE) or eventPlayer.isHoldingButton(Button.MELEE) or eventPlayer.isHoldingButton(Button.INTERACT) or eventPlayer.isHoldingButton(Button.PRIMARY_FIRE)) == true
    
    #Temporary View Angle
    if eventPlayer.isHoldingButton(Button.PRIMARY_FIRE):
        eventPlayer.TempVA = eventPlayer.getHorizontalFacingAngle()
    #Confirm new CP
    if eventPlayer.isHoldingButton(Button.MELEE) and eventPlayer.MovingElement == eventPlayer.TempCP[0]:
        if eventPlayer.ElementLimiter < 4:
            goto lbl_0
        smallMessage(eventPlayer, "Too many elements! (4/4)")
        return
        lbl_0:
        waitUntil(not eventPlayer.isHoldingButton(Button.MELEE), 99999)
        if eventPlayer.AbilityCount:
            AbilityCount[eventPlayer.Checkpoint] = [true, eventPlayer.AbilityCount]
            eventPlayer.AbilityCount = Vector.LEFT * Vector.UP
        if Prime[eventPlayer.Checkpoint] % 11:
            CreateCP()
        else:
            LevelCreate()
        CPchange()
        wait(0.2)
        eventPlayer.PioneerGenerateCP = false
        destroyEffect(eventPlayer.TempRing)
    #Move Temp CP
    if eventPlayer.isHoldingButton(Button.INTERACT) and eventPlayer.MovingElement == eventPlayer.TempCP[false]:
        eventPlayer.Text[false] = "Create Effect Checkpoint"
        eventPlayer.HoldTime = 100
        chase(eventPlayer.HoldTime, false, duration=2, ChaseReeval.NONE)
        waitUntil(not eventPlayer.isHoldingButton(Button.INTERACT), 2)
        eventPlayer.HoldTime = false
        if eventPlayer.isHoldingButton(Button.INTERACT):
            eventPlayer.CPData[true] = true
            eventPlayer.Effdetect = true
            eventPlayer.Effactual = Effect_[eventPlayer.Checkpoint] if Effect_[eventPlayer.Checkpoint] else false
            eventPlayer.Effactual[len(eventPlayer.Effactual)] = [eventPlayer.MovingElement, eventPlayer.EditRadius, 4, 11 if AbilityCount[eventPlayer.Checkpoint][0] else true]
            Effect_[eventPlayer.Checkpoint] = eventPlayer.Effactual
            eventPlayer.teleport(eventPlayer.TempCP[0] + Vector.UP)
            Exit()
            GenerateElements()
            destroyEffect(eventPlayer.TempRing)
            wait(0.25)
            eventPlayer.PioneerGenerateCP = false
            eventPlayer.Effdetect = false
        else:
            EditGenTempCP()
            return
    #Back
    if eventPlayer.isHoldingButton(Button.ULTIMATE):
        waitUntil(not eventPlayer.isHoldingButton(Button.ULTIMATE), 99999)
        outCPselect()
        eventPlayer.TempVA = false
        return


def ToPioneer():
    @Name "> Pioneer sub"
    
    While1()
    eventPlayer.EditingTool = -4
    Exit()
    destroyEffect(eventPlayer.TempRing)
    eventPlayer.Roaming = true
    eventPlayer.PioneerGenerateCP = false
    eventPlayer.MovingElement = Vector.UP
    AbilityEnableDisable()
    eventPlayer.AbilityCount = Vector.LEFT * Vector.UP


rule "Pioneer generate":
    @Event eachPlayer
    @Condition eventPlayer.EditingTool == -4
    @Condition distance(eventPlayer.getPosition(), eventPlayer.CPData[3]) > eventPlayer.CPData[4] + 0.1
    @Condition eventPlayer.Roaming < 2
    @Condition (eventPlayer.Grace < 0.12 or eventPlayer.isFiringSecondaryFire()) == true
    @Condition eventPlayer.PioneerGenerateCP == false
    @Condition eventPlayer.isOnGround() == true
    
    if any([i and distance(eventPlayer.getPosition(), i) < eventPlayer.Local_Rad[eventPlayer.Local_Pos.index(i)] for i in eventPlayer.Local_Pos.slice(eventPlayer.CPcount, len(eventPlayer.Local_Pos) - eventPlayer.CPcount)]):
        eventPlayer.CPData[2] = eventPlayer.Local_Pos.index(sorted([player for player in eventPlayer.Local_Pos if player], lambda i: distance(eventPlayer.getPosition(), i))[0])
        CheckpointEffect()
    else:
        TempCP()
        GenerateTempCP()
        eventPlayer.PioneerGenerateCP = true


def GenerateTempCP():
    @Name "Generate Temp CP sub"
    
    if eventPlayer.EditingTool == -6:
        TempCP()
    createEffect(eventPlayer, Effect.RING, Color.PURPLE, eventPlayer.TempCP[0], eventPlayer.TempCP[true].x, EffectReeval.NONE)
    eventPlayer.TempRing = getLastCreatedEntity()
    eventPlayer.MovingElement = eventPlayer.TempCP[0]


def EditGenTempCP():
    @Name "Move Generated Temp CP sub"
    
    eventPlayer.LocalC[false] = eventPlayer.TempCP[false]
    eventPlayer.LocalC[1] = eventPlayer.TempCP[1]
    eventPlayer.LocalC[2] = eventPlayer.CreatorState
    eventPlayer.LocalC[3] = eventPlayer.EditingTool
    MoveTempCP()


rule "Reset Pioneer":
    @Event eachPlayer
    @Condition eventPlayer.EditingTool == -4
    @Condition eventPlayer.isHoldingButton(Button.RELOAD) == true
    @Condition eventPlayer.Shift == false
    
    #Prepare Cancel Primary action
    if eventPlayer.isUsingAbility2() or eventPlayer.Grace and not eventPlayer.isHoldingButton(Button.SECONDARY_FIRE):
        eventPlayer.ForceAbility = 2 if eventPlayer.Grace else true
    Exit()
    CPfail()
    destroyEffect(eventPlayer.TempRing)
    wait(0.048)
    eventPlayer.PioneerGenerateCP = false
    eventPlayer.AbilityCount = Vector.LEFT * Vector.UP


rule "Assign Last CP of Diverge":
    @Event eachPlayer
    @Condition eventPlayer.EditingTool == -1
    @Condition eventPlayer.isHoldingButton(Button.INTERACT) == true
    @Condition eventPlayer.isHoldingButton(Button.MELEE) == true
    #No Level Select present
    @Condition (any([not player % 11 for player in Prime])) == false
    @Condition (any([not i.x or not i.y or not i.z for i in Connections[eventPlayer.Checkpoint]])) == true
    
    CtrlZ()
    if Connections[eventPlayer.Checkpoint]:
        if Connections[eventPlayer.Checkpoint].x or Connections[eventPlayer.Checkpoint].y or Connections[eventPlayer.Checkpoint].z:
            Connections[eventPlayer.Checkpoint] += (vect(false, false, len(CPposition)) if Connections[eventPlayer.Checkpoint].y else vect(false, len(CPposition), false)) if Connections[eventPlayer.Checkpoint].x else vect(len(CPposition), false, false)
        else:
            Connections[eventPlayer.Checkpoint] = vect(Connections[eventPlayer.Checkpoint], len(CPposition), false)
    else:
        Connections[eventPlayer.Checkpoint] = len(CPposition)
    TempCP()
    CPposition.append(eventPlayer.TempCP[false])
    Radius_VA_GoBackCP.append(eventPlayer.TempCP[true])
    Connections.append(false)
    Mission.append(true)
    Prime.append(11)
    GenerateElements()
    CPchange()


rule "Level Creation":
    @Event eachPlayer
    @Condition Prime[eventPlayer.Checkpoint] % 11 == false
    @Condition eventPlayer.EditingTool == -1
    @Condition (eventPlayer.isHoldingButton(Button.PRIMARY_FIRE) or eventPlayer.isHoldingButton(Button.MELEE)) == true
    
    if eventPlayer.isHoldingButton(Button.MELEE):
        While1()
        CtrlZ()
        TempCP()
        LevelCreate()
    else:
        ToPioneer()


def LevelCreate():
    @Name "Level Create sub"
    
    CPposition.append(eventPlayer.TempCP[false])
    Radius_VA_GoBackCP.append(eventPlayer.TempCP[true])
    Connections.append(false)
    Mission.append(true)
    Prime.append(13)
    if getNumberOfPlayers(Team.ALL) == 1:
        CPchange()
    else:
        getAllPlayers().CPData[false] = -2
        smallMessage(getAllPlayers(), "New Level Created")


/*
rule "Menus":
*/

rule "Menu 1 / Out":
    @Event eachPlayer
    @Condition eventPlayer.Shift == false
    @Condition eventPlayer.isHoldingButton(Button.ULTIMATE) == true
    @Condition eventPlayer.CreatorState == true
    @Condition (not eventPlayer.EditingTool or eventPlayer.EditingTool == -1) == true
    
    wait()
    if eventPlayer.EditingTool:
        CPselect()
    else:
        outCPselect()


def CPselect():
    @Name "> Menu 1 sub"
    
    destroyEffect(eventPlayer.TempRing)
    eventPlayer.setMoveSpeed(1)
    AJCdisable()
    Exit()
    eventPlayer.Roaming = false
    eventPlayer.EditTime = false
    eventPlayer.Start = false
    eventPlayer.EditingTool = 4 if eventPlayer.EditingTool > 3 else false
    eventPlayer.CreatorState = 3


def outCPselect():
    @Name "< Menu 1 sub"
    
    destroyEffect(eventPlayer.TempRing)
    eventPlayer.stopCamera()
    eventPlayer.CreatorState = 2
    eventPlayer.EditingTool = -1
    CreatorRing()
    AbilityEnableDisable()
    AllowButtons()
    eventPlayer.Roaming = false


rule "Menu 1":
    @Event eachPlayer
    @Condition eventPlayer.CreatorState == 3
    @Condition eventPlayer.EditingTool == false
    @Condition (eventPlayer.isHoldingButton(Button.PRIMARY_FIRE) or eventPlayer.isHoldingButton(Button.SECONDARY_FIRE) or eventPlayer.isHoldingButton(Button.INTERACT) or eventPlayer.isHoldingButton(Button.MELEE) or eventPlayer.isHoldingButton(Button.RELOAD)) == true
    
    #> Abilities
    if eventPlayer.isHoldingButton(Button.PRIMARY_FIRE):
        While1()
        eventPlayer.setMoveSpeed(false)
        eventPlayer.stopCamera()
        eventPlayer.EditingTool = 3
        eventPlayer.Roaming = true
        AbilityEnableDisable()
    #> Position
    if not eventPlayer.isHoldingButton(Button.ULTIMATE) and eventPlayer.isHoldingButton(Button.INTERACT):
        While1()
        eventPlayer.LocalC[false] = CPposition[eventPlayer.Checkpoint]
        eventPlayer.LocalC[true] = Radius_VA_GoBackCP[eventPlayer.Checkpoint]
        eventPlayer.LocalC[2] = eventPlayer.CreatorState
        eventPlayer.LocalC[3] = 2
        MoveTempCP()
        return
    #Connect
    if eventPlayer.isHoldingButton(Button.MELEE):
        While1()
        if any([i.x and i.y and i.z for i in Connections[eventPlayer.Checkpoint]]):
            goto lbl_0
        eventPlayer.EditingTool = 7
        eventPlayer.SaveCP = eventPlayer.Checkpoint
        return
        lbl_0:
        smallMessage(eventPlayer, "Too many connections! 3/3")
    #> Select 2
    if eventPlayer.isHoldingButton(Button.SECONDARY_FIRE):
        While1()
        eventPlayer.EditingTool = 4
    #Remove Connection
    if eventPlayer.isHoldingButton(Button.RELOAD):
        if Connections[eventPlayer.Checkpoint] != 0:
            goto lbl_1
        smallMessage(eventPlayer, "No connections")
        return
        lbl_1:
        While1()
        eventPlayer.Roaming = true
        eventPlayer.EditingTool = 11
        eventPlayer.SaveCP = eventPlayer.Checkpoint
        eventPlayer.Checkpoint = eventPlayer.Diverge
        return


def MoveTempCP():
    @Name "Moving Temporary CP sub"
    
    AJCdisable()
    eventPlayer.MovingElement = eventPlayer.LocalC[0]
    eventPlayer.EditRadius = eventPlayer.LocalC[true].x
    MultiPurposeCamera()
    destroyEffect(eventPlayer.TempRing)
    eventPlayer.CreatorState = 3
    eventPlayer.EditingTool = 1
    eventPlayer.Roaming = true
    wait()
    createEffect(eventPlayer, Effect.RING, Color.PURPLE, eventPlayer.MovingElement, eventPlayer.EditRadius, EffectReeval.POSITION_AND_RADIUS)
    eventPlayer.TempRing.append(getLastCreatedEntity())
    wait()
    createEffect(eventPlayer, Effect.SPHERE, Color.RED, eventPlayer.MovingElement, 0.2, EffectReeval.POSITION_AND_RADIUS)
    eventPlayer.TempRing.append(getLastCreatedEntity())
    eventPlayer.setMoveSpeed(true)
    chase(eventPlayer.MovingElement, eventPlayer.MovingElement + vect(false, eventPlayer.HeightChase, false) + eventPlayer.Pressing_W_S + eventPlayer.Pressing_A_D, rate=eventPlayer.ShiftSpeed * 3, ChaseReeval.DESTINATION_AND_RATE)
    eventPlayer.MovingElementConfirm = true


rule "Moving CP 2":
    @Event eachPlayer
    @Condition (eventPlayer.isHoldingButton(Button.ULTIMATE) or eventPlayer.isHoldingButton(Button.MELEE)) == true
    @Condition eventPlayer.MovingElementConfirm == true
    @Condition eventPlayer.EditingTool != 9
    
    wait(0.5, Wait.ABORT_WHEN_FALSE)
    eventPlayer.MovingElementConfirm = false
    stopChasingVariable(eventPlayer.MovingElement)
    destroyEffect(eventPlayer.TempRing)
    if eventPlayer.LocalC[2] == 2:
        AJCenable()
        eventPlayer.setMoveSpeed(100)
    #Discard
    if eventPlayer.isHoldingButton(Button.ULTIMATE):
        While1()
        smallMessage(eventPlayer, "Edit discarded")
        eventPlayer.CreatorState = eventPlayer.LocalC[2]
        eventPlayer.EditingTool = eventPlayer.LocalC[3]
        if eventPlayer.CreatorState == 3:
            CPselect()
            return
        createEffect(eventPlayer, Effect.RING, Color.PURPLE, eventPlayer.TempCP[0], eventPlayer.TempCP[true].x, EffectReeval.NONE)
        eventPlayer.TempRing.append(getLastCreatedEntity())
        eventPlayer.MovingElement = eventPlayer.TempCP[0]
        eventPlayer.stopCamera()
        return
    While1()
    MoveCPconfirm()


def MoveCPconfirm():
    @Name "Confirm Temporary CP sub"
    
    CtrlZ()
    eventPlayer.LocalC[false] = eventPlayer.MovingElement
    eventPlayer.LocalC[true] = eventPlayer.LocalC[true] * (Vector.UP + Vector.FORWARD) + Vector.LEFT * eventPlayer.EditRadius
    eventPlayer.CreatorState = eventPlayer.LocalC[2]
    eventPlayer.EditingTool = eventPlayer.LocalC[3]
    wait()
    eventPlayer.TempCP[false] = eventPlayer.LocalC[0]
    eventPlayer.TempCP[true] = eventPlayer.LocalC[true]
    createEffect(eventPlayer, Effect.RING, Color.PURPLE, eventPlayer.LocalC[false], eventPlayer.EditRadius, EffectReeval.NONE)
    eventPlayer.TempRing.append(getLastCreatedEntity())
    __skipIf__(eventPlayer.EditingTool == 2 or eventPlayer.EditingTool == 5, true)
    eventPlayer.stopCamera()


rule "Confirm new position":
    @Event eachPlayer
    @Condition eventPlayer.CreatorState == 3
    @Condition eventPlayer.EditingTool == 2 == true
    @Condition (eventPlayer.isHoldingButton(Button.MELEE) or eventPlayer.isHoldingButton(Button.ULTIMATE)) == true
    
    #Confirm
    if eventPlayer.isHoldingButton(Button.MELEE):
        While1()
        CPposition[eventPlayer.Checkpoint] = eventPlayer.LocalC[0]
        Radius_VA_GoBackCP[eventPlayer.Checkpoint] = eventPlayer.LocalC[true]
        CPselect()
        CPchange()
        return
    #Discard
    if eventPlayer.isHoldingButton(Button.ULTIMATE):
        While1()
        CPselect()
        smallMessage(getAllPlayers(), "Edit discarded")
        return


rule "Thanos":
    @Event eachPlayer
    @Condition (eventPlayer.EditingTool == 1 or eventPlayer.EditingTool == 9 and eventPlayer.EditState == -4) == true
    @Condition (eventPlayer.isHoldingButton(Button.INTERACT) if eventPlayer.EditingTool == 1 else eventPlayer.isHoldingButton(Button.ABILITY_2) and not eventPlayer.isHoldingButton(Button.PRIMARY_FIRE)) == true
    @Condition (distance(eventPlayer.MovingElement, raycast(eventPlayer.MovingElement, eventPlayer.MovingElement - Vector.UP, [], eventPlayer, false).getHitPosition()) < 1 or distance(eventPlayer.MovingElement, raycast(eventPlayer.MovingElement, eventPlayer.MovingElement + Vector.UP, [], eventPlayer, false).getHitPosition()) < 1) == true
    
    eventPlayer.Roaming = -1
    wait(0.048)
    eventPlayer.teleport(eventPlayer.MovingElement)
    wait(0.048)
    waitUntil(eventPlayer.isOnGround() or eventPlayer.getSpeed() > 7 or eventPlayer.getSpeed() < 0.08, 1)
    if eventPlayer.isOnGround() or eventPlayer.getSpeed() < 0.08:
        wait(0.25)
        eventPlayer.MovingElement = eventPlayer.getPosition()
    else:
        smallMessage(eventPlayer, "sorry I failed")
    eventPlayer.Roaming = true


rule "Abilities / View Angle / Recenter":
    @Event eachPlayer
    @Condition eventPlayer.EditingTool == 3
    @Condition (eventPlayer.getThrottle().z or eventPlayer.isHoldingButton(Button.PRIMARY_FIRE) or eventPlayer.isHoldingButton(Button.SECONDARY_FIRE) or eventPlayer.isHoldingButton(Button.ABILITY_1) or eventPlayer.isHoldingButton(Button.ABILITY_2) or eventPlayer.isHoldingButton(Button.ULTIMATE) or eventPlayer.isHoldingButton(Button.INTERACT) or eventPlayer.isHoldingButton(Button.RELOAD)) == true
    
    #Centerless / Ability Count Toggle
    if eventPlayer.isHoldingButton(Button.INTERACT):
        eventPlayer.Text[false] = "Ability Count Toggle"
        eventPlayer.HoldTime = 100
        chase(eventPlayer.HoldTime, false, duration=2, ChaseReeval.NONE)
        waitUntil(not eventPlayer.isHoldingButton(Button.INTERACT), 2)
        eventPlayer.HoldTime = false
        if eventPlayer.isHoldingButton(Button.INTERACT):
            AbilityCount[eventPlayer.Checkpoint] = false if AbilityCount[eventPlayer.Checkpoint][0] else true
            AbilityEnableDisable()
            eventPlayer.AbilityCount = Vector.LEFT * Vector.UP
        else:
            Prime[eventPlayer.Checkpoint] = Prime[eventPlayer.Checkpoint] * 7 if Prime[eventPlayer.Checkpoint] % 7 else Prime[eventPlayer.Checkpoint] / 7
    #Ability Enable/Disable / Ability Count
    if eventPlayer.isHoldingButton(Button.SECONDARY_FIRE) or eventPlayer.isHoldingButton(Button.ABILITY_1) or eventPlayer.isHoldingButton(Button.ABILITY_2):
        wait()
        #Rocket Punch
        if eventPlayer.isHoldingButton(Button.SECONDARY_FIRE):
            #Ability count
            if AbilityCount[eventPlayer.Checkpoint]:
                eventPlayer.AbilityCount += (Vector.LEFT * Vector.UP if eventPlayer.isHoldingButton(Button.CROUCH) and not eventPlayer.AbilityCount.x else Vector.LEFT) * (-1 if eventPlayer.isHoldingButton(Button.CROUCH) else true)
                AbilityCount[eventPlayer.Checkpoint] = [true, eventPlayer.AbilityCount]
                #On / Off
            else:
                eventPlayer.disallowButton(Button.SECONDARY_FIRE)
                eventPlayer.cancelPrimaryAction()
                Prime[eventPlayer.Checkpoint] *= 2 if Prime[eventPlayer.Checkpoint] % 2 else 0.5
            #Uppercut
        elif eventPlayer.isHoldingButton(Button.ABILITY_1):
            #Ability count
            if AbilityCount[eventPlayer.Checkpoint]:
                eventPlayer.AbilityCount += (Vector.LEFT * Vector.UP if eventPlayer.isHoldingButton(Button.CROUCH) and not eventPlayer.AbilityCount.y else Vector.UP) * (-1 if eventPlayer.isHoldingButton(Button.CROUCH) else true)
                AbilityCount[eventPlayer.Checkpoint] = [true, eventPlayer.AbilityCount]
                #On / Off
            else:
                eventPlayer.cancelPrimaryAction()
                Prime[eventPlayer.Checkpoint] *= 3 if Prime[eventPlayer.Checkpoint] % 3 else true / 3
            #Slam
        else:
            #Ability count
            if AbilityCount[eventPlayer.Checkpoint]:
                eventPlayer.AbilityCount += (Vector.LEFT * Vector.UP if eventPlayer.isHoldingButton(Button.CROUCH) and not eventPlayer.AbilityCount.z else Vector.FORWARD) * (-1 if eventPlayer.isHoldingButton(Button.CROUCH) else true)
                AbilityCount[eventPlayer.Checkpoint] = [true, eventPlayer.AbilityCount]
                #On / Off
            else:
                eventPlayer.cancelPrimaryAction()
                Prime[eventPlayer.Checkpoint] *= 5 if Prime[eventPlayer.Checkpoint] % 5 else 0.2
        AbilityEnableDisable()
        While1()
        eventPlayer.allowButton(Button.SECONDARY_FIRE)
        AbilityCDreset()
        return
    #View Angle
    while eventPlayer.isHoldingButton(Button.PRIMARY_FIRE):
        Radius_VA_GoBackCP[eventPlayer.Checkpoint] = vect(false, eventPlayer.getHorizontalFacingAngle(), false) + (Radius_VA_GoBackCP[eventPlayer.Checkpoint] * (Vector.LEFT + Vector.FORWARD))
        wait(0.048)
    #Remove View Angle
    if eventPlayer.isHoldingButton(Button.RELOAD):
        Radius_VA_GoBackCP[eventPlayer.Checkpoint] *= Vector.LEFT + Vector.FORWARD
    #Exit
    if eventPlayer.isHoldingButton(Button.ULTIMATE):
        While1()
        CPselect()


rule "Create a connection":
    @Event eachPlayer
    @Condition eventPlayer.EditingTool == 7
    @Condition (eventPlayer.getThrottle().z or eventPlayer.isHoldingButton(Button.MELEE) or eventPlayer.isHoldingButton(Button.ULTIMATE) or eventPlayer.isHoldingButton(Button.ABILITY_2)) == true
    
    #Forward / Backward
    if eventPlayer.getThrottle().z:
        Z()
    #Hidden CP
    if eventPlayer.isHoldingButton(Button.ABILITY_2) and HiddenCP_TpRad_TT[eventPlayer.Checkpoint].x:
        While1()
        eventPlayer.Roaming = true
        eventPlayer.Checkpoint = HiddenCP_TpRad_TT[eventPlayer.Checkpoint].x
        CPchange()
        eventPlayer.Roaming = false
    #Connect
    if eventPlayer.SaveCP != eventPlayer.Checkpoint and eventPlayer.isHoldingButton(Button.MELEE):
        While1()
        if not eventPlayer.Checkpoint:
            smallMessage(getAllPlayers(), "Spawn not eligible")
        elif any([i == eventPlayer.Checkpoint or i.x == eventPlayer.Checkpoint or i.y == eventPlayer.Checkpoint or i.z == eventPlayer.Checkpoint for i in Connections[eventPlayer.SaveCP]]):
            smallMessage(eventPlayer, "Already connected")
        else:
            CtrlZ()
            if Connections[eventPlayer.SaveCP].x or Connections[eventPlayer.SaveCP].y or Connections[eventPlayer.SaveCP].z:
                if not Connections[eventPlayer.SaveCP].x:
                    Connections[eventPlayer.SaveCP] += Vector.LEFT * eventPlayer.Checkpoint
                elif not Connections[eventPlayer.SaveCP].y:
                    Connections[eventPlayer.SaveCP] += Vector.UP * eventPlayer.Checkpoint
                else:
                    Connections[eventPlayer.SaveCP] += Vector.FORWARD * eventPlayer.Checkpoint
            else:
                Connections[eventPlayer.SaveCP] = vect(Connections[eventPlayer.SaveCP], eventPlayer.Checkpoint, false) if Connections[eventPlayer.SaveCP] else eventPlayer.Checkpoint
            ConnectionCopy()
    #> CP select
    if eventPlayer.isHoldingButton(Button.ULTIMATE):
        While1()
        ConnectionCopy()
        return


def ConnectionCopy():
    @Name "Connection Copy sub"
    
    eventPlayer.Roaming = true
    eventPlayer.EditingTool = false
    eventPlayer.Checkpoint = eventPlayer.SaveCP
    teleport()
    SetDiverge()
    wait(0.25)
    eventPlayer.Roaming = false


rule "Remove connection":
    @Event eachPlayer
    @Condition eventPlayer.EditingTool == 11
    @Condition (eventPlayer.isHoldingButton(Button.MELEE) or eventPlayer.isHoldingButton(Button.ULTIMATE)) == true
    
    if eventPlayer.isHoldingButton(Button.MELEE):
        While1()
        if Radius_VA_GoBackCP[eventPlayer.Checkpoint].z == eventPlayer.SaveCP:
            if any([i != eventPlayer.SaveCP and (player == eventPlayer.Checkpoint or player.x == eventPlayer.Checkpoint or player.y == eventPlayer.Checkpoint or player.z == eventPlayer.Checkpoint) for player, i in Connections]):
                Radius_VA_GoBackCP[eventPlayer.Checkpoint] = Radius_VA_GoBackCP[eventPlayer.Checkpoint] * (Vector.LEFT + Vector.UP) + (Vector.FORWARD * (Connections.index([player for player, i in Connections if i != eventPlayer.SaveCP and (player == eventPlayer.Checkpoint or player.x == eventPlayer.Checkpoint or player.y == eventPlayer.Checkpoint or player.z == eventPlayer.Checkpoint)])))
            else:
                smallMessage(eventPlayer, "Could not reconnect - Cannot remove")
                goto lbl_0
        if Connections[eventPlayer.SaveCP].x or Connections[eventPlayer.SaveCP].y or Connections[eventPlayer.SaveCP].z:
            Connections[eventPlayer.SaveCP] *= vect(Connections[eventPlayer.SaveCP].x != eventPlayer.Checkpoint, Connections[eventPlayer.SaveCP].y != eventPlayer.Checkpoint, Connections[eventPlayer.SaveCP].z != eventPlayer.Checkpoint)
        else:
            Connections[eventPlayer.SaveCP] = false
    else:
        While1()
    lbl_0:
    eventPlayer.Checkpoint = eventPlayer.SaveCP
    eventPlayer.EditingTool = false
    eventPlayer.Roaming = false
    SetDiverge()


rule "> Hidden CP":
    @Event eachPlayer
    #@Condition eventPlayer.ZU == eventPlayer.LUL * eventPlayer.W
    @Condition eventPlayer.isHoldingButton(Button.ABILITY_2) == true
    @Condition eventPlayer.CreatorState == 3
    @Condition eventPlayer.EditingTool == false
    @Condition Prime[eventPlayer.Checkpoint] % 11 == true
    
    #Activate Rule "HUD" ^^  <-- Ignore, this used to be a hidden feature in the Creator
    if HiddenCP_TpRad_TT[eventPlayer.Checkpoint].x:
        While1()
        eventPlayer.Roaming = true
        eventPlayer.Checkpoint = HiddenCP_TpRad_TT[eventPlayer.Checkpoint].x
        CPchange()
        eventPlayer.Roaming = false
    else:
        While1()
        AJCenable()
        eventPlayer.setMoveSpeed(100)
        eventPlayer.EditingTool = -3
        eventPlayer.CreatorState = 2
        eventPlayer.stopCamera()
        eventPlayer.Roaming = true
        CreatorRing()


rule "Create Hidden CP":
    @Event eachPlayer
    @Condition eventPlayer.EditingTool == -3
    @Condition (eventPlayer.isHoldingButton(Button.MELEE) or eventPlayer.isHoldingButton(Button.ULTIMATE)) == true
    
    #Create Hidden CP
    if not HiddenCP_TpRad_TT[eventPlayer.Checkpoint].x and eventPlayer.isHoldingButton(Button.MELEE):
        While1()
        eventPlayer.AddRemove = 1
        CreateCP()
        HiddenCP_TpRad_TT[eventPlayer.Checkpoint] = HiddenCP_TpRad_TT[eventPlayer.Checkpoint] * (Vector.UP + Vector.FORWARD) + (vect(eventPlayer.Checkpoint + true, false, false))
        eventPlayer.Checkpoint += true
        CPchange()
        CPselect()
    else:
        While1()
        CPselect()


rule "Menu 2":
    @Event eachPlayer
    @Condition eventPlayer.CreatorState == 3
    @Condition eventPlayer.EditingTool == 4
    @Condition (eventPlayer.isHoldingButton(Button.ULTIMATE) or eventPlayer.isHoldingButton(Button.ABILITY_1) or eventPlayer.isHoldingButton(Button.ABILITY_2) or eventPlayer.isHoldingButton(Button.SECONDARY_FIRE) or eventPlayer.isHoldingButton(Button.MELEE) or eventPlayer.isHoldingButton(Button.PRIMARY_FIRE) or eventPlayer.isHoldingButton(Button.INTERACT)) == true
    
    if Prime[eventPlayer.Checkpoint] % 11:
        #> Pro Missions
        if eventPlayer.isHoldingButton(Button.ABILITY_2):
            While1()
            eventPlayer.EditingTool = 12
            eventPlayer.PrimeOffset = sorted(eventPlayer.MissionTime).last() - 9900
            eventPlayer.EditTime = eventPlayer.MissionTime[eventPlayer.MissionSelect]
            return
        #> Time trial
        if eventPlayer.isHoldingButton(Button.PRIMARY_FIRE):
            While1()
            eventPlayer.EditRadius = 2
            eventPlayer.EditTime = HiddenCP_TpRad_TT[eventPlayer.Checkpoint].z if HiddenCP_TpRad_TT[eventPlayer.Checkpoint].z else -5
            #throw off
            eventPlayer.MovingElement = true
            eventPlayer.Roaming = true
            eventPlayer.EditingTool = -5
            FPedit()
            return
        #Effect Lock
        if eventPlayer.CPData[true] and eventPlayer.isHoldingButton(Button.ABILITY_1):
            if len(eventPlayer.Local_Pos) == eventPlayer.CPcount:
                goto lbl_0
            eventPlayer.Text[false] = "Effect Checkpoint Lock Toggle"
            eventPlayer.HoldTime = 100
            chase(eventPlayer.HoldTime, false, duration=2, ChaseReeval.NONE)
            waitUntil(not eventPlayer.isHoldingButton(Button.ABILITY_1), 2)
            eventPlayer.HoldTime = false
            #Effect CP Lock
            if eventPlayer.isHoldingButton(Button.ABILITY_1):
                Prime[eventPlayer.Checkpoint] *= 29 if Prime[eventPlayer.Checkpoint] % 29 else true / 29
            else:
                lbl_0:
                While1()
                if not eventPlayer.Diverge2:
                    Prime[eventPlayer.Checkpoint] *= 17 if Prime[eventPlayer.Checkpoint] % 17 else true / 17
                elif eventPlayer.Diverge2 == 1:
                    Prime[eventPlayer.Checkpoint] *= 19 if Prime[eventPlayer.Checkpoint] % 19 else true / 19
                elif eventPlayer.Diverge2 == 2:
                    Prime[eventPlayer.Checkpoint] *= 23 if Prime[eventPlayer.Checkpoint] % 23 else true / 23
            CPchange()
    #> Effects
    if eventPlayer.isHoldingButton(Button.SECONDARY_FIRE):
        While1()
        #3D to 2D
        eventPlayer.Effactual = Effect_[eventPlayer.Checkpoint]
        #Variable that switches between the Effect slots
        eventPlayer.LocalC[7] = false
        MultiPurposeCamera()
        if eventPlayer.CPData[true]:
            #Order because of Quick Time Change Rule
            EffectSelect()
            #Reset Effects Visually
            CPfail()
            eventPlayer.EditingTool = 10
        else:
            CreateEffect()
        return
    #> Teleport
    if eventPlayer.isHoldingButton(Button.INTERACT):
        While1()
        if not HiddenCP_TpRad_TT[eventPlayer.Checkpoint]:
            HiddenCP_TpRad_TT[eventPlayer.Checkpoint] = Vector.LEFT * Vector.UP
        #Creator
        eventPlayer.LocalC[2] = 3
        #Editing Tool
        eventPlayer.LocalC[3] = 5
        if not TP[eventPlayer.Checkpoint]:
            MultiPurposeCamera()
            #Save to go back
            eventPlayer.LocalC[false] = CPposition[eventPlayer.Checkpoint]
            #X Com = Radius
            eventPlayer.LocalC[true] = vect(2, false, false)
            wait()
            MoveTempCP()
            return
        #throw off
        eventPlayer.MovingElement = eventPlayer
        eventPlayer.EditingTool = 5
    #> Remove CP
    if eventPlayer.isHoldingButton(Button.MELEE) and eventPlayer.isHoldingButton(Button.RELOAD) and eventPlayer.Checkpoint:
        While1()
        if not hostPlayer:
            smallMessage(eventPlayer, "Host Only Feature")
            return
        eventPlayer.EditingTool = 8
        return
    #> Select 1
    if eventPlayer.isHoldingButton(Button.ULTIMATE):
        While1()
        eventPlayer.EditingTool = false
        return


rule "Time trial Menu":
    @Event eachPlayer
    @Condition eventPlayer.EditingTool == -5
    @Condition (eventPlayer.isHoldingButton(Button.ULTIMATE) or eventPlayer.isHoldingButton(Button.RELOAD) or eventPlayer.isHoldingButton(Button.MELEE) or eventPlayer.isHoldingButton(Button.ABILITY_2) or eventPlayer.isHoldingButton(Button.INTERACT) or eventPlayer.isHoldingButton(Button.SECONDARY_FIRE)) == true
    
    #Pioneer
    if eventPlayer.isHoldingButton(Button.RELOAD):
        if eventPlayer.ElementLimiter < 4:
            goto lbl_0
        smallMessage(eventPlayer, "Too many elements! (4/4)")
        return
        lbl_0:
        While1()
        async(TimeTrialPioneer, AsyncBehavior.RESTART)
        return
    #Set / Remove Time
    if eventPlayer.isHoldingButton(Button.ABILITY_2):
        While1()
        HiddenCP_TpRad_TT[eventPlayer.Checkpoint] = HiddenCP_TpRad_TT[eventPlayer.Checkpoint] * vect(true, true, false) + (Vector.FORWARD * (false if HiddenCP_TpRad_TT[eventPlayer.Checkpoint].z else eventPlayer.EditTime))
        return
    #Move Temp CP
    if not eventPlayer.isHoldingButton(Button.PRIMARY_FIRE) and eventPlayer.isHoldingButton(Button.INTERACT) and eventPlayer.MovingElement == eventPlayer.TempCP[false]:
        EditGenTempCP()
    #Confirm new CP
    if eventPlayer.isHoldingButton(Button.MELEE) and eventPlayer.MovingElement == eventPlayer.TempCP[false]:
        eventPlayer.teleport(CPposition[eventPlayer.Checkpoint])
        While1()
        CreateCP()
        HiddenCP_TpRad_TT[eventPlayer.Checkpoint] = HiddenCP_TpRad_TT[eventPlayer.Checkpoint] * (Vector.LEFT + Vector.UP) + vect(false, false, eventPlayer.EditTime)
        eventPlayer.EditingTool = 4
        CPselect()
        return
    #Time Trial + Toggle
    if eventPlayer.isHoldingButton(Button.PRIMARY_FIRE) and eventPlayer.isHoldingButton(Button.SECONDARY_FIRE):
        HiddenCP_TpRad_TT[eventPlayer.Checkpoint] *= vect(true, true, -1)
        eventPlayer.EditTime *= -1
    #Exit
    if eventPlayer.isHoldingButton(Button.ULTIMATE):
        While1()
        eventPlayer.EditingTool = 4
        CPselect()
        return


rule "Time trial - Time = 0":
    @Event eachPlayer
    @Condition eventPlayer.EditingTool == -6
    @Condition (not eventPlayer.TTtimer or eventPlayer.isHoldingButton(Button.ULTIMATE) or eventPlayer.isHoldingButton(Button.RELOAD)) == true
    
    #Restart
    if eventPlayer.isHoldingButton(Button.RELOAD):
        stopChasingVariable(eventPlayer.TTtimer)
        TimeTrialPioneer()
        #Back
    elif eventPlayer.isHoldingButton(Button.ULTIMATE):
        While1()
        destroyEffect(eventPlayer.TempRing)
        TimeTrialOpt()
        eventPlayer.TempCP = false
        eventPlayer.LocalC[7] = false
        CPfail()
        #Time = 0
    else:
        eventPlayer.Roaming = true
        GenerateTempCP()
        TimeTrialOpt()


def TimeTrial():
    @Name "Time Trial sub"
    
    eventPlayer.disallowButton(Button.ABILITY_2)
    eventPlayer.Shift = true
    eventPlayer.cancelPrimaryAction()
    DisallowButtons()
    eventPlayer.TTtimer = eventPlayer.EditTime
    eventPlayer.Start = false
    if Radius_VA_GoBackCP[eventPlayer.Checkpoint].y:
        async(SetFacing, AsyncBehavior.RESTART)
    eventPlayer.CPData[3] = eventPlayer.CPData[7]
    eventPlayer.CPData[4] = eventPlayer.CPData[8]
    teleport()
    eventPlayer.LockE = eventPlayer.CPData[6]
    eventPlayer.Effvisible = []
    eventPlayer.DetectorBounce = false
    eventPlayer.startForcingPosition(eventPlayer.CPData[3], false)
    wait(0.336 if eventPlayer.ForceAbility == 2 else 0.16)
    eventPlayer.Shift = false
    eventPlayer.stopForcingPosition()
    eventPlayer.stopFacing()
    eventPlayer.Roaming = eventPlayer.TTtimer > false
    AllowButtons()
    MissionReset()
    async(RPFix, AsyncBehavior.RESTART)
    if eventPlayer.EditingTool == -5:
        eventPlayer.EditingTool = -6
    eventPlayer.allowButton(Button.ABILITY_2)
    eventPlayer.ForceAbility = false
    waitUntil(eventPlayer.getHorizontalSpeed() > 0.05 or eventPlayer.isFiringSecondaryFire() or eventPlayer.Shift, 99999)
    if eventPlayer.Shift:
        return
    chase(eventPlayer.TTtimer, false, rate=eventPlayer.Start * true, ChaseReeval.DESTINATION_AND_RATE)
    eventPlayer.Start = true
    eventPlayer.CPtimer = 0


def TimeTrialPioneer():
    @Name "Time Trial Pioneer sub"
    
    destroyEffect(eventPlayer.TempRing)
    eventPlayer.Start = true
    TimeTrial()


def TimeTrialOpt():
    @Name "Time Trial optimization sub"
    
    stopChasingVariable(eventPlayer.TTtimer)
    eventPlayer.EditingTool = -5
    eventPlayer.Start = false


rule "Teleport":
    @Event eachPlayer
    @Condition eventPlayer.EditingTool == 5
    @Condition (eventPlayer.MovingElement == eventPlayer.TempCP[0] or eventPlayer.isHoldingButton(Button.ULTIMATE) or eventPlayer.isHoldingButton(Button.INTERACT) or eventPlayer.isHoldingButton(Button.MELEE) and eventPlayer.isHoldingButton(Button.RELOAD)) == true
    
    #Confirmed
    if eventPlayer.MovingElement == eventPlayer.TempCP[0]:
        CtrlZ()
        TP[eventPlayer.Checkpoint] = eventPlayer.LocalC[0]
        HiddenCP_TpRad_TT[eventPlayer.Checkpoint] = HiddenCP_TpRad_TT[eventPlayer.Checkpoint] * (Vector.LEFT + Vector.FORWARD) + vect(false, eventPlayer.LocalC[true].x, false)
        wait()
        destroyEffect(eventPlayer.TempRing)
        CPchange()
        CPselect()
    #> Exit
    if eventPlayer.isHoldingButton(Button.ULTIMATE):
        While1()
        CPselect()
    #Edit position
    if eventPlayer.isHoldingButton(Button.INTERACT):
        While1()
        MultiPurposeCamera()
        eventPlayer.LocalC[false] = TP[eventPlayer.Checkpoint] if TP[eventPlayer.Checkpoint] else CPposition[eventPlayer.Checkpoint]
        eventPlayer.LocalC[true] = vect(HiddenCP_TpRad_TT[eventPlayer.Checkpoint].y if TP[eventPlayer.Checkpoint] else 2, false, false)
        MoveTempCP()
    #Remove TP
    if eventPlayer.isHoldingButton(Button.MELEE) and eventPlayer.isHoldingButton(Button.RELOAD):
        While1()
        TP[eventPlayer.Checkpoint] = false
        HiddenCP_TpRad_TT[eventPlayer.Checkpoint] *= Vector.LEFT + Vector.FORWARD
        CPchange()


rule "Remove CP":
    @Event eachPlayer
    @Condition eventPlayer.EditingTool == 8
    @Condition (eventPlayer.isHoldingButton(Button.ULTIMATE) or eventPlayer.isHoldingButton(Button.MELEE)) == true
    
    #> CP select
    if eventPlayer.isHoldingButton(Button.ULTIMATE):
        While1()
        eventPlayer.Remove = false
        eventPlayer.EditingTool = 4
        CPselect()
    if eventPlayer.Remove or eventPlayer.isHoldingButton(Button.MELEE):
        While1()
        eventPlayer.Roaming = true
        if not eventPlayer.Remove:
            eventPlayer.Remove = true
            eventPlayer.SaveCP = Radius_VA_GoBackCP[eventPlayer.Checkpoint].z
            eventPlayer.LocalC = 0
            eventPlayer.LocalC[false] = eventPlayer.Checkpoint
            return
        if eventPlayer.Remove:
            wait(0.25)
            for eventPlayer.AddRemove in range(false, len(CPposition), true):
                #If a Go Back CP of a subsequent CP, check for other connections
                if Radius_VA_GoBackCP[eventPlayer.AddRemove].z == eventPlayer.Checkpoint:
                    wait()
                    for eventPlayer.AddRemove2 in range(false, len(CPposition), true):
                        #If a subsequent CP is connected somewhere else, do not remove and change its Go Back CP
                        if ((any([i == eventPlayer.AddRemove or i.x == eventPlayer.AddRemove or i.y == eventPlayer.AddRemove or i.z == eventPlayer.AddRemove for i in Connections[eventPlayer.AddRemove2]])) and eventPlayer.AddRemove2 != eventPlayer.Checkpoint) and CPposition[eventPlayer.AddRemove2]:
                            Radius_VA_GoBackCP[eventPlayer.AddRemove] = Radius_VA_GoBackCP[eventPlayer.AddRemove] * (Vector.LEFT + Vector.UP) + vect(false, false, eventPlayer.AddRemove2)
                            break
                    #No other connections? RIP
                    if Radius_VA_GoBackCP[eventPlayer.AddRemove].z == eventPlayer.Checkpoint:
                        Radius_VA_GoBackCP[eventPlayer.AddRemove] = -1
                        #Add to a list of CPs to Remove
                        eventPlayer.LocalC.append(eventPlayer.AddRemove)
            if eventPlayer.Checkpoint == eventPlayer.LocalC[false]:
                CPposition[eventPlayer.Checkpoint] = 0
                del eventPlayer.LocalC[false]
                if eventPlayer.LocalC == []:
                    goto lbl_0
                eventPlayer.Checkpoint = eventPlayer.LocalC[false]
            if eventPlayer.LocalC != []:
                goto RULE_START
            lbl_0:
            RemoveCP()
        eventPlayer.Remove = false
        eventPlayer.Checkpoint = eventPlayer.SaveCP
        eventPlayer.Roaming = false
        CtrlZ()
        eventPlayer.EditingTool = 0
        CPchange()


def RemoveCP():
    @Name "Remove CP sub"
    
    while 0 in CPposition:
        wait()
        eventPlayer.Detector2 = CPposition.index(0)
        Connections = [player * vect(false, true, true) if player.x == eventPlayer.Detector2 else player * vect(true, false, true) if player.y == eventPlayer.Detector2 else player * vect(true, true, false) if player.z == eventPlayer.Detector2 else player * false if player == eventPlayer.Detector2 else player for player in Connections]
        Connections = [player - Vector.LEFT if player.x > eventPlayer.Detector2 else player for player in Connections]
        Connections = [player - Vector.UP if player.y > eventPlayer.Detector2 else player for player in Connections]
        Connections = [player - Vector.FORWARD if player.z > eventPlayer.Detector2 else player for player in Connections]
        Connections = [player - true if player > eventPlayer.Detector2 else player for player in Connections]
        HiddenCP_TpRad_TT = [player * vect(false, true, true) if player.x == eventPlayer.Detector2 else player - Vector.LEFT if player.x > eventPlayer.Detector2 else player for player in HiddenCP_TpRad_TT]
        Radius_VA_GoBackCP = [player - Vector.FORWARD if player.z > eventPlayer.Detector2 else player for player in Radius_VA_GoBackCP]
        del Radius_VA_GoBackCP[eventPlayer.Detector2]
        del Connections[eventPlayer.Detector2]
        del Mission[eventPlayer.Detector2]
        del Prime[eventPlayer.Detector2]
        del AbilityCount[eventPlayer.Detector2]
        del HiddenCP_TpRad_TT[eventPlayer.Detector2]
        del TP[eventPlayer.Detector2]
        del Effect_[eventPlayer.Detector2]
        del CPposition[eventPlayer.Detector2]
        wait(0.25)


/*
rule "Ablock":
*/

rule "Ablock / Slamlock On - Communicate \"Thanks\"":
    @Event eachPlayer
    @Condition eventPlayer.isCommunicating(Comms.THANKS) == true
    
    eventPlayer.Ablock = (false if eventPlayer.Ablock == 2 else 2) if eventPlayer.Ablock else 1


rule "Ability Lock - Rocket Punch Disabler":
    @Event eachPlayer
    @Condition eventPlayer.Ablock == true
    @Condition eventPlayer.Grace == true
    @Condition eventPlayer.isFiringSecondaryFire() == false
    @Condition eventPlayer.Roaming == (eventPlayer.EditingTool == -4)
    
    waitUntil(not eventPlayer.Grace, 99999)
    waitUntil(eventPlayer.Shift or distance(eventPlayer.getPosition(), eventPlayer.CPData[7]) > eventPlayer.CPData[8] + 0.5, 99999)
    if eventPlayer.Shift:
        return
    waitUntil(eventPlayer.Shift, 0.45)
    if eventPlayer.Shift:
        return
    eventPlayer.setSecondaryFireEnabled(eventPlayer.Effabi[eventPlayer.Effactual][0] if eventPlayer.Effdetect else false)


rule "Ability Lock - Uppercut Disabler":
    @Event eachPlayer
    @Condition eventPlayer.Ablock == true
    @Condition eventPlayer.isUsingAbility1() == true
    @Condition eventPlayer.Roaming == (eventPlayer.EditingTool == -4)
    
    waitUntil(eventPlayer.Shift or eventPlayer.getAbilityCooldown(Button.ABILITY_1) == true, 99999)
    if eventPlayer.Shift:
        return
    eventPlayer.setAbility1Enabled(eventPlayer.Effabi[eventPlayer.Effactual][true] if eventPlayer.Effdetect else false)


/*
rule "Missions":
*/

rule "Missions Menu":
    @Event eachPlayer
    @Condition eventPlayer.EditingTool == 12
    @Condition (eventPlayer.getThrottle() == true or eventPlayer.isHoldingButton(Button.ULTIMATE) or eventPlayer.isHoldingButton(Button.MELEE) or eventPlayer.isHoldingButton(Button.INTERACT) or eventPlayer.isHoldingButton(Button.RELOAD) or eventPlayer.isHoldingButton(Button.ABILITY_1)) == true
    
    #Select Slot
    if eventPlayer.getThrottle().z:
        eventPlayer.MissionSelect += (-1 if eventPlayer.MissionSelect > false else 3) if eventPlayer.getThrottle().z > false else true if eventPlayer.MissionSelect < 3 else -3
        eventPlayer.EditTime = eventPlayer.MissionTime[eventPlayer.MissionSelect]
        return
    #Select Mission
    if eventPlayer.getThrottle().x:
        eventPlayer.Mission[eventPlayer.MissionSelect] += (-1 if eventPlayer.Mission[eventPlayer.MissionSelect] > false else 12) if eventPlayer.getThrottle().x > false else true if eventPlayer.Mission[eventPlayer.MissionSelect] < 12 else -12
        return
    #Remove Mission
    if eventPlayer.isHoldingButton(Button.MELEE):
        While1()
        eventPlayer.Mission[eventPlayer.MissionSelect] = null
        eventPlayer.MissionTime[eventPlayer.MissionSelect] = null
        eventPlayer.EditTime = false
        MissionSet()
        return
    #Back
    if eventPlayer.isHoldingButton(Button.ULTIMATE):
        While1()
        if any(eventPlayer.Mission):
            MissionSet()
        else:
            Mission[eventPlayer.Checkpoint] = true
        wait(0.25)
        CPselect()
        return
    #Turn Mission into a Lock
    if eventPlayer.isHoldingButton(Button.INTERACT):
        While1()
        if eventPlayer.MissionTime[eventPlayer.MissionSelect] >= 9900:
            eventPlayer.MissionTime[eventPlayer.MissionSelect] = 0
        else:
            if any([player >= 9900 for player in eventPlayer.MissionTime]):
                eventPlayer.PrimeOffset = sorted(eventPlayer.MissionTime).last() - 9900
                eventPlayer.MissionTime[eventPlayer.MissionSelect] = 9900 + eventPlayer.PrimeOffset
            else:
                eventPlayer.MissionTime[eventPlayer.MissionSelect] = 9930
                eventPlayer.PrimeOffset = 30
        MissionSet()
        wait(0.25)
    #Select CP to Lock
    if eventPlayer.isHoldingButton(Button.RELOAD) and any(eventPlayer.Local_Rad.slice(false, 3)):
        eventPlayer.Diverge2 += true if eventPlayer.Diverge2 < 2 else -2
        wait()
        if not eventPlayer.Local_Rad[eventPlayer.Diverge2]:
            goto RULE_START
        eventPlayer.Diverge = CPposition.index(eventPlayer.Local_Pos[eventPlayer.Diverge2])
    #Lock CP
    if eventPlayer.isHoldingButton(Button.ABILITY_1):
        While1()
        eventPlayer.PrimeOffset *= eventPlayer.PrimeNumbers[eventPlayer.Diverge2] if eventPlayer.PrimeOffset % eventPlayer.PrimeNumbers[eventPlayer.Diverge2] else true / eventPlayer.PrimeNumbers[eventPlayer.Diverge2]
        for eventPlayer.Detector3 in range(false, 4, true):
            if eventPlayer.MissionTime[eventPlayer.Detector3] > 9900:
                eventPlayer.MissionTime[eventPlayer.Detector3] = 9900 + eventPlayer.PrimeOffset
        MissionSet()
        wait(0.25)


def MissionSet():
    @Name "Append Missions sub"
    
    eventPlayer.LocalC[false] = 1
    for eventPlayer.Detector1 in range(false, 4, true):
        eventPlayer.MissionSet = eventPlayer.PrimeNumbers[sorted([player for player in eventPlayer.Mission if player])[eventPlayer.Detector1] - true]
        if not eventPlayer.MissionSet:
            goto lbl_0
        eventPlayer.LocalC[false] *= eventPlayer.MissionSet if eventPlayer.LocalC[0] % eventPlayer.MissionSet else 1 / eventPlayer.MissionSet
    lbl_0:
    Mission[eventPlayer.Checkpoint] = [eventPlayer.LocalC[0]]
    for eventPlayer.Detector1 in range(false, 4, true):
        Mission[eventPlayer.Checkpoint].append(eventPlayer.MissionTime[eventPlayer.Mission.index(sorted([player for player in eventPlayer.Mission if player])[eventPlayer.Detector1])])
        #Stop if last value was 0 and remove the 0
        if not Mission[eventPlayer.Checkpoint][eventPlayer.Detector1 + true]:
            Mission[eventPlayer.Checkpoint].remove(false)
            break
    CPchange()


def RPMissions():
    @Name "Mission Rocket punch & Diagonal Check sub"
    
    #Ability First
    if any([i and not eventPlayer.MissionC[i] for i in eventPlayer.MissionD.slice(7, 3)]):
        eventPlayer.MissionC[7] = 1
        eventPlayer.MissionC[8] = 2
        eventPlayer.MissionC[9] = 2
        MissionPlayerHUD()
    #No Rocket Punch
    if eventPlayer.MissionD[true] and not eventPlayer.MissionC[true]:
        eventPlayer.MissionC[true] = 1 if eventPlayer.MissionTime[eventPlayer.Mission.index(true)] > false and eventPlayer.MissionTime[eventPlayer.Mission.index(true)] < 9900 else 2
        MissionPlayerHUD()
    #Diagonal check
    if any([i and not eventPlayer.MissionC[i] for i in eventPlayer.MissionD.slice(10, 2)]):
        while eventPlayer.Grace:
            waitUntil(not eventPlayer.Grace or abs(eventPlayer.getVerticalSpeed()) > 7 and eventPlayer.isInAir(), 99999)
            if not eventPlayer.Grace:
                return
            async(RPDiag, AsyncBehavior.RESTART)
            waitUntil(not eventPlayer.Grace or abs(eventPlayer.getVerticalSpeed()) < 7, 99999)


def RPDiag():
    @Name "Mission Diag / Down Diag sub"
    
    waitUntil(abs(eventPlayer.getVerticalSpeed()) < 7 or not eventPlayer.Grace, 0.08)
    if abs(eventPlayer.getVerticalSpeed()) < 7 or not eventPlayer.Grace:
        return
    eventPlayer.MissionC[10 if eventPlayer.getVerticalSpeed() > false else 11] = true
    MissionPlayerHUD()
    eventPlayer.Grace += 0.08 if eventPlayer.getVerticalSpeed() < 7 else false


rule "Mission Uppercut & Headbounce":
    @Event eachPlayer
    @Condition eventPlayer.CreatorState < 3
    @Condition (eventPlayer.isUsingAbility1() or eventPlayer.getAbilityCooldown(Button.ABILITY_1)) >= 1
    
    #Ability First
    if any([i and not eventPlayer.MissionC[i] for i in eventPlayer.MissionD.slice(7, 3)]):
        eventPlayer.MissionC[7] = 2
        eventPlayer.MissionC[8] = 1
        eventPlayer.MissionC[9] = 2
        MissionPlayerHUD()
    #No Uppercut
    if eventPlayer.MissionD[2] and not eventPlayer.MissionC[2]:
        eventPlayer.MissionC[2] = 1 if eventPlayer.MissionTime[eventPlayer.Mission.index(2)] > false and eventPlayer.MissionTime[eventPlayer.Mission.index(2)] < 9900 else 2
        MissionPlayerHUD()
    #Ability Count
    if AbilityCount[eventPlayer.Checkpoint]:
        if eventPlayer.EditingTool == -4 and not eventPlayer.PioneerGenerateCP:
            eventPlayer.AbilityCount += Vector.UP
        elif eventPlayer.CreatorState < 2:
            if eventPlayer.AbilityCount.y:
                goto lbl_0
            eventPlayer.AbilityCount += Vector.UP
            wait()
            lbl_0:
            eventPlayer.AbilityCount += Vector.DOWN
    #Headbounce
    if eventPlayer.MissionD[5] and not eventPlayer.MissionC[5]:
        wait(0.35)
        if eventPlayer.getHorizontalSpeed() > 7:
            eventPlayer.MissionC[5] = 1
            MissionPlayerHUD()
    waitUntil(not eventPlayer.isUsingAbility1(), 99999)


rule "Mission Seismic Slam":
    @Event eachPlayer
    @Condition eventPlayer.CreatorState < 3
    @Condition eventPlayer.isUsingAbility2() == true
    
    #Ability First
    if any([i and not eventPlayer.MissionC[i] for i in eventPlayer.MissionD.slice(7, 3)]):
        eventPlayer.MissionC[7] = 2
        eventPlayer.MissionC[8] = 2
        eventPlayer.MissionC[9] = 1
        MissionPlayerHUD()
    #No Seismic Slam
    if eventPlayer.MissionD[3] and not eventPlayer.MissionC[3]:
        eventPlayer.MissionC[3] = 1 if eventPlayer.MissionTime[eventPlayer.Mission.index(3)] > false and eventPlayer.MissionTime[eventPlayer.Mission.index(3)] < 9900 else 2
        MissionPlayerHUD()
    #Ability Count
    if AbilityCount[eventPlayer.Checkpoint]:
        if eventPlayer.EditingTool == -4 and not eventPlayer.PioneerGenerateCP:
            eventPlayer.AbilityCount += Vector.FORWARD
        elif eventPlayer.CreatorState < 2:
            if eventPlayer.AbilityCount.z:
                goto lbl_0
            eventPlayer.AbilityCount += Vector.FORWARD
            wait()
            lbl_0:
            eventPlayer.AbilityCount += Vector.BACKWARD


rule "Mission Stallless":
    @Event eachPlayer
    @Condition eventPlayer.MissionD[4] == true
    @Condition eventPlayer.MissionC[4] == false
    @Condition eventPlayer.getSpeed() < 0.08
    @Condition eventPlayer.isInAir() == true
    @Condition eventPlayer.isUsingAbility2() == false
    @Condition distance(eventPlayer.getPosition(), eventPlayer.CPData[3]) > eventPlayer.CPData[4] + 0.1
    
    eventPlayer.MissionC[4] = 2
    MissionPlayerHUD()


rule "Mission 360":
    @Event eachPlayer
    @Condition eventPlayer.CreatorState < 3
    @Condition eventPlayer.MissionD[6] == true
    @Condition eventPlayer.MissionC[6] == false
    @Condition distance(eventPlayer.getPosition(), eventPlayer.CPData[3]) > eventPlayer.CPData[4] - 0.2
    
    eventPlayer.HorizontalAngle = eventPlayer.getHorizontalFacingAngle()
    eventPlayer.M360 = false
    while distance(eventPlayer.getPosition(), evalOnce(eventPlayer.CPData[3])) > evalOnce(eventPlayer.CPData[4] - 0.2):
        waitUntil(distance(eventPlayer.getPosition(), eventPlayer.CPData[3]) < eventPlayer.CPData[4] - 0.2 or abs(angleDifference(eventPlayer.getHorizontalFacingAngle(), eventPlayer.HorizontalAngle)) > 90, 99999)
        if not RULE_CONDITION:
            return
        if eventPlayer.getHorizontalSpeed() < 0.1:
            waitUntil(eventPlayer.getHorizontalSpeed() > 0.1, 99999)
            goto RULE_START
        eventPlayer.M360 = ((eventPlayer.M360 + true if angleDifference(eventPlayer.getHorizontalFacingAngle(), eventPlayer.HorizontalAngle) > false else -1) if eventPlayer.M360 > false else 1 if angleDifference(eventPlayer.getHorizontalFacingAngle(), eventPlayer.HorizontalAngle) > false else eventPlayer.M360 - true) if eventPlayer.M360 else 1 if angleDifference(eventPlayer.getHorizontalFacingAngle(), eventPlayer.HorizontalAngle) > false else -1
        if abs(eventPlayer.M360) == 3:
            eventPlayer.MissionC[6] = true
            MissionPlayerHUD()
            smallMessage(eventPlayer, "360")
            return
        eventPlayer.HorizontalAngle = horizontalAngleOfDirection(angleToDirection(eventPlayer.HorizontalAngle + (-90 if eventPlayer.M360 > false else 90), false))


rule "Mission Rocket Punch Bounce":
    @Event eachPlayer
    @Condition eventPlayer.Grace != false
    @Condition eventPlayer.isHoldingButton(Button.SECONDARY_FIRE) == false
    @Condition eventPlayer.isHoldingButton(Button.JUMP) == true
    
    eventPlayer.Grace = 0.032
    if not eventPlayer.MissionD[12] or eventPlayer.MissionC[12]:
        return
    eventPlayer.DetectorBounce = normalize(eventPlayer.getVelocity()).y
    wait(0.25)
    if not eventPlayer.isUsingAbility2() and eventPlayer.getVerticalSpeed() > 5 and normalize(eventPlayer.getVelocity()).y > eventPlayer.DetectorBounce:
        eventPlayer.MissionC[12] = 1
        MissionPlayerHUD()
    eventPlayer.DetectorBounce = false


def MissionReset():
    @Name "Reset Missions"
    
    eventPlayer.M360 = false
    waitUntil(not eventPlayer.isUsingAbility2(), 99999)
    eventPlayer.MissionC = eventPlayer.MissionReset
    eventPlayer.LockM = eventPlayer.MissionTime[4]
    MissionPlayerHUD()


def MissionPlayerHUD():
    @Name "Mission HUD & Lock"
    
    if eventPlayer.MissionTime.last() != []:
        if any([eventPlayer.MissionTime[i] > 9900 and eventPlayer.MissionC[player] == 2 for player, i in eventPlayer.Mission]) if eventPlayer.LockM == [] else all([(eventPlayer.MissionC[player] == (false if player < 5 else 1)) if eventPlayer.MissionTime[i] > 9900 else true for player, i in eventPlayer.Mission]):
            eventPlayer.LockM = eventPlayer.MissionTime.last() if eventPlayer.LockM == [] else false
    for eventPlayer.Detector3 in range(false, 4, true):
        if not eventPlayer.Mission[eventPlayer.Detector3]:
            break
        eventPlayer.MissionHUD = "{0}{1}{2}\n".format(eventPlayer.MissionHUD if eventPlayer.Detector3 else "", eventPlayer.MissionDisplay[eventPlayer.Detector3 * 2], eventPlayer.MissionCompletion[eventPlayer.MissionDisplay[eventPlayer.Detector3 * 2 + true] + eventPlayer.MissionC[eventPlayer.Mission[eventPlayer.Detector3]]])


def MissionAppend():
    @Name "Mission Detector sub"
    
    eventPlayer.LockM = false
    eventPlayer.Mission = []
    eventPlayer.MissionD = false
    eventPlayer.MissionDisplay = []
    eventPlayer.MissionTime = Mission[eventPlayer.Checkpoint].slice(true, 4)
    if Mission[eventPlayer.Checkpoint][true]:
        for eventPlayer.Detector1 in range(false, 4, true):
            if Mission[eventPlayer.Checkpoint][eventPlayer.Detector1]:
                eventPlayer.Mission[eventPlayer.Detector1] = (eventPlayer.PrimeNumbers.index((sorted([player for player in eventPlayer.PrimeNumbers if not Mission[eventPlayer.Checkpoint][0] % player]))[eventPlayer.Detector1])) + true
                eventPlayer.MissionD[eventPlayer.Mission[eventPlayer.Detector1]] = eventPlayer.Mission[eventPlayer.Detector1]
                eventPlayer.MissionDisplay.append(["    {0}» {1}".format(eventPlayer.MissionText[eventPlayer.Mission[eventPlayer.Detector1]], ("{0}{1} s              ".format("+" if eventPlayer.MissionTime[eventPlayer.Detector1] > false else "   ", eventPlayer.MissionTime[eventPlayer.Detector1] + 0.001)) if eventPlayer.MissionTime[eventPlayer.Detector1] < 9900 else ""), (9 if eventPlayer.Mission[eventPlayer.Detector1] < 5 else 6) if eventPlayer.MissionTime[eventPlayer.Detector1] > 9900 else false if eventPlayer.MissionTime[eventPlayer.Detector1] < false else 3])
                if eventPlayer.MissionTime[eventPlayer.Detector1] > 9900 and not eventPlayer.LockM:
                    eventPlayer.LockM = [false if eventPlayer.MissionTime[eventPlayer.Detector1] % eventPlayer.PrimeNumbers[i] else true for _, i in CPposition.slice(false, 3)]
                    #Mission Lock Checker
                    for eventPlayer.GenRings in range(false, 3, true):
                        if eventPlayer.Local_Rad[eventPlayer.GenRings] and eventPlayer.LockM[eventPlayer.GenRings]:
                            createInWorldText(eventPlayer, "            ML", eventPlayer.Local_Pos[evalOnce(eventPlayer.GenRings)], 1.35, Clip.NONE, WorldTextReeval.COLOR, rgba(false, false, false, 255 if eventPlayer.LockM[evalOnce(eventPlayer.GenRings)] else 30), SpecVisibility.DEFAULT)
                            eventPlayer.Elements[2].append(getLastCreatedText())
                    eventPlayer.MissionTime[4] = eventPlayer.LockM
        eventPlayer.MissionD[13] = false
    MissionPlayerHUD()


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


/*
rule "Commands":
*/

rule "Skip CP CMD":
    @Event eachPlayer
    @Condition eventPlayer.CreatorState != 3
    @Condition eventPlayer.Shift == false
    @Condition eventPlayer.Checkpoint < len(CPposition) - true
    @Condition eventPlayer.isHoldingButton(Button.INTERACT) == true
    @Condition eventPlayer.isHoldingButton(Button.JUMP) == true
    
    eventPlayer.Shift = true
    eventPlayer.RunState = 2
    eventPlayer.TTtimer = false
    NextCP()
    eventPlayer.Shift = false


def NextCP():
    @Name "NextCP sub"
    
    if eventPlayer.Diverge == -1:
        return
    eventPlayer.LocalC[false] = eventPlayer.Roaming
    eventPlayer.Roaming = true
    #Next
    eventPlayer.Checkpoint = eventPlayer.Diverge
    eventPlayer.CPData[2] = eventPlayer.Diverge2
    CPchange()
    wait(eventPlayer.WSSkipGoBack)
    eventPlayer.Roaming = eventPlayer.LocalC[false]


rule "Prev CP CMD":
    @Event eachPlayer
    @Condition eventPlayer.CreatorState != 3
    @Condition eventPlayer.Shift == false
    @Condition eventPlayer.isHoldingButton(Button.INTERACT) == true
    @Condition eventPlayer.isHoldingButton(Button.CROUCH) == true
    
    eventPlayer.Shift = true
    eventPlayer.RunState = 2
    eventPlayer.TTtimer = false
    PrevCP()
    eventPlayer.Shift = false


def PrevCP():
    @Name "PrevCP sub"
    
    eventPlayer.LocalC[5] = eventPlayer.Checkpoint
    eventPlayer.LocalC[false] = eventPlayer.Roaming
    eventPlayer.Roaming = true
    #Previous
    eventPlayer.Checkpoint = Radius_VA_GoBackCP[eventPlayer.Checkpoint].z if eventPlayer.Checkpoint else len(CPposition) - true
    CPchange()
    wait(eventPlayer.WSSkipGoBack)
    eventPlayer.Roaming = eventPlayer.LocalC[false]
    eventPlayer.Diverge = eventPlayer.LocalC[5]
    eventPlayer.Diverge2 = eventPlayer.Local_Pos.index(CPposition[eventPlayer.LocalC[5]])


rule "Free-Mode - Jump + Crouch":
    @Event eachPlayer
    @Condition eventPlayer.isHoldingButton(Button.JUMP) == true
    @Condition eventPlayer.isHoldingButton(Button.CROUCH) == true
    @Condition (eventPlayer.CreatorState <= 2 and eventPlayer.EditingTool != -4 or eventPlayer.EditingTool == 1) == true
    
    eventPlayer.Roaming = not eventPlayer.Roaming
    if eventPlayer.EditingTool == 1:
        return
    if eventPlayer.Roaming:
        AJCenable()
    else:
        AbilityEnableDisable()


/*
rule "Undo / Redo - Ultimate Status + Crouch / Jump":
    @Event eachPlayer
    @Condition eventPlayer == hostPlayer
    @Condition eventPlayer.CtrlZtoggle == true
    @Condition (eventPlayer.isHoldingButton(Button.CROUCH) or eventPlayer.isHoldingButton(Button.JUMP)) == true
    
    if eventPlayer.CtrlZ2 > 1 and eventPlayer.isHoldingButton(Button.CROUCH):
        While2()
        if eventPlayer.CtrlZ2 > eventPlayer.CtrlZ.index(eventPlayer.CtrlZ.last()):
            CtrlZ()
            eventPlayer.CtrlZ2 -= 2
            goto lbl_0
        eventPlayer.CtrlZ2 -= true
    if eventPlayer.CtrlZ2 < 10 and eventPlayer.isHoldingButton(Button.JUMP):
        While2()
        if eventPlayer.CtrlZ[eventPlayer.CtrlZ2] == false:
            return
        eventPlayer.CtrlZ2 += true
    lbl_0:
    CPposition = (eventPlayer.CtrlZ[eventPlayer.CtrlZ2 - true])[false]
    Radius_VA_GoBackCP = (eventPlayer.CtrlZ[eventPlayer.CtrlZ2 - true])[true]
    Connections = (eventPlayer.CtrlZ[eventPlayer.CtrlZ2 - true])[2]
    Mission = (eventPlayer.CtrlZ[eventPlayer.CtrlZ2 - true])[3]
    Prime = (eventPlayer.CtrlZ[eventPlayer.CtrlZ2 - true])[4]
    AbilityCount = (eventPlayer.CtrlZ[eventPlayer.CtrlZ2 - true])[5]
    HiddenCP_TpRad_TT = (eventPlayer.CtrlZ[eventPlayer.CtrlZ2 - true])[6]
    TP = (eventPlayer.CtrlZ[eventPlayer.CtrlZ2 - true])[7]
    Effect_ = (eventPlayer.CtrlZ[eventPlayer.CtrlZ2 - true])[8]
    CPchange()
*/

/*
def CtrlZ():
    @Name "Undo / Redo sub"
    
    if eventPlayer.CtrlZ[eventPlayer.CtrlZ2]:
        eventPlayer.CtrlZ = eventPlayer.CtrlZ.slice(false, eventPlayer.CtrlZ2)
    if eventPlayer.CtrlZ2 == 20:
        del eventPlayer.CtrlZ[false]
        eventPlayer.CtrlZ2 = 19
    eventPlayer.CtrlZ[eventPlayer.CtrlZ2] = [CPposition, Radius_VA_GoBackCP, Connections, Mission, Prime, AbilityCount, HiddenCP_TpRad_TT, TP, Effect_]
    eventPlayer.CtrlZ2 += true
*/

/*
rule "Undo / Redo setup":
    @Event eachPlayer
    @Condition eventPlayer == hostPlayer
    @Condition eventPlayer.isCommunicating(Comms.ULTIMATE_STATUS) == true
    
    AJCdisable()
    eventPlayer.CtrlZtoggle = true
    wait(3)
    eventPlayer.CtrlZtoggle = false
    AJCenable()
*/

/*
rule "Editing":
*/

rule "Switch Diverge":
    @Event eachPlayer
    #More than 1 divergence?
    @Condition len([i for i in eventPlayer.Local_Rad.slice(false, 3) if i]) > 1
    #Menu 1, Menu 2, Ability Menu, Connect CP
    @Condition (any([not player or player == 3 or player == 4 or player == 7 for player in eventPlayer.EditingTool])) == true
    #Pressing A / D ?
    @Condition eventPlayer.getThrottle().x == true
    
    eventPlayer.Diverge2 += (-1 if eventPlayer.Diverge2 else eventPlayer.CPcount - true) if eventPlayer.getThrottle().x > false else true if eventPlayer.Diverge2 < eventPlayer.CPcount - true else eventPlayer.Diverge2 * -1
    wait()
    if not eventPlayer.Local_Rad[eventPlayer.Diverge2]:
        goto RULE_START
    eventPlayer.Diverge = CPposition.index(eventPlayer.Local_Pos[eventPlayer.Diverge2])


rule "Switch Diverge Interact":
    @Event eachPlayer
    @Condition eventPlayer.CreatorState < 3
    @Condition eventPlayer.isHoldingButton(Button.INTERACT) == true
    
    eventPlayer.Diverge2 = eventPlayer.Local_Pos.index((sorted([i for i in eventPlayer.Local_Pos.slice(false, eventPlayer.CPcount) if i], lambda i: distance(eventPlayer.getFacingDirection(), directionTowards(eventPlayer.getEyePosition(), i + Vector.UP))))[0])
    eventPlayer.Diverge = CPposition.index(eventPlayer.Local_Pos[eventPlayer.Diverge2])
    wait(0.048)
    if RULE_CONDITION:
        goto RULE_START


rule "Forward / Backward CPs in Menus":
    @Event eachPlayer
    @Condition eventPlayer.CreatorState == 3
    @Condition (any([not player or player == 3 or player == 4 for player in eventPlayer.EditingTool])) == true
    @Condition eventPlayer.getThrottle().z == true
    @Condition eventPlayer.Grace == false
    
    Z()
    if RULE_CONDITION:
        goto RULE_START


rule "Edit Ring Size":
    @Event eachPlayer
    @Condition eventPlayer.CreatorState > 1
    @Condition eventPlayer.CtrlZtoggle == false
    @Condition eventPlayer.isHoldingButton(Button.RELOAD) == true
    @Condition (eventPlayer.isHoldingButton(Button.JUMP) or eventPlayer.isHoldingButton(Button.CROUCH)) == true
    
    if eventPlayer.isHoldingButton(Button.JUMP):
        chase(eventPlayer.EditRadius, 10000, rate=eventPlayer.ShiftSpeed * true, ChaseReeval.DESTINATION_AND_RATE)
        waitUntil(not eventPlayer.isHoldingButton(Button.JUMP), 99999)
    else:
        chase(eventPlayer.EditRadius, false, rate=eventPlayer.ShiftSpeed * true, ChaseReeval.DESTINATION_AND_RATE)
        waitUntil(not eventPlayer.isHoldingButton(Button.CROUCH), 99999)
    stopChasingVariable(eventPlayer.EditRadius)


rule "Edit Size prep":
    @Event eachPlayer
    @Condition eventPlayer.isHoldingButton(Button.RELOAD) == true
    @Condition eventPlayer.CreatorState == 2
    @Condition (any([player == -4 or player == -2 or player == -5 or player == -6 for player in eventPlayer.EditingTool])) == false
    
    DisallowMovement()


rule "Edit Height":
    @Event eachPlayer
    @Condition (eventPlayer.EditingTool == 1 or eventPlayer.EditingTool == 9) == true
    @Condition eventPlayer.isHoldingButton(Button.PRIMARY_FIRE) == false
    @Condition eventPlayer.isHoldingButton(Button.RELOAD) == false
    @Condition (eventPlayer.isHoldingButton(Button.JUMP) or eventPlayer.isHoldingButton(Button.CROUCH)) == true
    
    if eventPlayer.isHoldingButton(Button.JUMP):
        chase(eventPlayer.HeightChase, true, rate=10000, ChaseReeval.NONE)
        waitUntil(eventPlayer.isHoldingButton(Button.PRIMARY_FIRE) or eventPlayer.isHoldingButton(Button.RELOAD) or not eventPlayer.isHoldingButton(Button.JUMP), 99999)
    else:
        chase(eventPlayer.HeightChase, -1, rate=10000, ChaseReeval.NONE)
        waitUntil(eventPlayer.isHoldingButton(Button.PRIMARY_FIRE) or eventPlayer.isHoldingButton(Button.RELOAD) or not eventPlayer.isHoldingButton(Button.CROUCH), 99999)
    stopChasingVariable(eventPlayer.HeightChase)
    eventPlayer.HeightChase = false
    if RULE_CONDITION:
        goto RULE_START


rule "Time Change":
    @Event eachPlayer
    #TT, Time Effect, Missions
    @Condition (any([player == -5 or ((eventPlayer.EditingTool == 9 or player == 10) and not eventPlayer.EditState) or player == 12 for player in eventPlayer.EditingTool])) == true
    @Condition (eventPlayer.isHoldingButton(Button.JUMP) or eventPlayer.isHoldingButton(Button.CROUCH)) == true
    
    if eventPlayer.isHoldingButton(Button.PRIMARY_FIRE) and abs(eventPlayer.EditTime) < 9900:
        while eventPlayer.isHoldingButton(Button.JUMP) or eventPlayer.isHoldingButton(Button.CROUCH):
            if eventPlayer.EditingTool == -5:
                eventPlayer.EditTime += (true if eventPlayer.isHoldingButton(Button.ABILITY_1) else 0.25) * (true if (eventPlayer.isHoldingButton(Button.JUMP) if eventPlayer.EditTime > false else eventPlayer.isHoldingButton(Button.CROUCH)) else -1)
                if HiddenCP_TpRad_TT[eventPlayer.Checkpoint].z:
                    HiddenCP_TpRad_TT[eventPlayer.Checkpoint] = HiddenCP_TpRad_TT[eventPlayer.Checkpoint] * vect(true, true, false) + Vector.FORWARD * eventPlayer.EditTime
            else:
                eventPlayer.EditTime += (true if eventPlayer.isHoldingButton(Button.ABILITY_1) else 0.25) * (true if eventPlayer.isHoldingButton(Button.JUMP) else -1)
            if eventPlayer.EditingTool == 12:
                eventPlayer.MissionTime[eventPlayer.MissionSelect] = eventPlayer.EditTime
            wait(0.25)


def FPedit():
    @Name "Edit CP from First Person sub"
    
    eventPlayer.stopCamera()
    eventPlayer.CreatorState = 2
    AbilityEnableDisable()
    AllowButtons()


rule "Control Speed Up / Down":
    @Event eachPlayer
    @Condition (eventPlayer.EditingTool == 1 or eventPlayer.EditingTool == 9) == true
    @Condition (eventPlayer.isHoldingButton(Button.ABILITY_1) or eventPlayer.isHoldingButton(Button.SECONDARY_FIRE)) == true
    
    if eventPlayer.isHoldingButton(Button.ABILITY_1):
        eventPlayer.ShiftSuperSpeed = 2.5
        chase(eventPlayer.ShiftSpeed, eventPlayer.ShiftSuperSpeed, rate=10000, ChaseReeval.DESTINATION_AND_RATE)
        waitUntil(not eventPlayer.isHoldingButton(Button.ABILITY_1), 2)
        if eventPlayer.isHoldingButton(Button.ABILITY_1):
            chase(eventPlayer.ShiftSuperSpeed, 10000, rate=true, ChaseReeval.NONE)
        waitUntil(not eventPlayer.isHoldingButton(Button.ABILITY_1), 99999)
        stopChasingVariable(eventPlayer.ShiftSuperSpeed)
    else:
        chase(eventPlayer.ShiftSpeed, 0.1, rate=10000, ChaseReeval.NONE)
        waitUntil(not eventPlayer.isHoldingButton(Button.SECONDARY_FIRE), 99999)
    stopChasingVariable(eventPlayer.ShiftSpeed)
    eventPlayer.ShiftSpeed = true
    if RULE_CONDITION:
        goto RULE_START


rule "Ray Cast Camera Toggle":
    @Event eachPlayer
    @Condition eventPlayer.isHoldingButton(Button.PRIMARY_FIRE) == true
    @Condition (eventPlayer.EditingTool == 1 or eventPlayer.EditingTool == 9) == true
    
    eventPlayer.RayCast = not eventPlayer.RayCast


/*
rule "Misc":
*/

def Z():
    @Name "Forward Backward CP Change"
    
    #> Forward
    if eventPlayer.getThrottle().z > false:
        #Next
        NextCP()
    else:
        #Previous
        PrevCP()
    if eventPlayer.EditingTool == 3:
        AbilityEnableDisable()


def While1():
    @Name "While 1 sub"
    
    waitUntil(not eventPlayer.isHoldingButton(Button.PRIMARY_FIRE) and not eventPlayer.isHoldingButton(Button.SECONDARY_FIRE) and not eventPlayer.isHoldingButton(Button.ABILITY_1) and not eventPlayer.isHoldingButton(Button.ABILITY_2) and not eventPlayer.isHoldingButton(Button.ULTIMATE) and not eventPlayer.isHoldingButton(Button.INTERACT) and not eventPlayer.isHoldingButton(Button.MELEE) and not eventPlayer.isHoldingButton(Button.RELOAD), 99999)
    #if eventPlayer.EditingTool == 3 and eventPlayer.isHoldingButton(Button.JUMP):
    #eventPlayer.LUL = 69
    #bigMessage(getAllPlayers(), "Check out disabled Rule: \"Creation Menus\" :D")
    #__end__()


def While2():
    @Name "While 2 sub"
    
    waitUntil(not eventPlayer.isHoldingButton(Button.JUMP) and not eventPlayer.isHoldingButton(Button.CROUCH), 99999)


def AJCdisable():
    @Name "Ability Jump Crouch Disable sub"
    
    eventPlayer.setJumpEnabled(false)
    eventPlayer.setCrouchEnabled(false)
    eventPlayer.setSecondaryFireEnabled(false)
    eventPlayer.setAbility1Enabled(false)
    eventPlayer.setAbility2Enabled(false)


def AJCenable():
    @Name "Ability Jump Crouch Enable sub"
    
    eventPlayer.setJumpEnabled(true)
    eventPlayer.setCrouchEnabled(true)
    eventPlayer.setSecondaryFireEnabled(true)
    eventPlayer.setAbility1Enabled(true)
    eventPlayer.setAbility2Enabled(true)


def CreatorRing():
    @Name "Creator Ring sub"
    
    createEffect(eventPlayer, Effect.RING, Color.WHITE if eventPlayer.EditingTool == -3 else Color.AQUA, raycast(eventPlayer.getEyePosition(), eventPlayer.getEyePosition() + updateEveryTick(eventPlayer.getFacingDirection()) * 1000, [], eventPlayer, false).getHitPosition(), eventPlayer.EditRadius, EffectReeval.POSITION_AND_RADIUS)
    eventPlayer.TempRing.append(getLastCreatedEntity())


def MultiPurposeCamera():
    @Name "MP Camera sub"
    
    eventPlayer.startCamera(updateEveryTick(raycast(eventPlayer.MovingElement, eventPlayer.MovingElement + (eventPlayer.getFacingDirection() * -1 * (max(eventPlayer.EditRadius + 2, 6))), [], eventPlayer, false).getHitPosition() + eventPlayer.getFacingDirection() * 0.5) if eventPlayer.RayCast else eventPlayer.MovingElement + (updateEveryTick(eventPlayer.getFacingDirection()) * -1 * (max(eventPlayer.EditRadius + 2, 6))), eventPlayer.MovingElement, 500)


rule "Moving CP TP":
    @Event eachPlayer
    @Condition (eventPlayer.MovingElementConfirm or eventPlayer.EditingTool == 3) == true
    @Condition eventPlayer.Roaming == 1
    @Condition getTotalTimeElapsed() % true < 0.1
    
    __skipIf__(eventPlayer.EditingTool == 1, true)
    __abortIf__((eventPlayer.EditingTool == 3 or eventPlayer.EditState != -4) and distance(Vector.LEFT * eventPlayer.getPosition().x, Vector.LEFT * eventPlayer.CPData[7].x) < 0.1)
    eventPlayer.teleport((CPposition[eventPlayer.Checkpoint] if eventPlayer.EditState != -4 else eventPlayer.MovingElement) if eventPlayer.EditingTool == 9 else eventPlayer.CPData[7] if eventPlayer.EditingTool == 3 else eventPlayer.MovingElement)
    eventPlayer.startForcingPosition((CPposition[eventPlayer.Checkpoint] if eventPlayer.EditState != -4 else eventPlayer.MovingElement) if eventPlayer.EditingTool == 9 else eventPlayer.CPData[7] if eventPlayer.EditingTool == 3 else eventPlayer.MovingElement, false)
    wait(0.048)
    eventPlayer.stopForcingPosition()


def Exit():
    @Name "Exit sub"
    
    eventPlayer.LocalC = []
    eventPlayer.TempCP = []
    if eventPlayer.EditingTool == -4:
        return
    eventPlayer.startCamera(eventPlayer.CPData[3] + angleToDirection(eventPlayer.getHorizontalFacingAngle(), eventPlayer.getVerticalFacingAngle()) * -1 * 6, eventPlayer.CPData[3], 10)
    GenerateElements()


rule "Level Select":
    @Event eachPlayer
    @Condition Prime[eventPlayer.Checkpoint] % 11 == false
    
    eventPlayer.Level = false


rule "Death Reset":
    @Event playerDied
    
    eventPlayer.respawn()
    CPfail()


def DisallowButtons():
    @Name "Disallow Buttons sub"
    
    eventPlayer.setMoveSpeed(false)
    eventPlayer.setSecondaryFireEnabled(false)
    eventPlayer.setAbility1Enabled(false)
    eventPlayer.setAbility2Enabled(false)
    eventPlayer.setJumpEnabled(false)
    eventPlayer.setCrouchEnabled(false)


def AllowButtons():
    @Name "Allow Buttons sub"
    
    eventPlayer.setMoveSpeed(100)
    eventPlayer.setCrouchEnabled(true)
    eventPlayer.setJumpEnabled(true)
    AbilityEnableDisable()


def DisallowMovement():
    @Name "Disallow Movement sub"
    
    if eventPlayer.isHoldingButton(Button.PRIMARY_FIRE) or eventPlayer.isHoldingButton(Button.RELOAD):
        DisallowButtons()
        While1()
    AllowButtons()


rule "Edit time prep":
    @Event eachPlayer
    @Condition eventPlayer.isHoldingButton(Button.PRIMARY_FIRE) == true
    @Condition eventPlayer.EditingTool == -5
    
    DisallowMovement()


rule "anti crash":
    @Event eachPlayer
    @Condition eventPlayer.AntiCrash == false
    @Condition getServerLoad() > 200
    
    wait(true, Wait.ABORT_WHEN_FALSE)
    smallMessage(getAllPlayers(), "Anti crash system activated")
    setSlowMotion(10)
    eventPlayer.AntiCrash = true


rule "disable anti crash":
    @Event eachPlayer
    @Condition eventPlayer.AntiCrash == true
    @Condition getServerLoad() < 175
    
    setSlowMotion(100)
    eventPlayer.AntiCrash = false


rule "Save Data Warning":
    wait(2700)
    while true:
        smallMessage(getAllPlayers(), "Dont forget to save!")
        wait(600)


rule "Proximity Invisibility":
    @Event eachPlayer
    @Condition getNumberOfPlayers(Team.ALL) > 1
    @Condition (distance(eventPlayer, getClosestPlayer(eventPlayer, Team.ALL)) > 1.4 if eventPlayer.Invis else distance(eventPlayer, getClosestPlayer(eventPlayer, Team.ALL)) < 1.3) == true
    
    eventPlayer.Invis = not eventPlayer.Invis
    if eventPlayer.Invis:
        eventPlayer.setInvisibility(Invis.ALL)
    else:
        eventPlayer.setInvisibility(Invis.NONE)


/*
rule "HoldJump2Win":
    @Event eachPlayer
    @Condition eventPlayer.isInAir() == true
    @Condition eventPlayer.isUsingAbility2() == false
    @Condition abs(eventPlayer.getVerticalSpeed()) < 0.2
    @Condition eventPlayer.Grace == false
    @Condition eventPlayer.isHoldingButton(Button.JUMP) == true
    
    wait(0.032, Wait.ABORT_WHEN_FALSE)
    eventPlayer.Jump2win = true
    eventPlayer.setMoveSpeed(30)
    waitUntil(abs(eventPlayer.getVerticalSpeed()) > 0.2 or not eventPlayer.isHoldingButton(Button.JUMP), 99999)
    eventPlayer.Jump2win = false
    eventPlayer.setMoveSpeed(100)
*/

rule "Inspector Loop":
    wait(5)
    enableInspector()
    wait()
    disableInspector()
    goto RULE_START


/*
rule "CP Creation / Editing / Converting subroutines":
*/

def TempCP():
    @Name "Temp CP sub"
    
    if eventPlayer.EditingTool == -5:
        return
    if eventPlayer.EditingTool > -4:
        eventPlayer.TempCP[false] = raycast(eventPlayer.getEyePosition(), eventPlayer.getEyePosition() + eventPlayer.getFacingDirection() * 1000, null, getAllPlayers(), false).getHitPosition()
    if eventPlayer.EditingTool <= -4 and not eventPlayer.PioneerGenerateCP:
        eventPlayer.TempCP[false] = eventPlayer.getPosition()
    eventPlayer.TempCP[true] = vect(eventPlayer.EditRadius, false, eventPlayer.Checkpoint)


def CreateSlice():
    @Name "Create CP not last index sub"
    
    eventPlayer.AscendingSlice = []
    __skipIf__(not CPposition[eventPlayer.Checkpoint + eventPlayer.AddRemove], true)
    #Slicing and dicing
    AscendingSlice()
    #Skip if Creating First CP or there is no further CP in the list
    __skipIf__(not CPposition[eventPlayer.Checkpoint + eventPlayer.AddRemove] or eventPlayer.Checkpoint == -1, true)
    #> Slice in de place
    DescendingSlice()
    #> Append Created CP
    AppendCP()
    __skipIf__(eventPlayer.AscendingSlice == [], true)
    #> Append stored slice
    AppendAscSlice()


def Correct_CP_Data():
    @Name "Correct CP Data sub"
    
    eventPlayer.Detector1 = eventPlayer.Checkpoint + eventPlayer.AddRemove
    Connections = [player + Vector.LEFT if player.x >= eventPlayer.Detector1 and not player[true] else player for player in Connections]
    Connections = [player + Vector.UP if player.y >= eventPlayer.Detector1 and not player[true] else player for player in Connections]
    Connections = [player + Vector.FORWARD if player.z >= eventPlayer.Detector1 and not player[true] else player for player in Connections]
    Connections = [player + true if player >= eventPlayer.Detector1 and not player[true] else player for player in Connections]
    Radius_VA_GoBackCP = [player + Vector.FORWARD if player.z >= eventPlayer.Detector1 else player for player in Radius_VA_GoBackCP]


def DescendingSlice():
    @Name "Descending Index Slice sub"
    
    #> Slice in de place
    CPposition = CPposition.slice(false, eventPlayer.Checkpoint + eventPlayer.AddRemove)
    Radius_VA_GoBackCP = Radius_VA_GoBackCP.slice(false, eventPlayer.Checkpoint + eventPlayer.AddRemove)
    Connections = Connections.slice(false, eventPlayer.Checkpoint + eventPlayer.AddRemove)
    Mission = Mission.slice(false, eventPlayer.Checkpoint + eventPlayer.AddRemove)
    Prime = Prime.slice(false, eventPlayer.Checkpoint + eventPlayer.AddRemove)
    AbilityCount = AbilityCount.slice(false, eventPlayer.Checkpoint + eventPlayer.AddRemove)
    HiddenCP_TpRad_TT = HiddenCP_TpRad_TT.slice(false, eventPlayer.Checkpoint + eventPlayer.AddRemove)
    TP = TP.slice(false, eventPlayer.Checkpoint + eventPlayer.AddRemove)
    Effect_ = Effect_.slice(false, eventPlayer.Checkpoint + eventPlayer.AddRemove)


def AscendingSlice():
    @Name "Ascending Index Slice sub"
    
    #Slicing and dicing
    eventPlayer.AscendingSlice[false] = CPposition.slice(eventPlayer.Checkpoint + eventPlayer.AddRemove2, len(CPposition))
    eventPlayer.AscendingSlice[1] = Radius_VA_GoBackCP.slice(eventPlayer.Checkpoint + eventPlayer.AddRemove2, len(CPposition))
    eventPlayer.AscendingSlice[2] = Connections.slice(eventPlayer.Checkpoint + eventPlayer.AddRemove2, len(CPposition))
    eventPlayer.AscendingSlice[3] = Mission.slice(eventPlayer.Checkpoint + eventPlayer.AddRemove2, len(CPposition))
    eventPlayer.AscendingSlice[4] = Prime.slice(eventPlayer.Checkpoint + eventPlayer.AddRemove2, len(CPposition))
    eventPlayer.AscendingSlice[5] = AbilityCount.slice(eventPlayer.Checkpoint + eventPlayer.AddRemove2, len(CPposition))
    eventPlayer.AscendingSlice[6] = HiddenCP_TpRad_TT.slice(eventPlayer.Checkpoint + eventPlayer.AddRemove2, len(CPposition))
    eventPlayer.AscendingSlice[7] = TP.slice(eventPlayer.Checkpoint + eventPlayer.AddRemove2, len(CPposition))
    eventPlayer.AscendingSlice[8] = Effect_.slice(eventPlayer.Checkpoint + eventPlayer.AddRemove2, len(CPposition))


def AppendCP():
    @Name "Append in between Slices sub"
    
    CPposition[eventPlayer.Checkpoint + eventPlayer.AddRemove] = eventPlayer.TempCP[false]
    Radius_VA_GoBackCP[eventPlayer.Checkpoint + eventPlayer.AddRemove] = eventPlayer.TempCP[true]
    Connections[eventPlayer.Checkpoint + eventPlayer.AddRemove] = false
    Mission[eventPlayer.Checkpoint + eventPlayer.AddRemove] = true
    Prime[eventPlayer.Checkpoint + eventPlayer.AddRemove] = true if Prime[eventPlayer.Checkpoint] % 11 else 13
    AbilityCount[eventPlayer.Checkpoint + eventPlayer.AddRemove] = [true, Vector.LEFT * Vector.UP] if AbilityCount[eventPlayer.Checkpoint] else false
    HiddenCP_TpRad_TT[eventPlayer.Checkpoint + eventPlayer.AddRemove] = false
    TP[eventPlayer.Checkpoint + eventPlayer.AddRemove] = false
    Effect_[eventPlayer.Checkpoint + eventPlayer.AddRemove] = false


def AppendAscSlice():
    @Name "Append Ascending Slice back sub"
    
    CPposition.append(eventPlayer.AscendingSlice[false])
    Radius_VA_GoBackCP.append(eventPlayer.AscendingSlice[true])
    Connections.append(eventPlayer.AscendingSlice[2])
    Mission.append(eventPlayer.AscendingSlice[3])
    Prime.append(eventPlayer.AscendingSlice[4])
    AbilityCount.append(eventPlayer.AscendingSlice[5])
    HiddenCP_TpRad_TT.append(eventPlayer.AscendingSlice[6])
    TP.append(eventPlayer.AscendingSlice[7])
    Effect_.append(eventPlayer.AscendingSlice[8])


/*
rule "Test Run":
*/

rule "Test Course - Hold Ultimate":
    @Event eachPlayer
    @Condition eventPlayer == (eventPlayer if eventPlayer.WSMultiCreator else hostPlayer)
    @Condition eventPlayer.isHoldingButton(Button.ULTIMATE) == true
    @Condition (not eventPlayer.EditingTool or eventPlayer.EditingTool == 4 or eventPlayer.EditingTool == -1 or eventPlayer.EditingTool == -100) == true
    
    __skipIf__(eventPlayer.CreatorState == 1, true)
    eventPlayer.LocalC[false] = eventPlayer.CreatorState
    wait(true, Wait.ABORT_WHEN_FALSE)
    smallMessage(eventPlayer, "Testing Done" if eventPlayer.CreatorState == 1 else "Commence Testing")
    eventPlayer.forceButtonPress(Button.ULTIMATE)
    eventPlayer.Shift = true
    wait(0.5)
    if eventPlayer.CreatorState > 1:
        eventPlayer.setMoveSpeed(100)
        eventPlayer.setJumpEnabled(true)
        eventPlayer.setCrouchEnabled(true)
        destroyEffect(eventPlayer.TempRing)
        eventPlayer.SaveCP = eventPlayer.Checkpoint
        eventPlayer.EditingTool = -100
        eventPlayer.CreatorState = 1
        eventPlayer.stopCamera()
        eventPlayer.Roaming = false
        GenerateElements()
        if HiddenCP_TpRad_TT[eventPlayer.Checkpoint].z:
            eventPlayer.EditTime = HiddenCP_TpRad_TT[eventPlayer.Checkpoint].z
            TimeTrial()
        else:
            CPfail()
    else:
        While1()
        eventPlayer.CreatorState = eventPlayer.LocalC[false]
        eventPlayer.Checkpoint = eventPlayer.SaveCP
        TTclear()
        if eventPlayer.CreatorState == 3:
            CPselect()
        else:
            outCPselect()
        DestroyTimes()
        CPchange()
    wait(true)
    eventPlayer.Shift = false


rule "Timer Start":
    @Event eachPlayer
    @Condition eventPlayer.CreatorState < 2
    @Condition eventPlayer.RunState < 2
    @Condition eventPlayer.Roaming == false
    @Condition (not eventPlayer.Checkpoint or not Prime[eventPlayer.Checkpoint] % 11 and eventPlayer.Checkpoint) == true
    @Condition distance(eventPlayer.getPosition(), eventPlayer.CPData[3]) > eventPlayer.CPData[4] + 0.1
    
    chase(eventPlayer.RunTime, 10000, rate=true, ChaseReeval.DESTINATION_AND_RATE)
    eventPlayer.RunState = 1


rule "Timer Pause":
    @Event eachPlayer
    @Condition Prime[eventPlayer.Checkpoint] % 11 == false
    @Condition eventPlayer.Checkpoint == true
    @Condition eventPlayer.RunState == 1
    
    stopChasingVariable(eventPlayer.RunTime)


rule "Timer Reset":
    @Event eachPlayer
    @Condition eventPlayer.CreatorState < 2
    @Condition eventPlayer.Checkpoint == false
    @Condition eventPlayer.isOnGround() == true
    @Condition distance(eventPlayer.getPosition(), eventPlayer.CPData[3]) < eventPlayer.CPData[4] + 0.1
    
    stopChasingVariable(eventPlayer.RunTime)
    eventPlayer.RunTime = 0
    eventPlayer.Level = 0
    eventPlayer.RunState = false


rule "Timer Stop":
    @Event eachPlayer
    @Condition eventPlayer.RunState == 2
    
    stopChasingVariable(eventPlayer.RunTime)
    eventPlayer.RunTime = 0


rule "Quick Reset":
    @Event eachPlayer
    @Condition eventPlayer.CreatorState < 2
    @Condition eventPlayer.isHoldingButton(Button.RELOAD) == true
    @Condition eventPlayer.isUsingAbility1() == false
    @Condition eventPlayer.Shift == false
    
    #Prepare Cancel Primary action
    if eventPlayer.isUsingAbility2() or eventPlayer.Grace and not eventPlayer.isHoldingButton(Button.SECONDARY_FIRE):
        eventPlayer.ForceAbility = 2 if eventPlayer.Grace else true
    if HiddenCP_TpRad_TT[eventPlayer.Checkpoint].z:
        if not eventPlayer.Start and eventPlayer.TTtimer:
            return
        async(TimeTrial, AsyncBehavior.RESTART)
        wait(0.25)
    else:
        CPfail()
    wait(0.096)


rule "Full Reset":
    @Event eachPlayer
    @Condition (eventPlayer.CreatorState <= 1 or eventPlayer.EditingTool == -1) == true
    @Condition eventPlayer.isHoldingButton(Button.INTERACT) == true
    @Condition eventPlayer.isHoldingButton(Button.ULTIMATE) == true
    @Condition eventPlayer.Checkpoint == true
    @Condition eventPlayer.Shift == false
    
    eventPlayer.Shift = true
    eventPlayer.Roaming = true
    #off-set
    eventPlayer.Checkpoint = eventPlayer
    eventPlayer.Checkpoint = 0
    CPchange()
    eventPlayer.Effvisible = []
    wait(0.032)
    eventPlayer.Roaming = false
    eventPlayer.Shift = false


rule "Time Trial Tester":
    @Event eachPlayer
    @Condition eventPlayer.CreatorState < 2
    @Condition HiddenCP_TpRad_TT[eventPlayer.Checkpoint].z == true
    @Condition eventPlayer.CPData[false] == eventPlayer.Checkpoint
    @Condition eventPlayer.Shift == false
    @Condition eventPlayer.TTtimer == false
    
    eventPlayer.EditTime = HiddenCP_TpRad_TT[eventPlayer.Checkpoint].z
    TimeTrial()


rule "Time Trial detect":
    @Event eachPlayer
    @Condition eventPlayer.CreatorState < 2
    @Condition eventPlayer.Start == true
    @Condition eventPlayer.Roaming == true
    @Condition any([distance(eventPlayer.getPosition(), player) <= eventPlayer.Local_Rad[i] for player, i in eventPlayer.Local_Pos]) == true
    @Condition eventPlayer.isOnGround() == true
    
    TTclear()


def TTclear():
    @Name "Time Trial Completed sub"
    
    stopChasingVariable(eventPlayer.TTtimer)
    eventPlayer.Roaming = false
    eventPlayer.Start = false
    eventPlayer.TTtimer = 0


def MissionTimeChange():
    @Name "Tester Mission Time Change sub"
    
    eventPlayer.MissionTimeChange = false
    #No ability use / Stallless completion
    if any(eventPlayer.MissionD.slice(true, 4)):
        eventPlayer.MissionC = [(not player if eventPlayer.MissionD[i] else player) if i >= 1 and i <= 4 else player for player, i in eventPlayer.MissionC]
    #Abort if no completions
    if not 1 in eventPlayer.MissionC:
        return
    #Change Run Time
    for eventPlayer.Detector3 in range(false, 4, true):
        if eventPlayer.MissionC[eventPlayer.Mission[eventPlayer.Detector3]] == 1 and eventPlayer.MissionTime[eventPlayer.Detector3] < 9900:
            eventPlayer.RunTime += eventPlayer.MissionTime[eventPlayer.Detector3]
            eventPlayer.MissionTimeChange += eventPlayer.MissionTime[eventPlayer.Detector3]
    eventPlayer.TimeChangeDisplay = 2.5


def EffectTimeChange():
    @Name "Tester Effect Time Change sub"
    
    eventPlayer.RunTime += eventPlayer.Effvisible[len(eventPlayer.Efftype)]
    eventPlayer.Effpos = []


rule "Tester Mission & Effect Time Change Reset":
    @Event eachPlayer
    @Condition eventPlayer.TimeChangeDisplay == false
    
    eventPlayer.MissionTimeChange = false


/*
rule "Creator & HUD":
*/

rule "Creator HUD Chases":
    @Event eachPlayer
    @Condition eventPlayer.CreatorState == true
    @Condition Prime == true
    
    chase(eventPlayer.ConnectionCount, ((true if Connections[eventPlayer.Checkpoint].x else false) + (true if Connections[eventPlayer.Checkpoint].y else false)) + (true if Connections[eventPlayer.Checkpoint].z else false), rate=10000, ChaseReeval.DESTINATION_AND_RATE)
    __skipIf__(not eventPlayer.WSElementLimiter, true)
    chase(eventPlayer.ElementLimiter, ((eventPlayer.ConnectionCount + (true if Z1[eventPlayer.Checkpoint] else false)) + (true if Y2[eventPlayer.Checkpoint] else false)) + (true if Z2[eventPlayer.Checkpoint] else false), rate=10000, ChaseReeval.DESTINATION_AND_RATE)
    chase(eventPlayer.Pressing_A_D, (angleToDirection(eventPlayer.getHorizontalFacingAngle() + (90 if eventPlayer.getThrottle().x > false else -90), false)) if eventPlayer.getThrottle().x else vect(false, false, false), rate=10000, ChaseReeval.DESTINATION_AND_RATE)
    chase(eventPlayer.Pressing_W_S, (angleToDirection(eventPlayer.getHorizontalFacingAngle() + (false if eventPlayer.getThrottle().z > false else 180), false)) if eventPlayer.getThrottle().z else vect(false, false, false), rate=10000, ChaseReeval.DESTINATION_AND_RATE)


rule "Local - Creator HUD Always on":
    waitUntil(Prime, 99999)
    hudHeader(localPlayer if localPlayer.Debug else null, "Creator State: {0}\nEdit Tool: {1}".format(localPlayer.CreatorState, localPlayer.EditingTool), HudPosition.LEFT, -5, Color.WHITE, HudReeval.VISIBILITY_AND_STRING, SpecVisibility.DEFAULT)
    hudText(localPlayer if localPlayer.CreatorState else null, null, "Doomfist Parkour Map Creator by Hax | Code: HAVVX\nJoin Doomfist Parkour Discord: discord.gg/doomfistparkour\n{0}".format("TheCyberon's Basics & Multilevel Guide in Channel #Framework-Tutorials"), "Checkpoint #{0} / {1}\n{2}".format(localPlayer.Checkpoint, len(CPposition) - true, "Elements: ({0}/4)".format(localPlayer.ElementLimiter) if localPlayer.WSElementLimiter else ""), HudPosition.LEFT, false, Color.WHITE, Color.RED, Color.RED, HudReeval.VISIBILITY_AND_STRING, SpecVisibility.DEFAULT)
    hudSubtext(localPlayer if localPlayer.CreatorState else null, "Jump + Crouch | Free-Mode [ {0} ]\nHold Ultimate | Test Course\n\"Ultimate Status\" | Undo / Redo\n{1}".format("ON" if localPlayer.Roaming else "OFF", "Save by Copying Map Data from Inspector"), HudPosition.LEFT, true, Color.WHITE, HudReeval.VISIBILITY_AND_STRING, SpecVisibility.DEFAULT)
    hudHeader(localPlayer if localPlayer.Ablock else null, "Slamlock" if localPlayer.Ablock == 2 else "Ablock", HudPosition.LEFT, 1.001, Color.WHITE, HudReeval.VISIBILITY_AND_STRING, SpecVisibility.DEFAULT)
    hudHeader(null if localPlayer.CreatorState and (Prime[localPlayer.Checkpoint + true]) % 13 else localPlayer, " Last CP / Level Select ", HudPosition.LEFT, 2, Color.ORANGE, HudReeval.VISIBILITY_AND_STRING, SpecVisibility.DEFAULT)
    hudHeader(null if localPlayer.CreatorState and Radius_VA_GoBackCP[localPlayer.Checkpoint].y else localPlayer, " View Angle Missing! ", HudPosition.LEFT, 2.01, Color.PURPLE, HudReeval.VISIBILITY, SpecVisibility.DEFAULT)
    hudHeader(localPlayer if localPlayer.CreatorState and HiddenCP_TpRad_TT[localPlayer.Checkpoint].y else null, " Teleport ", HudPosition.LEFT, 2.011, Color.SKY_BLUE, HudReeval.VISIBILITY, SpecVisibility.DEFAULT)
    hudHeader(localPlayer if localPlayer.CreatorState and HiddenCP_TpRad_TT[localPlayer.Checkpoint].z else null, " Time Trial{0} [{1}] ".format("" if HiddenCP_TpRad_TT[localPlayer.Checkpoint].z > false else " +", abs(HiddenCP_TpRad_TT[localPlayer.Checkpoint].z) + 0.001), HudPosition.LEFT, 2.012, Color.RED, HudReeval.VISIBILITY_AND_STRING, SpecVisibility.DEFAULT)
    hudText(localPlayer if localPlayer.CtrlZtoggle else null, " !!  CTRL + Z ACTIVE  !! ", null, "  Crouch | Undo\n\n  Jump | Redo", HudPosition.TOP, -100, Color.RED, Color.WHITE, Color.WHITE, HudReeval.VISIBILITY, SpecVisibility.DEFAULT)
    #Skip CP Index
    createInWorldText(localPlayer if localPlayer.CreatorState and localPlayer.Diverge > false else null, "{0}                ".format(localPlayer.Diverge), CPposition[localPlayer.Diverge] + (Vector.UP * (1.6 + distance(localPlayer.getPosition(), CPposition[localPlayer.Diverge]) / 25)), 1, Clip.NONE, WorldTextReeval.VISIBILITY_POSITION_AND_STRING, Color.WHITE, SpecVisibility.DEFAULT)
    #View Angle Line
    createEffect(localPlayer if localPlayer.EditingTool == 3 and Radius_VA_GoBackCP[localPlayer.Checkpoint].y else null, Effect.LIGHT_SHAFT, Color.WHITE, raycast(localPlayer.CPData[7] + Vector.UP * 1.5, localPlayer.CPData[7] + Vector.UP * 1.5 + angleToDirection(Radius_VA_GoBackCP[localPlayer.Checkpoint].y, false) * 5, null, localPlayer, false).getHitPosition() - Vector.UP * 10, 0.01, EffectReeval.VISIBILITY_POSITION_AND_RADIUS)
    #CP Hitbox
    createEffect(localPlayer if localPlayer.EditingTool == 1 and localPlayer.isHoldingButton(Button.ABILITY_2) else null, Effect.SPHERE, Color.WHITE, localPlayer.MovingElement, localPlayer.EditRadius, EffectReeval.VISIBILITY_POSITION_AND_RADIUS)
    #Hold Progress Bar
    createProgressBarInWorldText(localPlayer if localPlayer.HoldTime else [], localPlayer.HoldTime, localPlayer.Text[0], localPlayer.MovingElement + worldVector(vect(-4, false, false), localPlayer, Transform.ROTATION) if localPlayer.EditingTool == 9 else localPlayer.getEyePosition() + worldVector(Vector.RIGHT, localPlayer, Transform.ROTATION) * 650 + ((angleToDirection(localPlayer.getHorizontalFacingAngle(), localPlayer.getVerticalFacingAngle() + -18)) * 1000), 1, Clip.NONE, Color.RED, Color.RED, ProgressWorldTextReeval.VISIBILITY_POSITION_AND_VALUES, SpecVisibility.NEVER)


rule "Local - Creator HUD Outside of Menus":
    waitUntil(Prime, 99999)
    #Regular Create Checkpoint
    hudSubtext(localPlayer if localPlayer.EditingTool == -1 else null, " {0}\n\n\n\n\n\n\n\n\n\n      Ultimate | Menu                       Melee | Create Checkpoint\n{1}\n{2}".format("                 Communicate \"Thanks\" | Ablock / Slamlock", " \n\n   Reload | Ring Size                          Primary Fire | Pioneer Mode", " \n    Jump | Ring Size +                              Crouch | Ring Size -\n\n\n\n\n\n\n\n\n\n\n\n" if localPlayer.isHoldingButton(Button.RELOAD) else " \n\n\n\n\n\n\n\n\n\n\n\n\n"), HudPosition.TOP, -50, Color.WHITE, HudReeval.VISIBILITY_AND_STRING, SpecVisibility.DEFAULT)
    if Prime[0] % 11:
        hudSubtext(localPlayer if localPlayer.EditingTool == -1 else null, "Interact + Melee | Last of Diverging Paths", HudPosition.TOP, -49, Color.WHITE, HudReeval.VISIBILITY, SpecVisibility.DEFAULT)
    #Pioneer
    hudSubtext(localPlayer if localPlayer.EditingTool == -4 else null, " \n\n\n\n\n\n\n{1}\n\n\n         Ultimate | Back                         Reload | Reset          \n{0}".format(" \n\n       Interact | Position                           Melee | Confirm CP\n\n    Hold Interact | Create CP Effect" if localPlayer.PioneerGenerateCP else "", "                    Primary Fire | Temporary View Angle [{0}]".format(localPlayer.TempVA) if localPlayer.TempVA else "                    Primary Fire | Temporary View Angle"), HudPosition.TOP, -50, Color.WHITE, HudReeval.VISIBILITY_AND_STRING, SpecVisibility.DEFAULT)


rule "Local - Creator HUD Menu 1":
    @Condition Prime == true
    
    #Menu 1
    hudSubtext(localPlayer if localPlayer.CreatorState and not localPlayer.EditingTool else null, " \n\n\n\n\n\n\n\n\n\n              Ultimate | Exit                          {0}   | More Options\n{1}".format(buttonString(Button.SECONDARY_FIRE), " \n\n        Interact | Edit position                           Primary Fire | Abilities, View Angle, Recenter"), HudPosition.TOP, -50, Color.WHITE, HudReeval.VISIBILITY_AND_STRING, SpecVisibility.DEFAULT)
    hudSubtext(localPlayer if localPlayer.CreatorState and not localPlayer.EditingTool else null, " \n\n\nMelee | Connect ({0}/3)                                \n\n  Reload | Remove Connection".format(localPlayer.ConnectionCount), HudPosition.TOP, -48, Color.WHITE, HudReeval.VISIBILITY_AND_STRING, SpecVisibility.DEFAULT)
    hudSubtext(localPlayer if localPlayer.CreatorState and not localPlayer.EditingTool else null, " \n\n\n                                     {0} | Hidden CP".format(buttonString(Button.ABILITY_2)), HudPosition.TOP, -47, rgba(255, 255, 255, min(255 * cos(getTotalTimeElapsed()), 50)), HudReeval.VISIBILITY_STRING_AND_COLOR, SpecVisibility.DEFAULT)
    #Moving CP
    hudSubtext(localPlayer if localPlayer.EditingTool == 2 else null, " \n\n\n\n\n\n\n\n\n\n\n\n\n\nUltimate | Discard                                 Melee | Confirm ", HudPosition.TOP, -50, Color.WHITE, HudReeval.VISIBILITY, SpecVisibility.DEFAULT)
    hudSubtext(localPlayer if localPlayer.EditingTool == 1 else null, " \n\n\n\nReload + Jump | Ring Size +                 Reload + Crouch | Ring Size -{0}".format(" \n\n        {0}   | Hitbox                Interact | Snap Position".format(buttonString(Button.ABILITY_2))), HudPosition.TOP, -48, Color.WHITE, HudReeval.VISIBILITY_AND_STRING, SpecVisibility.DEFAULT)
    #Abilities / View Angle / Centerless
    hudSubtext(localPlayer if localPlayer.EditingTool == 3 else null, " \n\n\n\n\n\n\n\n\n\n        Ultimate | Back                      Primary Fire | Set View Angle [ {0} ]{1}".format(Radius_VA_GoBackCP[localPlayer.Checkpoint].y if Radius_VA_GoBackCP[localPlayer.Checkpoint].y else "OFF", "\n\nInteract | Center On Success [ {0} ]                          Reload | Remove View Angle\n   Hold | Ability Count".format("ON" if Prime[localPlayer.Checkpoint] % 7 else "OFF")), HudPosition.TOP, -50, Color.WHITE, HudReeval.VISIBILITY_AND_STRING, SpecVisibility.DEFAULT)
    hudSubtext(localPlayer if localPlayer.EditingTool == 3 else null, " \n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n{0}{1}".format("       Ability | Add a Use            \n   + Crouch | Remove" if AbilityCount[localPlayer.Checkpoint][0] else " \nEnable/Disable Abilities           \n", " \n\n     {0}".format(iconString(Icon.ARROW_DOWN)) if localPlayer.Animated else " \n     {0}\n".format(iconString(Icon.ARROW_DOWN))), HudPosition.RIGHT, -8, Color.WHITE, HudReeval.VISIBILITY_AND_STRING, SpecVisibility.DEFAULT)
    #Create Connection
    hudSubtext(localPlayer if localPlayer.EditingTool == 7 else null, " \n\n\n\n\n\n\n\n\n\nUltimate | Back                             Melee | Connect \n\n\n\n", HudPosition.TOP, -50, Color.WHITE, HudReeval.VISIBILITY, SpecVisibility.DEFAULT)
    #Remove Connection
    hudSubtext(localPlayer if localPlayer.EditingTool == 11 else null, " \n\n\n\n\n\n\n\n\n\n\n\nUltimate | Cancel                                 Melee | Disconnect", HudPosition.TOP, -50, Color.WHITE, HudReeval.VISIBILITY, SpecVisibility.DEFAULT)
    hudSubtext(localPlayer if localPlayer.EditingTool == 11 else null, " \n\n\n\n\n\n\n\nRemove Connection?", HudPosition.TOP, -49, Color.RED, HudReeval.VISIBILITY, SpecVisibility.DEFAULT)
    #Hidden CP
    hudSubtext(localPlayer if localPlayer.EditingTool == -3 else null, " \n\n\n\n\n\n\n\n\n\n      Ultimate | Back                       Melee | Create Checkpoint", HudPosition.TOP, -50, Color.WHITE, HudReeval.VISIBILITY, SpecVisibility.DEFAULT)


rule "Local - Creator HUD Menu 2":
    @Condition Prime == true
    
    #Menu 2
    hudSubtext(localPlayer if localPlayer.EditingTool == 4 else null, " \n\n\n\n\n\n\n\n                                  {0}   | Effects\n{1}\n{2}".format(buttonString(Button.SECONDARY_FIRE), " \n    Ultimate | Back                        {0} | Effect Lock".format(buttonString(Button.ABILITY_1)), "                                     Hold | Effect CP Lock\n" if len(localPlayer.Local_Pos) != localPlayer.CPcount else " \n"), HudPosition.TOP, -50, Color.WHITE, HudReeval.VISIBILITY_AND_STRING, SpecVisibility.DEFAULT)
    hudSubtext(localPlayer if localPlayer.EditingTool == 4 else null, "  Interact | Teleport                              Primary Fire | Time Trial", HudPosition.TOP, -49.5, Color.WHITE, HudReeval.VISIBILITY, SpecVisibility.DEFAULT)
    hudSubtext(localPlayer if localPlayer.EditingTool == 4 else null, " \n\n\nReload + Melee | Remove CP                         {0}   | Missions ".format(buttonString(Button.ABILITY_2)), HudPosition.TOP, -48, Color.WHITE, HudReeval.VISIBILITY_AND_STRING, SpecVisibility.DEFAULT)
    #Teleport
    hudSubtext(localPlayer if localPlayer.EditingTool == 5 else null, " \n\n\n\n\n\n\n\n\n\n\n   Ultimate | Back                           Reload + Melee | Remove Teleport\n{0}".format(" \n\nInteract | Position"), HudPosition.TOP, -50, Color.WHITE, HudReeval.VISIBILITY, SpecVisibility.DEFAULT)
    #Time Trial
    hudSubtext(localPlayer if localPlayer.EditingTool == -5 else null, " \n\n\n\n\n\n\n\n\n                Primary Fire + Rocket Punch | Roaming [ {0} ]{1}{2}".format("ON" if localPlayer.EditTime > false else "OFF", " \n\n       Ultimate | Back                             Reload | Pioneer", " \n\n\nPrimary Fire + Jump | Time +           [Time: {0} ]           Primary Fire + Crouch | Time -".format(abs(localPlayer.EditTime) + 0.001)), HudPosition.TOP, -50, Color.WHITE, HudReeval.VISIBILITY_AND_STRING, SpecVisibility.DEFAULT)
    hudSubtext(localPlayer if localPlayer.EditingTool == -5 else null, " \n\n\n\n     Slam | {0}                                {1}".format("Remove Time" if HiddenCP_TpRad_TT[localPlayer.Checkpoint].z else "Set Time       ", ("Melee | Set time & Create CP     \n\n      {0}                                 Interact | Move Temp. CP".format("Last time: {0}".format(localPlayer.LocalC[7]) if localPlayer.LocalC[7] else "     ")) if localPlayer.MovingElement == localPlayer.TempCP[false] else "                "), HudPosition.TOP, -49, Color.WHITE, HudReeval.VISIBILITY_AND_STRING, SpecVisibility.DEFAULT)
    hudSubtext(localPlayer if localPlayer.EditingTool == -6 else null, " \n\n\n\n\n\n\n\n\n\nUltimate | Back                         Reload | Reset ", HudPosition.TOP, -50, Color.WHITE, HudReeval.VISIBILITY, SpecVisibility.DEFAULT)
    hudSubtext(localPlayer if localPlayer.EditingTool == -6 else null, " \n\n\n\n\n\n\nTimer: {0}".format(abs(localPlayer.TTtimer)), HudPosition.TOP, -49, Color.RED, HudReeval.VISIBILITY_AND_STRING, SpecVisibility.DEFAULT)
    #Remove CP
    hudSubtext(localPlayer if localPlayer.EditingTool == 8 else null, " \n\n\n\n\n\n\n\n\n\n\n\n\n\nUltimate | Cancel                           Melee | Remove  ", HudPosition.TOP, -50, Color.WHITE, HudReeval.VISIBILITY, SpecVisibility.DEFAULT)
    hudSubtext(localPlayer if localPlayer.EditingTool == 8 else null, " \n\n\nRemove Checkpoint?\n{0}".format(" \n\nAre you sure?\nRemoving this checkpoint also removes all\nthe subsequent checkpoints with no other\nconnections to them." if localPlayer.Remove else ""), HudPosition.TOP, -49, Color.RED, HudReeval.VISIBILITY_AND_STRING, SpecVisibility.DEFAULT)


rule "Local - Creator HUD Effects":
    @Condition Prime == true
    
    hudSubtext(localPlayer if localPlayer.EditingTool == 10 else null, " \n\n\n\n\n\n\n\n\n\n   Ultimate | Back                          Primary Fire + Jump | Time +\n{0}".format(" \n\nInteract | {0}                            Primary Fire + Crouch | Time -".format("Create Effect" if localPlayer.MovingElement == CPposition[localPlayer.Checkpoint] else "Edit Effect")), HudPosition.TOP, -50, Color.WHITE, HudReeval.VISIBILITY_AND_STRING, SpecVisibility.DEFAULT)
    hudSubtext(localPlayer if localPlayer.EditingTool == 10 else null, " \n\n\n\n\n{0}                              {1}\n\n\n\n".format(iconString(Icon.ARROW_LEFT), iconString(Icon.ARROW_RIGHT)), HudPosition.TOP, -49, Color.WHITE, HudReeval.VISIBILITY, SpecVisibility.DEFAULT)
    hudSubtext(localPlayer if localPlayer.EditingTool == 10 else null, " \n\n\nMelee | Remove Effect                                    ", HudPosition.TOP, -47, Color.WHITE, HudReeval.VISIBILITY, SpecVisibility.DEFAULT)
    hudHeader(localPlayer if localPlayer.EditingTool == 9 and not localPlayer.isHoldingButton(Button.INTERACT) else null, evalOnce([false, " Death ", " Ability ", " Permeation ", " Checkpoint ", " Portal ", " Portal ", " Black Hole ", " Zipline ", " Zipline "])[abs(localPlayer.EditState)] if localPlayer.EditState else "Time Change: {0} ".format(localPlayer.EditTime + 0.001), HudPosition.TOP, -48, Color.WHITE, HudReeval.VISIBILITY_AND_STRING, SpecVisibility.DEFAULT)
    hudSubtext(localPlayer if localPlayer.EditingTool == 9 and localPlayer.EditState < false and not localPlayer.isHoldingButton(Button.INTERACT) else null, " \n  Primary Fire + Ability | ON / OFF \n{0}\n{1}[ {2} ]".format(("      {0}   {1}   {2}".format(abilityIconString(localPlayer.getCurrentHero(), Button.SECONDARY_FIRE) if localPlayer.EditTime % 2 else "  ", abilityIconString(localPlayer.getCurrentHero(), Button.ABILITY_1) if localPlayer.EditTime % 3 else "  ", abilityIconString(localPlayer.getCurrentHero(), Button.ABILITY_2) if localPlayer.EditTime % 5 else "  ")) if localPlayer.EditTime % 11 else "        No Change", " Primary Fire + Reload | No Change \n Hold | {0} ".format("Centerless" if localPlayer.EditState == -4 else "Reset Ability CDs"), "ON" if localPlayer.EditTime < false else "OFF"), HudPosition.TOP, -47, Color.WHITE, HudReeval.VISIBILITY_AND_STRING, SpecVisibility.DEFAULT)
    hudSubtext(localPlayer if localPlayer.EditingTool == 9 and not localPlayer.isHoldingButton(Button.INTERACT) else null, " \n Reload + Jump | Effect Size +               Reload + Crouch | Effect Size - ", HudPosition.TOP, -46, Color.WHITE, HudReeval.VISIBILITY, SpecVisibility.DEFAULT)
    hudSubtext(localPlayer if localPlayer.EditingTool == 9 else null, " \n\n\n    Primary Fire + Jump/Crouch | Time +/-{0}".format(" \n\n\n\n{0}\n\n    Interact | Effect State".format(" \n    {0}   | Snap Position".format(buttonString(Button.ABILITY_2)) if localPlayer.EditState == -4 else "    Effect Type:\n    {0}   | Sphere / Light Shaft".format(buttonString(Button.ABILITY_2)))), HudPosition.LEFT, 3, Color.WHITE, HudReeval.VISIBILITY_AND_STRING, SpecVisibility.DEFAULT)
    createInWorldText(localPlayer if localPlayer.EditingTool == 9 and localPlayer.isHoldingButton(Button.INTERACT) else [], " Cancel ", localPlayer.Detector3[false], 1.3, Clip.NONE, WorldTextReeval.VISIBILITY_AND_POSITION, Color.WHITE, SpecVisibility.DEFAULT)
    createInWorldText(localPlayer if localPlayer.EditingTool == 9 and localPlayer.isHoldingButton(Button.INTERACT) else [], " Time ", localPlayer.Detector3[true], 1.3, Clip.NONE, WorldTextReeval.VISIBILITY_AND_POSITION, Color.SKY_BLUE, SpecVisibility.DEFAULT)
    createInWorldText(localPlayer if localPlayer.EditingTool == 9 and localPlayer.isHoldingButton(Button.INTERACT) else [], " Death ", localPlayer.Detector3[2], 1.3, Clip.NONE, WorldTextReeval.VISIBILITY_AND_POSITION, Color.RED, SpecVisibility.DEFAULT)
    createInWorldText(localPlayer if localPlayer.EditingTool == 9 and localPlayer.isHoldingButton(Button.INTERACT) else [], " Ability ", localPlayer.Detector3[3], 1.3, Clip.NONE, WorldTextReeval.VISIBILITY_AND_POSITION, Color.WHITE, SpecVisibility.DEFAULT)
    createInWorldText(localPlayer if localPlayer.EditingTool == 9 and localPlayer.isHoldingButton(Button.INTERACT) else [], " Permeation ", localPlayer.Detector3[4], 1.3, Clip.NONE, WorldTextReeval.VISIBILITY_AND_POSITION, Color.LIME_GREEN, SpecVisibility.DEFAULT)
    createInWorldText(localPlayer if localPlayer.EditingTool == 9 and localPlayer.isHoldingButton(Button.INTERACT) else [], " Checkpoint ", localPlayer.Detector3[5], 1.3, Clip.NONE, WorldTextReeval.VISIBILITY_AND_POSITION, Color.ORANGE, SpecVisibility.DEFAULT)
    createInWorldText(localPlayer if localPlayer.EditingTool == 9 and localPlayer.isHoldingButton(Button.INTERACT) else [], " Portal ", localPlayer.Detector3[6], 1.3, Clip.NONE, WorldTextReeval.VISIBILITY_AND_POSITION, Color.ORANGE, SpecVisibility.DEFAULT)
    createInWorldText(localPlayer if localPlayer.EditingTool == 9 and localPlayer.isHoldingButton(Button.INTERACT) else [], " Black Hole ", localPlayer.Detector3[7], 1.3, Clip.NONE, WorldTextReeval.VISIBILITY_AND_POSITION, Color.BLACK, SpecVisibility.DEFAULT)
    createInWorldText(localPlayer if localPlayer.EditingTool == 9 and localPlayer.isHoldingButton(Button.INTERACT) else [], " Zipline ", localPlayer.Detector3[8], 1.3, Clip.NONE, WorldTextReeval.VISIBILITY_AND_POSITION, Color.BLUE, SpecVisibility.DEFAULT)


rule "Local - Creator HUD Missions":
    @Condition Prime == true
    
    #Missions
    hudSubtext(localPlayer if localPlayer.EditingTool == 12 else null, " \n\n\nUp, Down | Select Mission\n\nLeft, Right | Change Mission\n{0}".format(" \n\nPrimary Fire + Jump | Time +\n\nPrimary Fire + Crouch | Time -"), HudPosition.LEFT, 14, Color.WHITE, HudReeval.VISIBILITY, SpecVisibility.DEFAULT)
    hudText(localPlayer if localPlayer.EditingTool == 12 else null, null, " \n\n\n\n\n   Mission                   TIME/LOCK", "{0} {1}    -    {2}".format(" »" if localPlayer.MissionSelect == false else " ", localPlayer.MissionText[localPlayer.Mission[false]], "LOCKED" if localPlayer.MissionTime[false] > 9900 else localPlayer.MissionTime[false] + 0.001), HudPosition.LEFT, 10, Color.WHITE, Color.RED, Color.WHITE, HudReeval.VISIBILITY_AND_STRING, SpecVisibility.DEFAULT)
    hudSubtext(localPlayer if localPlayer.EditingTool == 12 else null, "{0} {1}    -    {2}".format(" »" if localPlayer.MissionSelect == 1 else " ", localPlayer.MissionText[localPlayer.Mission[1]], "LOCKED" if localPlayer.MissionTime[true] > 9900 else localPlayer.MissionTime[true] + 0.001), HudPosition.LEFT, 11, Color.WHITE, HudReeval.VISIBILITY_AND_STRING, SpecVisibility.DEFAULT)
    hudSubtext(localPlayer if localPlayer.EditingTool == 12 else null, "{0} {1}    -    {2}".format(" »" if localPlayer.MissionSelect == 2 else " ", localPlayer.MissionText[localPlayer.Mission[2]], "LOCKED" if localPlayer.MissionTime[2] > 9900 else localPlayer.MissionTime[2] + 0.001), HudPosition.LEFT, 12, Color.WHITE, HudReeval.VISIBILITY_AND_STRING, SpecVisibility.DEFAULT)
    hudSubtext(localPlayer if localPlayer.EditingTool == 12 else null, "{0} {1}    -    {2}".format(" »" if localPlayer.MissionSelect == 3 else " ", localPlayer.MissionText[localPlayer.Mission[3]], "LOCKED" if localPlayer.MissionTime[3] > 9900 else localPlayer.MissionTime[3] + 0.001), HudPosition.LEFT, 13, Color.WHITE, HudReeval.VISIBILITY_AND_STRING, SpecVisibility.DEFAULT)
    hudSubtext(localPlayer if localPlayer.EditingTool == 12 else null, " \n\n\n\n\n\n\n\n\n\n\nUltimate | Back & Setup Missions                                             {0}".format("\n\nMelee | Reset Mission\n\nInteract | Mission Lock\n\nReload | Switch Lock Target\n\n{0} | Lock/Unlock CP".format(buttonString(Button.ABILITY_1))), HudPosition.TOP, -50, Color.WHITE, HudReeval.VISIBILITY_AND_STRING, SpecVisibility.DEFAULT)
    hudText(localPlayer if any(localPlayer.Mission) and localPlayer.CreatorState < 3 else null, null, " \n\n\n\n\nMissions", localPlayer.MissionHUD, HudPosition.LEFT, 13, Color.WHITE, Color.WHITE, Color.ORANGE, HudReeval.VISIBILITY_AND_STRING, SpecVisibility.DEFAULT)


rule "Local - Creator HUD Multi use":
    @Condition Prime == true
    
    #Menu 1 & 2 WASD
    hudSubtext(localPlayer if localPlayer.CreatorState and (any([not player or player == 3 or player == 4 or player == 7 for player in localPlayer.EditingTool])) else null, " \n\n             Forward | Next CP\n\n\n{0}                              {1}\n\n\n\n              Backward | Previous CP".format(iconString(Icon.ARROW_LEFT) if len([player for player in localPlayer.Local_Rad if player]) > 1 else "   ", iconString(Icon.ARROW_RIGHT) if len([player for player in localPlayer.Local_Rad if player]) > 1 else "  "), HudPosition.TOP, -49, Color.WHITE, HudReeval.VISIBILITY_AND_STRING, SpecVisibility.DEFAULT)
    #Moving CP / Effect
    hudSubtext(localPlayer if any([player == 1 or player == 9 and not localPlayer.isHoldingButton(Button.INTERACT) for player in localPlayer.EditingTool]) else null, " \n\n\n\n\n\n\n\n\n\n  Hold Ultimate | Discard                       Hold Melee | Confirm  \n{0}".format(" \n\n{0} | Speed +                                   {1}   | Speed - ".format(buttonString(Button.ABILITY_1), buttonString(Button.SECONDARY_FIRE))), HudPosition.TOP, -50, Color.WHITE, HudReeval.VISIBILITY_AND_STRING, SpecVisibility.DEFAULT)
    hudSubtext(localPlayer if any([player == 1 or player == 9 and not localPlayer.isHoldingButton(Button.INTERACT) for player in localPlayer.EditingTool]) else null, " \n\n  Jump | Up\n\n\n\n\n\n\nCrouch | Down   ", HudPosition.TOP, -49, Color.WHITE, HudReeval.VISIBILITY, SpecVisibility.DEFAULT)


rule "Local - All Players HUD, Rings & Icons":
    hudSubtext(localPlayer, "Server Load  |  Current {0}  |  Avg {1}  |  Peak {2}".format(getServerLoad(), getAverageServerLoad(), getPeakServerLoad()), HudPosition.RIGHT, -10, Color.WHITE, HudReeval.VISIBILITY_AND_STRING, SpecVisibility.DEFAULT)
    hudSubheader(localPlayer, "Entity count: {0}\nText count: {1}".format(getNumberOfEntityIds(), getNumberOfTextIds()), HudPosition.RIGHT, -9.5, Color.RED, HudReeval.VISIBILITY_AND_STRING, SpecVisibility.DEFAULT)
    hudSubtext(localPlayer, "Time: {0}:{2}{1}".format(floor(getTotalTimeElapsed() / 60), floor(getTotalTimeElapsed() % 60), "0" if getTotalTimeElapsed() % 60 < 10 else ""), HudPosition.RIGHT, -9, Color.WHITE, HudReeval.VISIBILITY_AND_STRING, SpecVisibility.DEFAULT)
    hudSubtext(getAllPlayers(), " \n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n", HudPosition.TOP, -1, Color.WHITE, HudReeval.VISIBILITY, SpecVisibility.DEFAULT)
    #Skip To Arrow
    createIcon(localPlayer if localPlayer.Diverge > false else null, CPposition[localPlayer.Diverge] + (Vector.UP * (1.4 + distance(localPlayer.getPosition(), CPposition[localPlayer.Diverge]) / 25)), Icon.ARROW_DOWN, IconReeval.VISIBILITY_AND_POSITION, Color.RED, true)
    #Current CP
    createEffect(localPlayer, Effect.RING, Color.AQUA, localPlayer.CPData[7], localPlayer.CPData[8], EffectReeval.VISIBILITY_POSITION_AND_RADIUS)
    #Ring & Icon 1
    createEffect(localPlayer if localPlayer.Local_Rad[false] and Prime[localPlayer.Checkpoint] % 11 else null, Effect.RING, Color.RED, localPlayer.Local_Pos[false], localPlayer.Local_Rad[false], EffectReeval.VISIBILITY_POSITION_AND_RADIUS)
    createIcon(localPlayer if localPlayer.Local_Rad[false] and Prime[localPlayer.Checkpoint] % 11 else null, localPlayer.Local_Pos[false] + Vector.UP, Icon.FLAG, IconReeval.VISIBILITY_AND_POSITION, Color.RED, true)
    #Ring & Icon 2
    createEffect(localPlayer if localPlayer.Local_Rad[true] and Prime[localPlayer.Checkpoint] % 11 else null, Effect.RING, Color.RED, localPlayer.Local_Pos[true], localPlayer.Local_Rad[true], EffectReeval.VISIBILITY_POSITION_AND_RADIUS)
    createIcon(localPlayer if localPlayer.Local_Rad[true] and Prime[localPlayer.Checkpoint] % 11 else null, localPlayer.Local_Pos[true] + Vector.UP, Icon.FLAG, IconReeval.VISIBILITY_AND_POSITION, Color.RED, true)
    #Ring & Icon 3
    createEffect(localPlayer if localPlayer.Local_Rad[2] and Prime[localPlayer.Checkpoint] % 11 else null, Effect.RING, Color.RED, localPlayer.Local_Pos[2], localPlayer.Local_Rad[2], EffectReeval.VISIBILITY_POSITION_AND_RADIUS)
    createIcon(localPlayer if localPlayer.Local_Rad[2] and Prime[localPlayer.Checkpoint] % 11 else null, localPlayer.Local_Pos[2] + Vector.UP, Icon.FLAG, IconReeval.VISIBILITY_AND_POSITION, Color.RED, true)
    #Hidden CP
    createEffect(localPlayer if localPlayer.Local_Rad[3] and Prime[localPlayer.Checkpoint] % 11 else null, Effect.RING, Color.WHITE, localPlayer.Local_Pos[3], localPlayer.Local_Rad[3], EffectReeval.VISIBILITY_POSITION_AND_RADIUS)
    #Ability Count
    hudSubtext(localPlayer if AbilityCount[localPlayer.Checkpoint] else [], " " if localPlayer.EditingTool == 3 else " \n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n", HudPosition.RIGHT, -7, Color.WHITE, HudReeval.VISIBILITY_AND_STRING, SpecVisibility.DEFAULT)
    #Ability Count
    hudText(localPlayer if AbilityCount[localPlayer.Checkpoint] else [], "   {0}        {1}        {2}   ".format(localPlayer.AbilityCount.y, localPlayer.AbilityCount.z, localPlayer.AbilityCount.x), null, "                                        ", HudPosition.RIGHT, -6, Color.RED, Color.WHITE, Color.WHITE, HudReeval.VISIBILITY_AND_STRING, SpecVisibility.DEFAULT)


rule "HUD - Tester":
    wait(5)
    hudSubtext(localPlayer if localPlayer.CreatorState < 2 and localPlayer.Level else [], "LVL {0} CP {1} / {2}".format(localPlayer.Level, localPlayer.Checkpoint - localPlayer.CPData[9], (localPlayer.CPData[10] if localPlayer.CPData[10] >= false else len(CPposition)) - (localPlayer.CPData[9] + true)), HudPosition.TOP, -50, Color.WHITE, HudReeval.VISIBILITY_AND_STRING, SpecVisibility.DEFAULT)
    hudSubtext(localPlayer if localPlayer.CreatorState < 2 else [], "Time: {0}".format(localPlayer.RunTime + 0.001), HudPosition.TOP, -49, Color.WHITE, HudReeval.VISIBILITY_AND_STRING, SpecVisibility.DEFAULT)
    hudText(localPlayer, null, "Mission Time Change: {0}".format(localPlayer.MissionTimeChange + 0.001) if localPlayer.MissionTimeChange else " ", "{0}".format(" Time Change: {0}".format(localPlayer.Effvisible[len(localPlayer.Efftype)]) if localPlayer.Effvisible[len(localPlayer.Efftype)] else " "), HudPosition.TOP, -47, Color.WHITE, Color.ORANGE, Color.SKY_BLUE, HudReeval.VISIBILITY_AND_STRING, SpecVisibility.DEFAULT)
    hudSubtext(localPlayer if localPlayer.CreatorState < 2 else [], "{0}".format(" \n\n\nTime Trial: {0}".format(abs(localPlayer.TTtimer) + 0.001) if HiddenCP_TpRad_TT[localPlayer.Checkpoint].z else " "), HudPosition.TOP, -1, Color.RED, HudReeval.VISIBILITY_AND_STRING, SpecVisibility.DEFAULT)
    hudSubtext(localPlayer if localPlayer.CreatorState == 1 else [], "{0} -- Last Time: {1}".format(localPlayer.CPtimer, localPlayer.LastCPtime), HudPosition.TOP, -48, Color.WHITE, HudReeval.VISIBILITY_AND_STRING, SpecVisibility.DEFAULT)
    hudSubtext(localPlayer if localPlayer.CreatorState == false else [], "Hold Ultimate to clear times", HudPosition.RIGHT, -100, Color.RED, HudReeval.VISIBILITY, SpecVisibility.NEVER)


rule "HUD - Tester Times":
    @Event eachPlayer
    @Condition eventPlayer.CreatorState < 2
    @Condition (Prime[eventPlayer.Checkpoint + true]) % 13 == false
    @Condition eventPlayer.CPData[false] == eventPlayer.Checkpoint
    @Condition eventPlayer.RunState == 1
    @Condition eventPlayer.Checkpoint == true
    
    if eventPlayer.RunTime > eventPlayer.PB[eventPlayer.Level] and eventPlayer.PB[eventPlayer.Level]:
        return
    if not eventPlayer.Level:
        eventPlayer.PB[false] = eventPlayer.RunTime
        if not eventPlayer.BestTimes[false]:
            hudSubtext(eventPlayer, "Diverge/Single: {0}".format(eventPlayer.PB[false]), HudPosition.RIGHT, 0, Color.WHITE, HudReeval.STRING, SpecVisibility.DEFAULT)
            eventPlayer.BestTimes[false] = getLastCreatedText()
    else:
        eventPlayer.PB[eventPlayer.Level] = eventPlayer.RunTime
        destroyHudText(eventPlayer.BestTimes[eventPlayer.Level])
        wait()
        hudSubtext(eventPlayer, "Level {1}: {0}".format(eventPlayer.PB[eventPlayer.Level], eventPlayer.Level), HudPosition.RIGHT, eventPlayer.Level, Color.WHITE, HudReeval.NONE, SpecVisibility.DEFAULT)
        eventPlayer.BestTimes[eventPlayer.Level] = getLastCreatedText()


rule "HUD - Animate Ability Arrow":
    @Event eachPlayer
    @Condition eventPlayer.EditingTool == 3
    
    wait(0.5)
    eventPlayer.Animated = not eventPlayer.Animated
    if RULE_CONDITION:
        goto RULE_START


rule "Destroy Times Non-Creator   |   Hold Ultimate":
    @Event eachPlayer
    @Condition eventPlayer.CreatorState == false
    @Condition eventPlayer.isHoldingButton(Button.ULTIMATE) == true
    
    wait(2)
    DestroyTimes()


def DestroyTimes():
    @Name "Destroy HUD Times sub"
    
    for eventPlayer.Detector1 in range(false, len(eventPlayer.BestTimes), true):
        destroyHudText(eventPlayer.BestTimes[eventPlayer.Detector1])
    eventPlayer.BestTimes = []
    eventPlayer.PB = []


/*
rule "TEST ZONE":
    @Event eachPlayer
    #@Condition eventPlayer.isHoldingButton(Button.INTERACT) == true
    #@Condition eventPlayer.isHoldingButton(Button.ABILITY_2) == true
    
    #eventPlayer.Debug = not eventPlayer.Debug
    #hudHeader(eventPlayer, "vertical speed {0}\n30% input {1}                     ".format(eventPlayer.getVerticalSpeed() + 0.001, "ON" if eventPlayer.Jump2win else "OFF"), HudPosition.LEFT, 10, Color.WHITE, HudReeval.VISIBILITY_AND_STRING, SpecVisibility.DEFAULT)
*/


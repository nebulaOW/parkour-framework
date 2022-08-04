#Global variables

globalvar CPposition 0
globalvar MP1 1
globalvar Con 2
globalvar Mission 3
globalvar Prime 4
globalvar MP3 5
globalvar MP4 6
globalvar Mission1T 7
globalvar Teleport 9
globalvar TCD 10
globalvar TCDpos 11
globalvar TCD2 12
globalvar TCD2pos 13
globalvar Detector2 14
globalvar TCD3pos 15
globalvar ActualTimes 16
globalvar DisplayTimes 17
globalvar Names 18
globalvar FirstTo4th 19
globalvar LBlevels 20
globalvar LBsort 21
globalvar LBnames 22
globalvar LBleft 23
globalvar QMissionDisplay 24
globalvar TimeRemaining 25
globalvar MissionText 26
globalvar LBalign 27
globalvar LBgen 28
globalvar LBalignDisplay 29
globalvar LvlCPpos 44
globalvar LvlCPrad 45
globalvar Detector 46
globalvar LevelCounter 47
globalvar LevelCPcounter 48
globalvar HUD 49
globalvar LvlName 58
globalvar QMission 59
globalvar QMissionTime 60
globalvar QTCD 61
globalvar QLock 62
globalvar Detector3 63
globalvar PrimeNumbers 64
globalvar QPos 65
globalvar QRad 66
globalvar AbilityEffectDisplay 68
globalvar SpaceBois 99
globalvar Align 100
globalvar Completionist 101


#Player variables

playervar TEST 0
playervar Checkpoint 1
playervar LocalC 2
playervar PBdisplay 3
playervar Preview 4
playervar PBhud 5
playervar DestroyEffect 6
playervar RingsTCD 7
playervar TCDinitiate 8
playervar Roaming 9
playervar Completionist 10
playervar Diverge 11
playervar Spectate2 12
playervar ForceSlam 13
playervar CPchange 14
playervar Diverge2 15
playervar dontcomein 16
playervar ProMode 17
playervar GenRings 18
playervar TTsetTime 19
playervar TTtimer 20
playervar Start 21
playervar CPtime 22
playervar ActualTime 23
playervar CPtimeDisplay 24
playervar PMrecenter 25
playervar Detector1 26
playervar Grace 28
playervar LUL 29
playervar DetectorBounce 32
playervar PMreset 33
playervar Horizontal2 34
playervar MTimeChange 35
playervar Horizontal3 36
playervar Mreset 37
playervar Spectate 38
playervar LeftTargetHit 39
playervar RightTargetHit 40
playervar TCDcollector 41
playervar TCDpos 42
playervar TCDtim 43
playervar TCDrad 44
playervar TCDeff 45
playervar ActualTimeDiv10 46
playervar LeftTargetPos 47
playervar RightTargetPos 48
playervar TargetString 49
playervar LocalPos 52
playervar LocalRad 53
playervar Invis 54
playervar TCDdetect 56
playervar Fail 57
playervar TCDFdisplay 59
playervar Run 60
playervar Mission 62
playervar MissionTime 63
playervar TCDradD 65
playervar HorizontalAngle 67
playervar Horizontal1 68
playervar MissionC 69
playervar M360 70
playervar Level 74
playervar MissionHUD 75
playervar Detector3 76
playervar PB 77
playervar MissionDisplay 79
playervar UCFix 81
playervar CPcounter 82
playervar Lock 89


#Subroutine names

subroutine Leaderboard 0
subroutine TTskipgoback 1
subroutine CreateRings 2
subroutine Reset 3
subroutine TCDtime 4
subroutine MissionPlayerHUD 5
subroutine LeaderboardHUD 6
subroutine CustomColors 7
subroutine PlayerCustomRings 8
subroutine PlayerCustomIcons 9
subroutine UCFix 10
subroutine AJCenable 17
subroutine AJCdisable 18
subroutine TCDcreate1 23
subroutine TCDcreate2 24
subroutine TCDcreate3 25
subroutine TimeTrial 26
subroutine TCDinitiate 27
subroutine While1 28
subroutine While2 29
subroutine TCDtext 30
subroutine DestroyEffects 31
subroutine MPreseteffect 32
subroutine CPfail 36
subroutine CPclear 37
subroutine AbilityCDreset 38
subroutine teleport 42
subroutine AbilityEnableDisable 43
subroutine SetDiverge 46
subroutine TCDtimechange 51
subroutine DynamicDetection 52
subroutine CPchange 55
subroutine SetFacing 57
subroutine DisallowButtons 60
subroutine AllowButtons 61
subroutine MissionReset 63
subroutine MissionAbilityFirst 64
subroutine MissionTimeChange 67



rule "Create Targets":
    @Event eachPlayer
    @Condition eventPlayer.Checkpoint == 10
    

    

    eventPlayer.LeftTargetPos = vect(27.294, 0.842, -48.62)
    eventPlayer.RightTargetPos = vect(-3.725, 0.213, -52.918)
    eventPlayer.LeftTargetHit = false
    eventPlayer.RightTargetHit = false
    eventPlayer.TargetString = ""


rule "Big Doom Create Left Target":
    @Event eachPlayer
    @Condition eventPlayer.Level == 8
    @Condition eventPlayer.CPcounter == 10
    @Condition eventPlayer.LeftTargetHit == false
    @Condition eventPlayer.RightTargetHit == false
    
    wait(0.1)
    eventPlayer.TargetString = "Trapped?  Try shooting the locks..."
    createInWorldText(eventPlayer, eventPlayer.TargetString, vect(12.996, 1.938, -44.911), 1.3, Clip.SURFACES, WorldTextReeval.VISIBILITY_POSITION_AND_STRING, Color.RED, SpecVisibility.DEFAULT)
    wait(0.1)
    createEffect(eventPlayer, Effect.SPHERE, Color.GREEN, eventPlayer.LeftTargetPos, 0.3, EffectReeval.VISIBILITY_POSITION_AND_RADIUS)


rule "Big Doom Shoot Left Target":
    @Event eachPlayer
    @Condition eventPlayer.isFiringPrimaryFire() == true
    @Condition distance(eventPlayer.LeftTargetPos, raycast(eventPlayer.getEyePosition(), eventPlayer.getEyePosition() + eventPlayer.getFacingDirection() * 1000, getAllPlayers(), eventPlayer, true).getHitPosition()) <= abs(0.8)
    
    eventPlayer.LeftTargetHit = true
    destroyEffect(getLastCreatedEntity())
    playEffect(eventPlayer, DynamicEffect.GOOD_EXPLOSION, Color.PURPLE, eventPlayer.LeftTargetPos, 1)
    playEffect(eventPlayer, DynamicEffect.BUFF_IMPACT_SOUND, Color.PURPLE, eventPlayer.LeftTargetPos, 5)


rule "Big Doom Create Right Target":
    @Event eachPlayer
    @Condition eventPlayer.Level == 8
    @Condition eventPlayer.CPcounter == 10
    @Condition eventPlayer.LeftTargetHit == true
    @Condition eventPlayer.RightTargetHit == false
    
    wait(0.1)
    createEffect(eventPlayer, Effect.SPHERE, Color.GREEN, eventPlayer.RightTargetPos, 0.3, EffectReeval.VISIBILITY_POSITION_AND_RADIUS)


rule "Big Doom Shoot Right Target":
    @Event eachPlayer
    @Condition eventPlayer.isFiringPrimaryFire() == true
    @Condition distance(eventPlayer.RightTargetPos, raycast(eventPlayer.getEyePosition(), eventPlayer.getEyePosition() + eventPlayer.getFacingDirection() * 1000, getAllPlayers(), eventPlayer, true).getHitPosition()) <= abs(0.8)
    
    eventPlayer.RightTargetHit = true
    destroyEffect(getLastCreatedEntity())
    playEffect(eventPlayer, DynamicEffect.GOOD_EXPLOSION, Color.PURPLE, eventPlayer.RightTargetPos, 1)
    playEffect(eventPlayer, DynamicEffect.BUFF_IMPACT_SOUND, Color.PURPLE, eventPlayer.RightTargetPos, 5)


rule "Big Doom Teleport":
    @Event eachPlayer
    @Condition eventPlayer.LeftTargetHit == true
    @Condition eventPlayer.RightTargetHit == true
    @Condition eventPlayer.Level == 8
    @Condition eventPlayer.CPcounter == 10
    
    destroyEffect(getLastCreatedEntity())
    destroyEffect(getLastCreatedEntity())
    destroyInWorldText(getLastCreatedText())
    wait(0.15)
    eventPlayer.teleport(vect(13.14, 7.053, -48.9))


rule "Big Doom Reset Targets":
    @Event eachPlayer
    @Condition eventPlayer.CPcounter != 10
    
    eventPlayer.LeftTargetHit = false
    eventPlayer.RightTargetHit = false
    eventPlayer.TargetString = ""



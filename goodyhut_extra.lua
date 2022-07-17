--------------------------------
--     Dynamic GoodyHuts      --
--------------------------------
include "MapUtilities"

function RevealedToPlayer(x, y, playerID)
    local playerVis = PlayerVisibilityManager.GetPlayerVisibility(playerID)
    if (playerVis ~= nil) then
        return playerVis:IsRevealed(x, y)
    end
    return false
end

function VisibleToPlayer(x, y, playerID)
    local playerVis = PlayerVisibilityManager.GetPlayerVisibility(playerID)
    if (playerVis ~= nil) then
        return playerVis:IsVisible(x, y)
    end
    return false
end

function VisibleToAnyPlayer(x, y)
    local majorList = PlayerManager.GetAliveMajorIDs()
    for _, playerIndex in ipairs(majorList) do
        if VisibleToPlayer(x, y, playerIndex) then
            return true
        end
    end
    local minorList = PlayerManager.GetAliveMinorIDs()
    for _, playerIndex in ipairs(minorList) do
        if VisibleToPlayer(x, y, playerIndex) then
            return true
        end
    end
    return false
end

function OnGoodyHutReward( ePlayer:number, unitID:number, eRewardType:number, eRewardSubType:number )
    local num = (Game.GetProperty('NumOfGoodyHutsVisited') or 0) + 1
    Game.SetProperty('NumOfGoodyHutsVisited', num)
    if (num % 2 ~= 0) then
        return
    end

    local m = GameInfo.Maps[Map.GetMapSize()]
    local iW = m.GridWidth
    local iH = m.GridHeight
    local iTiles = iW * iH
    local aPositions = {}
    for x = 0, iW - 1 do
        for y = 0, iH - 1 do
            local i = y * iW + x
            if not VisibleToAnyPlayer(x, y) then
                table.insert(aPositions, i)
            end
        end
    end
    local aShuffledPositions = GetShuffledCopyOfTable(aPositions)
    local improvement = GameInfo.Improvements['IMPROVEMENT_GOODY_HUT']
    if improvement ~= nil then
        local improvementID = improvement.RowId - 1
        for i, pos in ipairs(aShuffledPositions) do
            local plot = Map.GetPlotByIndex(pos)
            local x = plot:GetX()
            local y = plot:GetY()
			local localPlayerID = Game.GetLocalPlayer()
            if CanPlaceGoodyAt(improvement, plot) then
                ImprovementBuilder.SetImprovementType(plot, improvementID, -1)
				if RevealedToPlayer(x, y, localPlayerID) then
					local message = Locale.Lookup('LOC_NOTIFICATION_DISCOVER_GOODY_HUT_MESSAGE')
					local summary = Locale.Lookup('LOC_NOTIFICATION_DISCOVER_GOODY_HUT_SUMMARY')
					local notificationHash = GameInfo.Types['NOTIFICATION_DISCOVER_GOODY_HUT'].Hash
					NotificationManager.SendNotification(localPlayerID, notificationHash, message, summary, x, y)
				end
				break
            end
        end   
    end
end

Events.GoodyHutReward.Add(OnGoodyHutReward)
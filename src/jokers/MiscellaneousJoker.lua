SMODS.Joker{
    key = 'MiscellaneousJoker',
    atlas = 'MiscellaneousJoker',
    pos = {
        x = 0,
        y = 0
    },
    config = {
        extra = {
            chips = 220
        }
    },
    rarity = 1,
    cost = 4,
    blueprint_compat = true,
    loc_vars = function(self, info_queue, card)
        return {
            vars = {
                card.ability.extra.chips
            }
        }
    end,
    check_for_unlock = function(self,args) 
        return G.PROFILES[G.SETTINGS.profile].hand_usage.FlushFive.count > 0
    end,
    calculate = function(self, card, context)
        if context.joker_main and next(context.poker_hands['Flush Five']) then
            return {
                chips = card.ability.extra.chips
            }
        end
    end
}
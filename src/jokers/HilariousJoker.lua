SMODS.Joker{
    key = 'HilariousJoker',
    atlas = 'HilariousJoker',
    pos = {
        x = 0,
        y = 0
    },
    config = {
        extra = {
            mult = 30
        }
    },
    unlocked = false,
    rarity = 1,
    cost = 4,
    blueprint_compat = true,
    loc_vars = function(self, info_queue, card)
        return {
            vars = {
                card.ability.extra.mult
            }
        }
    end,
    check_for_unlock = function(self,args) 
        return G.PROFILES[G.SETTINGS.profile].hand_usage.FiveofaKind.count > 0
    end,
    in_pool = function(self, args) 
        return {
            SMODS.is_poker_hand_visible('Five of a Kind')
        }
    end,
    calculate = function(self, card, context)
        if context.joker_main and next(context.poker_hands['Five of a Kind']) then
            return {
                mult = card.ability.extra.mult
            }
        end
    end
}
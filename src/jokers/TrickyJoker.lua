SMODS.Joker{
    key = 'TrickyJoker',
    atlas = 'TrickyJoker',
    pos = {
        x = 0,
        y = 0
    },
    config = {
        extra = {
            chips = 200
        }
    },
    unlocked = false,
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
    in_pool = function(self, args) 
        return {
            SMODS.is_poker_hand_visible('Five of a Kind')
        }
    end,
    calculate = function(self, card, context)
        if context.joker_main and next(context.poker_hands['Five of a Kind']) then
            return {
                chips = card.ability.extra.chips
            }
        end
    end
}
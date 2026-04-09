SMODS.Joker{
    key = 'SuspiciousJoker',
    atlas = 'placeholders',
    pos = {
        x = 0,
        y = 0
    },
    config = {
        extra = {
            chips = 120
        }
    },
    rarity = 1,
    cost = 5,
    blueprint_compat = true,
    loc_vars = function(self, info_queue, card)
        return {
            vars = {
                card.ability.extra.chips
            }
        }
    end,
    calculate = function(self, card, context)
        if context.joker_main and next(context.poker_hands['Full House']) then
            return {
                chips = card.ability.extra.chips
            }
        end
    end
}
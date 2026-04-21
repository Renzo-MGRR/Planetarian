SMODS.Joker{
    key = 'CuriousJoker',
    atlas = 'CuriousJoker',
    pos = {
        x = 0,
        y = 0
    },
    config = {
        extra = {
            mult = 16
        }
    },
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
    calculate = function(self, card, context)
        if context.joker_main and next(context.poker_hands['Straight Flush']) then
            return {
                chips = card.ability.extra.mult
            }
        end
    end
}
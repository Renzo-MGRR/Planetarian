SMODS.Joker{
    key = 'AceMaster',
    atlas = 'AceMaster',
    pos = {
        x = 0,
        y = 0
    },
    rarity = 2,
    cost = 6,
    blueprint_compat = false,
    config = { extra = { Xmult = 0.1 } },
    loc_vars = function(self, info_queue, card)
        return { vars = { card.ability.extra.Xmult } }
    end,
    calculate = function(self, card, context)
        if context.before then
            local aces = 0
            for _, playing_card in ipairs(G.play.cards) do
                if playing_card:get_id() == 14 and not playing_card.debuff then
                    playing_card.ability.perma_x_mult = playing_card.ability.perma_x_mult + card.ability.extra.Xmult
                    aces = aces + 1
                    SMODS.juice_up_card(playing_card)
                end
            end
            if aces > 0 then
                return {
                    message = localize('k_upgrade_ex'),
                    colour = G.C.MULT
                }
            end
        end
    end   
}
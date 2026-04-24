SMODS.Joker{
    key = 'Shaco',
    atlas = 'TrickyJoker',
    pos = {
        x = 0,
        y = 0
    },
    rarity = 4,
    cost = 20,
    blueprint_compat = true,
    calculate = function(self, card, context)
        local jokerabilities = {}       
        for i = 1, #G.jokers.cards do  
                if not (G.jokers.cards[i].label == "j_Planetarian_Shaco") then
                    local copy_effect = SMODS.blueprint_effect(card, G.jokers.cards[i], context)
                    if copy_effect and not table.contains(context.blueprint_copiers_stack, card) then
                        table.insert(jokerabilities, copy_effect)
                    end
                end
        end
        return SMODS.merge_effects(jokerabilities)
    end
}
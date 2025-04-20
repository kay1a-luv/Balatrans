--[[
Balatrans Framework
- Atlas: "aromantic_pride.png"
- Jokers: Aromantic Pride
--]]

-- Atlas definition (no path resolution)
SMODS.Atlas {
    key = "aromantic_pride",
    path = "aromantic_pride.png",
    px = 71,
    py = 95
}

SMODS.Atlas {
    key = "asexual_pride",
    path = "asexual_pride.png",
    px = 71,
    py = 95
}

SMODS.Atlas {
    key = "demiromantic_pride",
    path = "demiromantic_pride.png",
    px = 71,
    py = 95
}

SMODS.Atlas {
    key = "graysexual_pride",
    path = "graysexual_pride.png",
    px = 71,
    py = 95
}

SMODS.Atlas {
    key = "bisexual_pride",
    path = "bisexual_pride.png",
    px = 71,
    py = 95
}

SMODS.Atlas {
    key = "blahaj",
    path = "blahaj.png",
    px = 71,
    py = 95
}

-- Joker definition (direct SMODS.Joker creation)
SMODS.Joker{
    key = "aromantic_pride",
    loc_txt = {
        name = "Aromantic Pride",
        text = {
            "Gains {C:mult}+12{} Mult when",
            "a {C:tarot}World{} card is used",
            "{C:inactive}(Currently {C:mult}+#1#{C:inactive} Mult)"
        }
    },
    config = {
        extra = {
            current_mult = 0  -- Initialize at 0
        }
    },
    set = "Joker",
    rarity = 1,
    cost = 4,
    unlocked = true,
    discovered = true,
    blueprint_compat = true,
    eternal_compat = true,
    perishable_compat = true,
    atlas = "aromantic_pride",
    pos = {x = 0, y = 0},

    loc_vars = function(self, info_queue, card)
        return {vars = {card.ability.extra.current_mult}}
    end,

    calculate = function(self, card, context)
        -- When a consumable is used
        if context.consumeable and context.consumeable.config.center then
            -- Check if it's a World card
            if context.consumeable.config.center.key == 'c_world' then
                -- Add permanent mult
                card.ability.extra.current_mult = card.ability.extra.current_mult + 12
                return {
                    message = "Queered",
                    colour = G.C.MULT,
                    card = card
                }
            end
        end

        -- Apply accumulated mult during scoring
        if context.joker_main then
            return {
                mult_mod = card.ability.extra.current_mult,
                message = localize{type = 'variable', key = 'a_mult', vars = {card.ability.extra.current_mult}},
                colour = G.C.MULT
            }
        end
    end
}
    credits = {
        idea = {"Kay1a"},
        art = {"Kay1a"},
        code = {"Kay1a"}
    }
-- Asexual Pride (Sun Cards)
SMODS.Joker{
    key = "asexual_pride",
    loc_txt = {
        name = "Asexual Pride",
        text = {
            "Gains {C:mult}+12{} Mult when",
            "a {C:tarot}Sun{} card is used",
            "{C:inactive}(Currently {C:mult}+#1#{C:inactive} Mult)"
        }
    },
    config = {extra = {current_mult = 0}},
    set = "Joker",
    rarity = 1,
    cost = 4,
    unlocked = true,
    discovered = true,
    blueprint_compat = true,
    eternal_compat = true,
    perishable_compat = true,
    atlas = "asexual_pride",
    pos = {x = 0, y = 0}, -- Next position in atlas
    loc_vars = function(self, info_queue, card)
        return {vars = {card.ability.extra.current_mult}}
    end,
    calculate = function(self, card, context)
        if context.consumeable and context.consumeable.config.center then
            if context.consumeable.config.center.key == 'c_sun' then
                card.ability.extra.current_mult = card.ability.extra.current_mult + 12
                return {
                    message = "Queered",
                    colour = G.C.MULT,
                    card = card
                }
            end
        end
        if context.joker_main then
            return {
                mult_mod = card.ability.extra.current_mult,
                message = localize{type = 'variable', key = 'a_mult', vars = {card.ability.extra.current_mult}},
                colour = G.C.MULT
            }
        end
    end
}

-- Demiromantic Pride (Star Cards)
SMODS.Joker{
    key = "demiromantic_pride",
    loc_txt = {
        name = "Demiromantic Pride",
        text = {
            "Gains {C:mult}+12{} Mult when",
            "a {C:tarot}Star{} card is used",
            "{C:inactive}(Currently {C:mult}+#1#{C:inactive} Mult)"
        }
    },
    config = {extra = {current_mult = 0}},
    set = "Joker",
    rarity = 1,
    cost = 4,
    unlocked = true,
    discovered = true,
    blueprint_compat = true,
    eternal_compat = true,
    perishable_compat = true,
    atlas = "demiromantic_pride",
    pos = {x = 0, y = 0}, -- Next atlas position
    loc_vars = function(self, info_queue, card)
        return {vars = {card.ability.extra.current_mult}}
    end,
    calculate = function(self, card, context)
        if context.consumeable and context.consumeable.config.center then
            if context.consumeable.config.center.key == 'c_star' then
                card.ability.extra.current_mult = card.ability.extra.current_mult + 12
                return {
                    message = "Queered",
                    colour = G.C.MULT,
                    card = card
                }
            end
        end
        if context.joker_main then
            return {
                mult_mod = card.ability.extra.current_mult,
                message = localize{type = 'variable', key = 'a_mult', vars = {card.ability.extra.current_mult}},
                colour = G.C.MULT
            }
        end
    end
}

-- Graysexual Pride (Moon Cards)
SMODS.Joker{
    key = "graysexual_pride",
    loc_txt = {
        name = "Graysexual Pride",
        text = {
            "Gains {C:mult}+12{} Mult when",
            "a {C:tarot}Moon{} card is used",
            "{C:inactive}(Currently {C:mult}+#1#{C:inactive} Mult)"
        }
    },
    config = {extra = {current_mult = 0}},
    set = "Joker",
    rarity = 1,
    cost = 4,
    unlocked = true,
    discovered = true,
    blueprint_compat = true,
    eternal_compat = true,
    perishable_compat = true,
    atlas = "graysexual_pride",
    pos = {x = 0, y = 0}, -- Next atlas position
    loc_vars = function(self, info_queue, card)
        return {vars = {card.ability.extra.current_mult}}
    end,
    calculate = function(self, card, context)
        if context.consumeable and context.consumeable.config.center then
            if context.consumeable.config.center.key == 'c_moon' then
                card.ability.extra.current_mult = card.ability.extra.current_mult + 12
                return {
                    message = "Queered",
                    colour = G.C.MULT,
                    card = card
                }
            end
        end
        if context.joker_main then
            return {
                mult_mod = card.ability.extra.current_mult,
                message = localize{type = 'variable', key = 'a_mult', vars = {card.ability.extra.current_mult}},
                colour = G.C.MULT
            }
        end
    end
}
-- Bisexual Pride (Face Card Hands)
SMODS.Joker{
    key = "bisexual_pride",
    loc_txt = {
        name = "Bisexual Pride",
        text = {
            "Gains {C:mult}+2{} Mult per hand",
            "containing a {C:attention}face card{}",
            "{C:inactive}(Currently {C:mult}+#1#{C:inactive} Mult)"
        }
    },
    config = {extra = {hands_with_faces = 0}},
    set = "Joker",
    rarity = 2,
    cost = 5,
    unlocked = true,
    discovered = true,
    blueprint_compat = true,
    eternal_compat = true,
    perishable_compat = true,
    atlas = "bisexual_pride",
    pos = {x = 0, y = 0},

    loc_vars = function(self, info_queue, card)
        -- Ensure we always return a number
        return {vars = {card.ability.extra.current_mult or 0}}
    end,

    calculate = function(self, card, context)
        -- Initialize if nil (save compatibility)
        card.ability.extra.current_mult = card.ability.extra.current_mult or 0

        if context.before and not context.blueprint then
            local has_face = false
            for _, c in ipairs(context.scoring_hand) do
                if c:is_face() then
                    has_face = true
                    break
                end
            end
            
            if has_face then
                card.ability.extra.current_mult = card.ability.extra.current_mult + 2
                return {
                    message = "Queered",
                    colour = G.C.MULT,
                    card = card
                }
            end
        end

        if context.joker_main then
            return {
                mult_mod = card.ability.extra.current_mult,
                message = localize{type = 'variable', key = 'a_mult', vars = {card.ability.extra.current_mult}},
                colour = G.C.MULT
            }
        end
    end
}

SMODS.Joker {
    key = "blahaj",
    name = "Blahaj",
    atlas = "blahaj",
    set = "Joker",
    unlocked = true,
    discovered = true,
    blueprint_compat = true,
    perishable_compat = true,
    eternal_compat = true,
    rarity = 4,
    cost = 20,
    pos = {0, 0},  -- Next in grid position
    soul_pos = {0, 0},
    config = {
        extra = {
            mult = 1.25,  -- Base multiplier
            total = 0     -- Total counted items
        }
    },
    loc_txt = {
        text = {
            "{X:mult,C:white}X#1#{} Mult",
            "After defeating blind, gain {C:mult}+0.03{}",
            "per unplayed card, consumable,",
            "and other Joker {C:inactive}(#2# total)"
        }
    },
    loc_vars = function(self, info_queue, card)
        -- Add nil protection for both values
        local mult = card.ability.extra and card.ability.extra.mult or 1.25
        local total = card.ability.extra and card.ability.extra.total or 0
        return {
            vars = {
                string.format("%.2f", mult),
                total
            }
        }
    end,

    calculate = function(self, card, context)
        -- Initialize extra if it doesn't exist
        card.ability.extra = card.ability.extra or {
            mult = 1.25,
            total = 0
        }
        if context.end_of_round and context.blind_defeated then
            -- Count components
            local unplayed = G.GAME.current_round.hand_size - #context.scoring_hand
            local consumables = #G.consumeables.cards
            local jokers = #G.jokers.cards - 1  -- Exclude self
            
            -- Calculate bonus
            local bonus = (unplayed + consumables + jokers) * 0.03
            card.ability.extra.mult = card.ability.extra.mult + bonus
            card.ability.extra.total = card.ability.extra.total + (unplayed + consumables + jokers)
            
            return {
                message = "+"..string.format("%.2f", bonus).."x",
                colour = G.C.MULT
            }
        end
        
        if context.joker_main then
            return {
                Xmult_mod = card.ability.extra.mult,
                card = self
            }
        end
    end
}
--#region Atlases

SMODS.Atlas{
    key = 'SuspiciousJoker',
    path = 'SuspiciousJoker.png',
    px = 71, 
    py = 95
}
SMODS.Atlas{
    key = 'FunnyJoker',
    path = 'FunnyJoker.png',
    px = 71, 
    py = 95
}
SMODS.Atlas{
    key = 'TrickyJoker',
    path = 'TrickyJoker.png',
    px = 71, 
    py = 95
}
SMODS.Atlas{
    key = 'HilariousJoker',
    path = 'HilariousJoker.png',
    px = 71, 
    py = 95
}
SMODS.Atlas{
    key = 'InsaneJoker',
    path = 'InsaneJoker.png',
    px = 71, 
    py = 95
}

--#endregion

--#region File Loading

local jokers_src = SMODS.NFS.getDirectoryItems(SMODS.current_mod.path .. "src/jokers")
for _, file in ipairs(jokers_src) do
    assert(SMODS.load_file("src/jokers/" .. file))()
end
local vouchers_src = SMODS.NFS.getDirectoryItems(SMODS.current_mod.path .. "src/vouchers")
for _, file in ipairs(vouchers_src) do
    assert(SMODS.load_file("src/vouchers/" .. file))()
end
local pokerhands_src = SMODS.NFS.getDirectoryItems(SMODS.current_mod.path .. "src/pokerhands")
for _, file in ipairs(pokerhands_src) do
    assert(SMODS.load_file("src/pokerhands/" .. file))()
end

--#endregion
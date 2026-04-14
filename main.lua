--#region Atlases

SMODS.Atlas{
    key = 'placeholders',
    path = 'placeholders.png',
    px = 71, 
    py = 95
}
SMODS.Atlas{
    key = 'vouchers',
    path = 'Vouchers.png',
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
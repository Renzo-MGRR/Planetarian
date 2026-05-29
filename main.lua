function table.contains(table, element)
    for k, v in pairs(table) do
        if v == element then return true end
    end
end
function table.last(table)
    local currentcounter = 0
    for k, v in pairs(table) do
        currentcounter = k
    end
    return table[currentcounter]
end
--#region File Loading

local atlases_src = SMODS.NFS.getDirectoryItems(SMODS.current_mod.path .. "src/atlases")
for _, file in ipairs(atlases_src) do
    assert(SMODS.load_file("src/atlases/" .. file))()
end
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
local ownerships_src = SMODS.NFS.getDirectoryItems(SMODS.current_mod.path .. "src/ownerships")
for _, file in ipairs(ownerships_src) do
    assert(SMODS.load_file("src/ownerships/" .. file))()
end

--#endregion
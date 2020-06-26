allow_defined_top = true

globals = {
	"monitoring",
	"luaentity",
	"minetest",
	"pipeworks"
}

read_globals = {
	-- Stdlib
	string = {fields = {"split"}},
	table = {fields = {"copy", "getn"}},

	-- Minetest
	"vector", "ItemStack",
	"dump"

}

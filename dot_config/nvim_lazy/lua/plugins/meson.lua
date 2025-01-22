return {
  {
    "williamboman/mason.nvim",
    opts = {
      registries = {
	-- "lua:mason-registry.index", -- over time this registry will be depleted of packages and replaced with the one below

        -- Note that the mason-org/mason-registry very frequently releases new versions (usually many times a day).
        -- Pinning the version means that users wont receive new packages or version upgrades.
        "github:mason-org/mason-registry@2023-03-20-knotty-zipper", -- pinned version
      },
    },
  },
}

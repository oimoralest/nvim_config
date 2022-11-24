local present, treesitter = pcall(require, "nvim-treesitter.configs")

if not present then
    return
end

treesitter.setup({
    ensure_installed = {"python", "lua", "json", "yaml" },
    auto_install = true
})


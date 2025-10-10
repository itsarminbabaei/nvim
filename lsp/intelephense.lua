local blink = require("blink.cmp")

local function get_intelephense_license()
    local path = os.getenv("HOME") .. "/intelephense/license.txt"
    local f = io.open(path, "rb")
    if not f then
        vim.notify("Intelephense license file not found: " .. path, vim.log.levels.INFO)
        return nil
    end
    local content = f:read("*a")
    f:close()
    return string.gsub(content, "%s+", "")
end

return {
    cmd = { "intelephense", "--stdio" },
    filetypes = { "php", "blade" },
    root_markers = { "composer.json", ".git" },
    init_options = {
        licenceKey = get_intelephense_license(),
    },
    -- capabilities = vim.tbl_deep_extend(
    --     "force",
    --     {},
    --     vim.lsp.protocol.make_client_capabilities(),
    --     blink.get_lsp_capabilities()
    -- ),
}

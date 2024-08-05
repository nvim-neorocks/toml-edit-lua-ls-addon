---@meta

---Edit toml files while preserving white space and formatting from Lua.
local toml_edit = {}

---Parses a toml string to a table with metatable,
---which can be converted back to toml (preserving comments)
---using `tostring`:
---@param toml_str string The content of a toml file
---@return table mut_toml Mutable toml table. The `tostring` instance returns a toml string.
function toml_edit.parse(toml_str) end

---Parse a toml file to a regular table
---@param toml_str string The content of a toml file
---@return table
function toml_edit.parse_as_tbl(toml_str) end

---@param toml_str string The content of a toml file
---@return toml-edit.SpannedToml
function toml_edit.parse_spanned(toml_str) end

---@class toml-edit.SpannedToml
---
---`path`: A path to an object, e.g. { "foo", "bar" } -> [foo.bar]
---`selector`: What to select from the given `path`.
---            A `"name"`, a "value", or a `number` can be given
---            to select an element from an array via an index.
---@field span_of fun(path: string[], selector: toml-edit.SpannedToml.Selector):(toml-edit.Range | nil)

---@alias toml-edit.SpannedToml.Selector
---|"name"
---|"value"
---|number

---@class toml-edit.Range
---@field start integer
---@field end integer

return toml_edit

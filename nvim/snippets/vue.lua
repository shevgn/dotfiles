local ls = require("luasnip")
local s = ls.snippet
local t = ls.text_node
local i = ls.insert_node

return {
  s("vue", {
    t({ '<script setup lang="ts">', "" }),
    i(0),
    t({ "", "</script>", "" }),
    t({ "" }),
    t({ "<template>", "" }),
    t({ "", "</template>", "" }),
    t({ "" }),
    t({ "<style scoped>", "" }),
    t({ "", "</style>", "" }),
  }),
}

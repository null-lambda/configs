local ls = require("luasnip")
local s = ls.snippet
local sn = ls.snippet_node
local t = ls.text_node
local i = ls.insert_node
local f = ls.function_node
local d = ls.dynamic_node
local c =  ls.choice_node
local fmt = require("luasnip.extras.fmt").fmt
local fmta = require("luasnip.extras.fmt").fmta
local rep = require("luasnip.extras").rep
local sm = ls.parser.parse_snipmate
local m = function(a, b) return sm(nil, a, b) end

-- Condition functions
local in_mathzone = function()
    -- Requires VimTex plugin
    return vim.fn['vimtex#syntax#in_mathzone']() == 1
end

local math_symbol = function(trig, expand)
    return s({ trig = trig, snippetType = "autosnippet", wordTrig = false },
    t(expand),
    { condition = in_mathzone })
end

return {
    -- Environments
    sm("env", [[
    \\begin{$1}
    $0
    \\end{$1}
    ]]),

    s({ trig = "mm", snippetType = "autosnippet" },
    m("$$1$$0")),

    s({ trig = "tt", snippetType = "autosnippet" },
    m("\\text{$1}$0"),
    { condition = in_mathzone }),

    -- Math commands 
    s({ trig = "ff", snippetType = "autosnippet" }, 
    m("\\frac{$1}{$2}$0"),
    { condition = in_mathzone }),

    -- subscripts
    s({ trig = '(%a)(%d)', regTrig = true},
    fmta("<>_<>",
    { f(function(_, snip) return snip.captures[1] end),
    f(function(_, snip) return snip.captures[2] end) }),
    { condition = in_mathzone }),

    s({ trig='_([^%s][^%s][^%s]?)', regTrig = true, wordTrig = false },
    fmta("_{<>}",
    { f(function(_, snip) return snip.captures[1] end)}),
    { condition = in_mathzone }),

    ---- Symbols
    math_symbol(";a", "\\alpha"),
    math_symbol(";b", "\\beta"),
    math_symbol(";g", "\\gamma"),
    math_symbol(";d", "\\delta"),
    math_symbol(";e", "\\epsilon"),
    math_symbol(";z", "\\zeta"),
    math_symbol(";h", "\\eta"),
    math_symbol(";t", "\\theta"),
    math_symbol(";i", "\\iota"),
    math_symbol(";k", "\\kappa"),
    math_symbol(";l", "\\lambda"),
    math_symbol(";m", "\\mu"),
    math_symbol(";n", "\\nu"),
    math_symbol(";x", "\\xi"),
    math_symbol(";o", "\\omicron"),
    math_symbol(";p", "\\pi"),
    math_symbol(";r", "\\rho"),
    math_symbol(";s", "\\sigma"),
    math_symbol(";u", "\\upsilon"),
    math_symbol(";f", "\\phi"),
    math_symbol(";c", "\\chi"),
    math_symbol(";y", "\\psi"),
    math_symbol(";w", "\\omega"),

    math_symbol(";v", "\\varphi"),

    math_symbol(";A", "\\Alpha"),
    math_symbol(";B", "\\Beta"),
    math_symbol(";G", "\\Gamma"),
    math_symbol(";D", "\\Delta"),
    math_symbol(";E", "\\Epsilon"),
    math_symbol(";Z", "\\Zeta"),
    math_symbol(";H", "\\Eta"),
    math_symbol(";T", "\\Theta"),
    math_symbol(";I", "\\Iota"),
    math_symbol(";K", "\\Kappa"),
    math_symbol(";L", "\\Lambda"),
    math_symbol(";M", "\\Mu"),
    math_symbol(";N", "\\Nu"),
    math_symbol(";X", "\\Xi"),
    math_symbol(";O", "\\Omicron"),
    math_symbol(";P", "\\Pi"),
    math_symbol(";R", "\\Rho"),
    math_symbol(";S", "\\Sigma"),
    math_symbol(";U", "\\Upsilon"),
    math_symbol(";F", "\\Phi"),
    math_symbol(";C", "\\Chi"),
    math_symbol(";Y", "\\Psi"),
    math_symbol(";W", "\\Omega"),

    math_symbol(";.", "\\cdot"),

    s({ trig = ",..", snippetType = "autosnippet", wordTrig = false },
    t(",\\dots"),
    { condition = in_mathzone }),

    s({ trig = "...", snippetType = "autosnippet", wordTrig = false },
    t("\\cdots"),
    { condition = in_mathzone }),
}

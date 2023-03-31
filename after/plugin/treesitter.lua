require 'nvim-treesitter.configs'.setup {
    -- A list of parser names, or "all" (the five listed parsers should always be installed)
    ensure_installed = { "javascript", "typescript", "lua", "help" },
    --Auto tag
    autotag = {
        enable = true,
    },
    -- Install parsers synchronously (only applied to `ensure_installed`)
    sync_install = false,

    -- Automatically install missing parsers when entering buffer
    -- Recommendation: set to false if you don't have `tree-sitter` CLI installed locally
    auto_install = true,
    context_commentstring = {
        enable = true,
        enable_autocmd = false,
        config = {
            typescript = { __default = '// %s', __multiline = '/* %s */' },
            css = '/* %s */',
            scss = { __default = '// %s', __multiline = '/* %s */' },
            php = { __default = '// %s', __multiline = '/* %s */' },
            html = '<!-- %s -->',
            svelte = '<!-- %s -->',
            vue = '<!-- %s -->',
            astro = '<!-- %s -->',
            handlebars = '{{! %s }}',
            glimmer = '{{! %s }}',
            graphql = '# %s',
            lua = { __default = '-- %s', __multiline = '--[[ %s ]]' },
            vim = '" %s',
            twig = '{# %s #}',
            python = { __default = '# %s', __multiline = '""" %s """' },
            -- Languages that can have multiple types of comments
            tsx = {
                __default = '// %s',
                __multiline = '/* %s */',
                jsx_element = '{/* %s */}',
                jsx_fragment = '{/* %s */}',
                jsx_attribute = { __default = '// %s', __multiline = '/* %s */' },
                comment = { __default = '// %s', __multiline = '/* %s */' },
                call_expression = { __default = '// %s', __multiline = '/* %s */' },
                statement_block = { __default = '// %s', __multiline = '/* %s */' },
                spread_element = { __default = '// %s', __multiline = '/* %s */' },
            },
            javascript = {
                __default = '// %s',
                __multiline = '/* %s */',
                jsx_element = '{/* %s */}',
                jsx_fragment = '{/* %s */}',
                jsx_attribute = { __default = '// %s', __multiline = '/* %s */' },
                comment = { __default = '// %s', __multiline = '/* %s */' },
                call_expression = { __default = '// %s', __multiline = '/* %s */' },
                statement_block = { __default = '// %s', __multiline = '/* %s */' },
                spread_element = { __default = '// %s', __multiline = '/* %s */' },
            },
        }
    },
    highlight = {
        enable = 'true',
        -- Setting this to true will run `:h syntax` and tree-sitter at the same time.
        -- Set this to `true` if you depend on 'syntax' being enabled (like for indentation).
        -- Using this option may slow down your editor, and you may see some duplicate highlights.
        -- Instead of true it can also be a list of languages
        additional_vim_regex_highlighting = false,
    },
}

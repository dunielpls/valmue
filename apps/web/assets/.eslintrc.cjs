/**
 * @file My eslint configuration, in JavaScript form.
 * @author Daniel Isaksen <daniel.isaksen@banenor.no> (https://www.banenor.no)
 * @copyright Copyright (c) 2019-2023, Daniel Isaksen. All rights reserved.
 */

module.exports = {
    env: {
        browser: false,
        node: true,
        es2022: true,
    },
    extends: "eslint:all",
    globals: {
        Atomics: "readonly",
        SharedArrayBuffer: "readonly",
    },
    parser: "@babel/eslint-parser",
    parserOptions: {
        ecmaVersion: 2023,
        sourceType: "module",
        ecmaFeatures: {
            impliedStrict: true,
            jsx: false,
        },
        requireConfigFile: false,
        babelOptions: {
            presets: [
                "@babel/preset-env",
            ],
            plugins: [
                "@babel/plugin-syntax-import-assertions",
            ],
        },
    },
    rules: {
        "no-multi-spaces": "off",
        "object-curly-spacing": ["error", "always"],
        "sort-imports": "off",
        "padded-blocks": "off",
        "max-statements": "off",
        "no-underscore-dangle": "off",
        "no-var": "error",
        "array-bracket-spacing": ["error", "never"],
        "array-bracket-newline": ["error", "consistent"],
        camelcase: "off",
        "one-var": "off",
        "space-before-function-paren": ["error", {
            anonymous: "never",
            asyncArrow: "always",
            named: "never",
        }],
        "sort-vars": "off",
        "id-length": "off",
        "quote-props": ["error", "as-needed"],
        "arrow-parens": ["error", "as-needed"],
        "no-magic-numbers": "off",
        /*
        "no-magic-numbers": ["error", {
            ignoreArrayIndexes: true,
            ignoreDefaultValues: true,
            ignoreClassFieldInitialValues: true,
            enforceConst: true,
        }],
        */
        "object-property-newline": ["error", {
            allowAllPropertiesOnSameLine: true,
        }],
        "max-lines": "off",
        "max-lines-per-function": "off",
        "key-spacing": "off",
        "array-element-newline": ["error", "consistent"],
        "max-params": "off",
        "class-methods-use-this": "off",
        "comma-dangle": ["warn", "always-multiline"],
        "no-unused-vars": "warn",
        "capitalized-comments": "off",
        "linebreak-style": ["error", "unix"],
        "function-call-argument-newline": "off",
        "operator-linebreak": ["error", "before"],
        "sort-keys": "off",
        "lines-around-comment": "off",
        "no-warning-comments": "warn",
        "multiline-comment-style": "off",
        "function-paren-newline": ["error", "consistent"],
        "operator-assignment": "off",
        "no-empty": ["error", {
            allowEmptyCatch: true,
        }],
        "no-extra-parens": ["warn", "all", {
            conditionalAssign: true,
            returnAssign: true,
            nestedBinaryExpressions: false,
            ignoreJSX: "multi-line",
            enforceForArrowConditionals: false,
            enforceForSequenceExpressions: false,
            enforceForNewInMemberExpressions: false,
            enforceForFunctionPrototypeMethods: false,
        }],
        "no-ternary": "off",
        "prefer-destructuring": "off",
        "no-console": "warn",
    },
};

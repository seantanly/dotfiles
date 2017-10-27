module.exports = {
  "root": true,
  "env": {
    "browser": true,
    "node": true,
    "es6": true,
  },
  "plugins": ["import"],
  "extends": ["eslint:recommended", "plugin:import/recommended"],
  "parserOptions": {
    "ecmaVersion": "2017",
    "sourceType": "module",
    "ecmaFeatures": {
      "experimentalObjectRestSpread": true,
    }
  },
  "rules": {
    "indent": ["error", 2, {"SwitchCase": 1}],
    "linebreak-style": ["error", "unix"],
    "quotes": ["error", "single", {"avoidEscape": true}],
    "semi": ["error", "always"],
    "no-unused-vars": ["error", { "argsIgnorePattern": "^__" }],
    "no-console": ["off"], // too common to warn
    "no-useless-escape": ["error"],
    "import/export": ["error"],
    "import/no-named-as-default": ["error"],
    "import/no-named-as-default-member": ["error"],
    "import/no-extraneous-dependencies": ["error"],
    // "no-mutable-exports": ["error"], // can't find rule
    "import/unambiguous": ["off"],
    "import/named": ["error", "never"],
    "import/first": ["error"],
    "import/order": ["error"],
    "import/extensions": ["error", "never"],
    "import/newline-after-import": ["error"],
    "import/prefer-default-export": ["error"],
    "import/no-unassigned-import": ["off"],
    "import/no-named-default": ["error"],
    // "import/no-anonymous-default-export": ["error"], // can't find rule
  },
  "globals": {
  },
  "settings": {
    "import/resolver": {
      "webpack": {
        "config": "webpack.development.js"
      },
    },
  },
}

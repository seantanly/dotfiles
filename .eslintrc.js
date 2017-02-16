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
    "sourceType": "module",
    "ecmaFeatures": {
      "experimentalObjectRestSpread": true,
    }
  },
  "rules": {
    "indent": ["error", 2, {"SwitchCase": 1}],
    "linebreak-style": ["error", "unix"],
    "quotes": ["error", "double"],
    "semi": ["error", "never"],
    "no-unused-vars": ["error", { "argsIgnorePattern": "^__" }],
    "no-console": ["warn"],
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
    "import/no-unassigned-import": ["error"],
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

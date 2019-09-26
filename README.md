# 1. Open terminal
command+space で spotlight を呼び出して terminal

# 2. Run following commands

```
curl https://raw.githubusercontent.com/eguchi-ken/setup-mac/master/setup > setup
bash ./setup
```

# 3. setup karabiner-elements
- Simple Modifications
  - かなキー -> right_alt (eqial to right_option)
- Complex Modifications
  - Add rule -> Import more rules from the internet (open a web browser) 押す
  - Emacs key bindings を検索して import
  - Emacs key bindings [control+keys] を有効にする

# 4. setup iterm2
JSON profile をダウンロードしてインポートするか、もしくは下記の設定を行う。

- Preferences
  - Profiles
    - General
      - Reuse session working directory を有効にする
    - Text
      - Font 14 point
    - Keys
      - Left Option Key: Esc+
      - Right Option Key: Esc+

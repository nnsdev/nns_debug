# nns_debug

Simple resource to copy coordinates to your clipboard quickly.

## Usage
- `/c2c [lang] [isGround]`
    - Parameters optional, defaults to Lua and Player Z
    - `[lang]` js/lua/json supported - defaults to Lua
    - `[isGround]` "1/true" subtracts 0.95 from coord to get ground - default to Player Z

- `/h2c`
    - Simply copies the player heading into your clipboard
- `/rot2c [lang]`
    - Parameter optional, defaults to Lua
    - `[lang]` js/lua/json supported - defaults to Lua

**I would not recommend putting this into your `scripts.cfg` - start this when needed in development** *(unless you add some form of protection, for example ace permissions in the server commands)*
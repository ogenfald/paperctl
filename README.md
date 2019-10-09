# PaperCtl
A manager for Paper Minecraft Servers. PaperCtl is able to create new and update existing Paper Servers. Check the website for details.

https://papermc.io
# Usage
Create a new server: `paperctl new [name]`

Update exsiting servers: `paperctl update`
# Configuration
The main config file is located at `~/.config/paperctlrc`

It is automagically created and opened in the default editor if one is set.
# Requirements
[jq](https://stedolan.github.io/jq/) for parsing the JSON data on the PaperMC website.

Arch: `sudo pacman -S jq`

Ubuntu: `sudo apt install jq`

It is also recommened to have the `$EDITOR` environment variable set before running the first time. Though not required.

-- Copyright (C) Mashape, Inc.

local BasePlugin = require "kong.plugins.base_plugin"
local access = require "kong.plugins.content-md5.access"

local ContentMD5Handler = BasePlugin:extend()

function ContentMD5Handler:new()
  ContentMD5Handler.super.new(self, "content-md5")
end

function ContentMD5Handler:access(conf)
  ContentMD5Handler.super.access(self)
  access.execute(conf)
end

ContentMD5Handler.PRIORITY = 990

return ContentMD5Handler

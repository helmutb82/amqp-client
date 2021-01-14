package = "amqp-client-rpc"
version = "1.0"
source = {
   url = "https://github.com/helmutb82/amqp-client",
   branch = "master"
}
description = {
   summary = "Lua AMQP 0.9.1 client",
   detailed = [[
      A pure Lua Client for AMQP 0.9.1. fork from gsdenys/amqp-clien
      This library is already tested with RabbitMQ and should work with any other AMQP 0.9.1 broker and can be used with LuaJIT and does not have to be used only in OpenResty.
   ]],
   homepage = "https://github.com/helmutb82/amqp-client",
   maintainer = "Helmut Burchardt <helmutb@gmail.com>",
   license = "Apache 2.0"
}
dependencies = {
   "lua >= 5.1"
}
build = {
   type = "builtin",
   modules = {
     ['amqp'] = "src/amqp/init.lua",
     ['amqp.buffer'] = "src/amqp/buffer.lua",
     ['amqp.consts'] = "src/amqp/consts.lua",
     ['amqp.frame'] = "src/amqp/frame.lua",
     ['amqp.logger'] = "src/amqp/logger.lua"
   }
}

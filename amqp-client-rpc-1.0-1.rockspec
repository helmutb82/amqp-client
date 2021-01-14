package = "amqp-client-rpc"
version = "1.0-1"
source = {
   url = "git://github.com/helmutb82/amqp-client",
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
     ['amqprpc'] = "src/amqp/init.lua",
     ['amqprpc.buffer'] = "src/amqp/buffer.lua",
     ['amqprpc.consts'] = "src/amqp/consts.lua",
     ['amqprpc.frame'] = "src/amqp/frame.lua",
     ['amqprpc.logger'] = "src/amqp/logger.lua"
   }
}

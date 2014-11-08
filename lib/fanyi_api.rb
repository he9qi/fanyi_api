module FanyiAPI
  require 'faraday'
  require 'extlib'
  require 'ostruct'
  require 'json'

  require_relative 'fanyi_api/strategies/default'
  require_relative 'fanyi_api/strategies/youdao'
  require_relative 'fanyi_api/strategies/iciba'

  require_relative 'fanyi_api/api'
  require_relative 'fanyi_api/requester'

end

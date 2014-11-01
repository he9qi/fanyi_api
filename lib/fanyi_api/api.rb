module FanyiAPI
  module API

    StrategyNotRegistered = Class.new StandardError

    extend self

    # register a strategy
    def register(strategy, options={})
      stra_sym = :"@#{strategy}"
      stra = instance_variable_get stra_sym
      if stra.nil?
        strategy_class = eval("FanyiAPI::Strategies::#{strategy.camel_case}")
        instance_variable_set stra_sym, strategy_class.new(options).extend(FanyiAPI::Requester)
        define_method(strategy) { instance_variable_get stra_sym }
      end
    end

    # call strategy with action and arguments
    def call(strategy="youdao", query)
      stra = instance_variable_get :"@#{strategy}"
      raise StrategyNotRegistered if stra.nil?
      stra.(query)
    end

  end
end

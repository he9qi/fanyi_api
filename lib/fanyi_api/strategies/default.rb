module FanyiAPI
  module Strategies

    InvalidStrategy = Class.new ArgumentError

    class Default

      def request_url
        raise InvalidStrategy, "Strategy is not provided"
      end

    end
  end

end

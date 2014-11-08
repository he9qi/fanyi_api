module FanyiAPI
  module Strategies
    
    class Iciba < Default

      def initialize(params={})
        @options = {
          host:       "http://dict-co.iciba.com/api/dictionary.php",
          type:       "json"
        }.merge(params)
      end

      def api_url
        @api_url ||= "#{@options[:host]}?type=#{@options[:type]}"
      end

      def request_url
        raise InvalidKey, "Key is not provided!" if @options[:key].nil?

        @request_url ||= api_url + "&key=" + @options[:key]
      end

      def query_key
        :w
      end

    end
  end

end

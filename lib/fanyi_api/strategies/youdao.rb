module FanyiAPI
  module Strategies

    class Youdao < Default

      def initialize(params={})
        @options = {
          host:       "http://fanyi.youdao.com/openapi.do",
          version:    "1.1",
          doctype:    "json",
          type:       "data"
        }.merge(params)
      end

      def api_url
        @api_url ||= "#{@options[:host]}?type=#{@options[:type]}&doctype=#{@options[:doctype]}&version=#{@options[:version]}"
      end

      def request_url
        raise InvalidKey, "Key is not provided!" \
          if @options[:keyfrom].nil? || @options[:key].nil?

        @request_url ||= api_url + "&keyfrom=" + @options[:keyfrom] + "&key=" + @options[:key]
      end

      def query_key
        :q
      end

    end
  end

end

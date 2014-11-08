module FanyiAPI
  module Requester

    InvalidQuery   = Class.new ArgumentError

    def conn
      @conn ||= Faraday.new
    end

    def call(query)
      raise InvalidQuery, "Invalid query" if query.blank?
      resp = conn.get request_url, { query_key => query } 
      parse resp
    end

    private

    # get response body, if the body is nil or we fail
    # to parse the body, return nil
    def parse(resp)
      resp = resp[0] if resp.is_a?(Array)
      resp = resp.body
      begin
        JSON.parse resp
      rescue JSON::ParserError, TypeError
        nil
      end
    end

  end
end

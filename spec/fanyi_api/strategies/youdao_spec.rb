require 'spec_helper'

describe FanyiAPI::Strategies::Youdao do

  let(:strategy) { FanyiAPI::Strategies::Youdao.new(key: "key", keyfrom: "keyfrom") }

  it "returns api url" do
    expect(strategy.api_url).to eq \
      "http://fanyi.youdao.com/openapi.do?type=data&doctype=json&version=1.1"
  end

  it "returns request url" do
    expect(strategy.request_url).to eq \
      "http://fanyi.youdao.com/openapi.do?type=data&doctype=json&version=1.1&keyfrom=keyfrom&key=key"
  end

  describe "#raise_error" do

    it "raise key not found if type is not provided" do
      expect { FanyiAPI::Strategies::Youdao.new.request_url }.to \
        raise_error(FanyiAPI::Strategies::InvalidKey)
    end

  end

end

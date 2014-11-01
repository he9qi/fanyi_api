require 'spec_helper'

describe FanyiAPI::API do

  describe "#call" do

    it "raise strategy not registered error" do
      expect { FanyiAPI::API.("ciba", "hello") }.to \
        raise_error(FanyiAPI::API::StrategyNotRegistered)
    end

    describe "#registed strategy" do

      before do
        FanyiAPI::API.register "youdao", key: "key", keyfrom: "keyfrom"
        stubs = Faraday::Adapter::Test::Stubs.new do |stub|
          stub.get("/url") { [200, {}, 'foo'] }
        end
        allow(Faraday).to receive(:new).and_return(stubs)
      end

      it "calls youdao" do
        expect(FanyiAPI::API.youdao).to \
          receive(:call).with("hello").and_return("/url")

        FanyiAPI::API.("youdao", "hello")
      end

    end


  end

end

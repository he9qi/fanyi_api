require 'spec_helper'

describe FanyiAPI::Requester do

  let(:request_url)     { "http://fanyi.youdao.com/openapi.do?type=data&doctype=json&version=1.1&keyfrom=keyfrom&key=key" }
  let(:youdao)          { FanyiAPI::Strategies::Youdao.new key: "key", keyfrom: "keyfrom"  }
  let(:requester)       { youdao.extend(FanyiAPI::Requester) }
  let(:conn)            { requester.conn }
  let(:file)            { File.read File.join(File.expand_path(File.dirname(__FILE__)), "../fixtures/youdao.json") }
  let(:response)        { OpenStruct.new body: file }

  describe "#fanyi" do

    it "calls only when find is present" do
      expect(conn).to receive(:get).with(request_url, {:q=>"hello"}).and_return(response)
      requester.("hello")
    end

    it 'returns error if strategy do not respond to the action' do
      expect{ requester.find_unkown }.to raise_error
    end

  end

end

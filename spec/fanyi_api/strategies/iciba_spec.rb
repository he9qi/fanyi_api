require 'spec_helper'

describe FanyiAPI::Strategies::Iciba do

  let(:strategy) { FanyiAPI::Strategies::Iciba.new(key: "key") }

  it "returns api url" do
    expect(strategy.api_url).to eq \
      "http://dict-co.iciba.com/api/dictionary.php?type=json"
  end

  it "returns request url" do
    expect(strategy.request_url).to eq \
      "http://dict-co.iciba.com/api/dictionary.php?type=json&key=key"
  end

  describe "#raise_error" do

    it "raise key not found if type is not provided" do
      expect { FanyiAPI::Strategies::Iciba.new.request_url }.to \
        raise_error(FanyiAPI::Strategies::InvalidKey)
    end

  end

end

require 'spec_helper'

describe FanyiAPI::Strategies::Default do

  describe "#raise_error" do

    it "raise key not found if type is not provided" do
      expect { FanyiAPI::Strategies::Default.new.request_url }.to \
        raise_error(FanyiAPI::Strategies::InvalidStrategy)
    end

  end

end

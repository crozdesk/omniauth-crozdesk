require 'spec_helper'

describe OmniAuth::Strategies::Crozdesk do
  subject { described_class.new({}) }

  context "client connection" do
    it "should have the correct name" do
      expect(subject.options.name).to eq(:crozdesk)
    end

    it "should use the correct site" do
      expect(subject.options.client_options.site).to eq("https://crozdesk.com")
    end

    it "should use the correct authorize url" do
      expect(subject.options.client_options.authorize_path).to eq("/oauth/authorize")
    end
  end
end

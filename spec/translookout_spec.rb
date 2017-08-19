require "spec_helper"

RSpec.describe Translookout do
  let(:instance) { Translookout::Translookout.new("free") }
  it "has a version number" do
    expect(Translookout::VERSION).not_to be nil
  end
  it "will respond free" do
    expect(instance.instance_variable_get(:@subscription_id)).to eq("free")
  end
  it "will respond *****" do
    test=Translookout::Translookout.new("free")
    a=test.message_judgment?("message",["message"])
    a=a["checked_message"]
    expect(a).to eq("*******")
  end
end


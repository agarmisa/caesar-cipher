require 'spec_helper'

describe Caesar do
  before do
    @caesar = Caesar.new(6)
  end

  it "takes one parameter and has a default parameter" do
    expect(@caesar).to be_a Caesar
  end

  it "correctly shifts characters" do
    expect(@caesar.cipher("hello")).to eq "nkrru"
  end

  it "correctly handles upper and lowercase characters" do
    expect(@caesar.cipher("hello")).to eq "nkrru"
    expect(@caesar.cipher("HELLO")).to eq "NKRRU"
  end
end

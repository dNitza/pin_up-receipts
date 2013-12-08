require 'spec_helper'

describe "Base", :vcr, class: Pin::Base do
  before(:each) do
    @test_pin = Pin::Base.new(ENV["PIN_SECRET"], :test)
  end

  it "should set the root view path correctly" do
    Pin::Receipt.root.should eq File.expand_path '../..', __FILE__
  end

end
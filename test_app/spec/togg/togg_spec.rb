require 'spec_helper'

describe Togg do
  describe "#le" do
    it "executes a block" do
      Togg.le(:some_active_feature) { 1 }.should eq 1
    end
    it "doesn't execute a block" do
      Togg.le(:some_pending_feature) { 1 }.should eq nil
    end
  end
end

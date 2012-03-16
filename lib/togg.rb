require 'yettings'
module Togg
  def self.le(feature)
    yield if block_given? && ToggYetting.send(feature)
  end
end

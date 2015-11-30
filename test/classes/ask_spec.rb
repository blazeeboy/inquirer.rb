# encoding: utf-8
require 'minitest_helper'

describe Ask do
  %w[list checkbox input confirm].each do |method|
    it "respond to #{method} method" do
      Ask.method_defined?(method).must_equal true
    end
  end
end

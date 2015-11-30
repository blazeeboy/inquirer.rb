require 'inquirer/version'
require 'inquirer/utils/iohelper'
Dir["#{File.dirname(__FILE__)}/inquirer/prompts/**/*.rb"].each { |f| require f }

module Ask
  extend self
  # implement prompts
  %w[list checkbox input confirm].each do |method|
    define_method(method) do |*args|
      self.const_get(method.capitalize).ask(*args)
    end
  end
end

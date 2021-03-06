require_relative "../config/environment.rb"
#require 'active_support/inflector'
require 'interactive_record.rb'

class Student < InteractiveRecord

  def initialize(options={})
    options.each {|k, v| instance_variable_set("@#{k}", v)}
  end

  self.column_names.each do |col_name|
    attr_accessor col_name.to_sym
  end
end

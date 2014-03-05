require 'active_model'

require File.join(File.dirname(__FILE__), '..', 'lib/min_max_validator')

class Salary

  include ActiveModel::Validations

  attr_accessor :minimum, :maximum

  validates_with MinMaxValidator,
    fields: { min: :minimum, max: :maximum, msg: "Invalid maximum salary" }

end
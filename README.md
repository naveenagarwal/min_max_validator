# MinMaxValidator

In rails, when we have two attributes to store the minimum and maximum values then we have to write the custom validator or callbacks each time to check the valid maximum value. So this is a simple and small validator which does the same for the two attributes. It validates that if maximum is present then maximum should be >= minimum else it adds error to the maximum attribute name passed to the validator.

For Example:

1. Comparing maximum minimum salary (maximum should be >= minimum)

2. Comparing maximum minimum age

3. Comparing father son age, etc.

4. Comparing minimum, maximum date and time.

## Installation

Add this line to your application's Gemfile:

    gem 'min_max_validator'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install min_max_validator

## Usage

    class Salary < ActiveRecord::Base

      validates_with MinMaxValidator,
        fields: { min: :min_salary, max: :max_salary, msg: "Maximum salary can't be less than minimum salary" }

    end

    #=> Explanation of the fields argument

    fields: {
      min: <attribute name holding minimum value>,
      max: <attribute name holding maximum value>,
      msg: <error message to be set>
    }

## Contributing

1. Fork it ( http://github.com/<my-github-username>/min_max_validator/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request

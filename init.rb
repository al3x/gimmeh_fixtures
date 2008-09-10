if %w(test development).include?(RAILS_ENV)
  # Shoving this into ActiveRecord::Base?  Pretty horrible!
  # Who cares?  It's the test/development environment.
  ActiveRecord::Base.send(:extend, GimmehFixtures)

  require File.dirname(__FILE__) + '/routes'
end

require File.join(File.dirname(__FILE__), 'test_helper')

class GimmehFixturesTest < Test::Unit::TestCase

  # These tests are really lacking.  Mostly, that's because testing
  # the functionality of the majority of this plugin really entails 
  # testing how your Rails app works once its been loaded.
  #
  # You don't see exception_logger having a robust test suite, do 
  # you now?  No, you don't.  So there.

  def test_fixture_container
    assert fc = FixtureContainer.new
    assert fc.to_hash
  end
end

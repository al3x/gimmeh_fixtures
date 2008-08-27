module GimmehFixtures
  @@fixture_container = FixtureContainer.new

  def fixtures
    @@fixture_container
  end
end

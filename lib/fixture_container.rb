class FixtureContainer

  include Enumerable

  @@all_fixtures = {}

  def initialize
    load_yaml_fixtures
  end

  def each
    @@all_fixtures.each { |item| yield item }
  end

  def [](key)
    @@all_fixtures[key]
  end

  def to_hash
    @@all_fixtures
  end

  def keys
    @@all_fixtures.keys.collect
  end

  private

  def load_yaml_fixtures
    fixture_path = "#{RAILS_ROOT}/test/fixtures/"

    Dir["#{fixture_path}/**/*.yml"].each do |fixture_file|
      fixture_name = fixture_file.split('/').last.split('.').first

      fixture_contents = IO.read(fixture_file)
      next if fixture_contents.empty?

      erbed_contents = ERB.new(fixture_contents).result
      @@all_fixtures[fixture_name] = YAML::load(erbed_contents)
    end
  end

end
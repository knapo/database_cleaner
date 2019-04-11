require "yaml"
version = YAML.load_file "VERSION.yml"

Gem::Specification.new do |s|
  s.name = "database_cleaner_2"
  s.version = "#{version[:major]}.#{version[:minor]}.#{version[:patch]}"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.required_ruby_version = ">= 2.4.0"
  s.require_paths = ["lib"]
  s.authors = ["Ben Mabey", "Ernesto Tagwerker", "Krzysztof Knapik"]
  s.description = "Alternative version of https://github.com/DatabaseCleaner/database_cleaner"
  s.email = "ernesto@ombulabs.com"
  s.extra_rdoc_files = [
    "LICENSE",
    "README.markdown",
    "TODO"
  ]
  s.files = [
    "CONTRIBUTE.markdown",
    "Gemfile.lock",
    "History.rdoc",
    "README.markdown",
    "Rakefile",
    "VERSION.yml",
    "cucumber.yml"]

  s.files += Dir["lib/**/*.rb"]

  s.homepage = "http://github.com/knapo/database_cleaner_2"
  s.license = "MIT"

  s.rubygems_version = "2.7.8"
  s.summary = "Strategies for cleaning databases.  Can be used to ensure a clean state for testing."

  s.add_development_dependency "rake"
  s.add_development_dependency "bundler"
  s.add_development_dependency "json_pure"
  s.add_development_dependency "activerecord"
  s.add_development_dependency "datamapper"
  s.add_development_dependency "dm-migrations"
  s.add_development_dependency "dm-sqlite-adapter"
  s.add_development_dependency "mongoid"
  s.add_development_dependency "tzinfo"
  s.add_development_dependency "mongoid-tree"
  s.add_development_dependency "mongo_mapper"
  s.add_development_dependency "mongo", "~> 1.12.0"
  s.add_development_dependency "moped"
  s.add_development_dependency "neo4j-core"
  s.add_development_dependency "couch_potato"
  s.add_development_dependency "sequel"
  s.add_development_dependency "ohm", "~> 0.1.3"
  s.add_development_dependency "guard-rspec"
  s.add_development_dependency "listen"
  s.add_development_dependency "rspec"
  s.add_development_dependency "cucumber"

  unless RUBY_PLATFORM =~ /java/
    s.add_development_dependency "mongo_ext"
    s.add_development_dependency "bson_ext"
    s.add_development_dependency "mysql2"
    s.add_development_dependency "activerecord-mysql2-adapter"
    s.add_development_dependency "pg"
    s.add_development_dependency "sqlite3"
  else
    s.add_development_dependency "activerecord-jdbc-adapter"
  end
end

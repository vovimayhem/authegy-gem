require 'authegy'
require 'fileutils'

def run_generator(generator_name)
    system "rails g #{generator_name}"
end

def migration_file
    Dir.entries(File.expand_path("../tmp/db/migrate", __FILE__)).each { |entry| entry.scan(/\d/).join.to_i }.max
  end
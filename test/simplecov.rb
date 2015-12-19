if ENV['CODECLIMATE_REPO_TOKEN']
  require 'codeclimate-test-reporter'
  CodeClimate::TestReporter.start
end
require 'simplecov'
SimpleCov.command_name 'Unit Tests'
SimpleCov.start do
  add_filter "test/"
  add_filter "templates/"
  add_group "Import", "lib/health-data-standards/import"
  add_group "Export", "lib/health-data-standards/export"
  add_group "Models", "lib/health-data-standards/models"
  add_group "Utilities", "lib/health-data-standards/util"
  add_group "Validate", "lib/health-data-standards/validate"
end

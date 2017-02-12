require 'rubygems'
require 'cucumber'
require 'cucumber/rake/task'

Cucumber::Rake::Task.new(:features) do |t|
  #t.cucumber_opts = "test/features --format pretty"
  #t.cucumber_opts = "test/features --format json -o cucumber.json"
  t.cucumber_opts = "test/features --format junit -o test/reports"
end

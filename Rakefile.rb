require 'rubygems'
require 'cucumber'
require 'cucumber/rake/task'

Cucumber::Rake::Task.new(:tests) do |t|
  # if feature == ENV['ONLY']
  #  t.cucumber_opts =
  # "test/features/#{feature}.feature --color --format junit -o test/reports"
  # else
     t.cucumber_opts =
       'test/features/*.features --color --format junit -o test/reports'
  # end
  # t.rcov = true
end

desc 'Run test application'
task :test_app do
  `java -jar test/SwingSet2.jar`
end

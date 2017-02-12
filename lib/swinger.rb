SWINGER_ROOT = File.expand_path(File.dirname(__FILE__))
$LOAD_PATH << SWINGER_ROOT

def debug?
  ENV['DEBUG'] =~ /^(true|yes|t|y)$/
end

def in_cucumber_jvm?
  ENV['CUCUMBER_JVM'] =~ /^(true|yes|t|y)$/
end

require 'java'
require 'cucumber' unless in_cucumber_jvm?
require 'rspec'
require 'rspec/matchers'

require 'swinger/jemmy.jar'
require 'swinger/i18n'
require 'swinger/identifier'
require 'swinger/timeout'
require 'swinger/chooser'
require 'swinger/container'
require 'swinger/debug'

java_import org.netbeans.jemmy.JemmyProperties
java_import org.netbeans.jemmy.TestOut
JemmyProperties::set_current_output(TestOut.null_output) unless debug?

lang = Cucumber::Cli::Main.step_mother.options[:lang] rescue 'en'
I18N.load(lang)

Dir["#{SWINGER_ROOT}/swinger/helpers/*.rb"].each { |helper| require helper }

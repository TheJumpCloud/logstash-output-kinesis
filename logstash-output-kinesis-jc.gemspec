lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "logstash-output-kinesis-jc/version"

Gem::Specification.new do |s|
  s.name = "logstash-output-kinesis-jc"
  s.version = LogstashOutputKinesisJC::VERSION
  s.licenses = ["Apache License (2.0)"]
  s.summary = "This output plugin sends records to Kinesis using the Kinesis Producer Library (KPL)"
  s.description = "This gem is a logstash plugin required to be installed on top of the Logstash core pipeline using $LS_HOME/bin/plugin install logstash-output-kinesis-jc. This gem is not a stand-alone program"
  s.authors = ["bliujc"]
  s.homepage = "https://www.github.com/TheJumpCloud/logstash-output-kinesis-jc"
  s.require_paths = ["lib"]

  # Files
  s.files = `git ls-files`.split($\)
   # Tests
  s.test_files = s.files.grep(%r{^(test|spec|features)/})

  # Special flag to let us know this is actually a logstash plugin
  s.metadata = {
    "logstash_plugin" => "true",
    "logstash_group" => "output"
  }

  s.platform = "java"

  # Gem dependencies
  s.add_runtime_dependency "logstash-core-plugin-api", ">= 1.60", "<= 2.99"
  s.add_runtime_dependency "logstash-core", ">= 5.0.0"
  s.add_runtime_dependency "logstash-codec-plain", "< 6.0.0"
  s.add_runtime_dependency "logstash-codec-json", "< 6.0.0"
  s.add_development_dependency "logstash-devutils"
end

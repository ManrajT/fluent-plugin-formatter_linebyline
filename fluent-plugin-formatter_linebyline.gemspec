# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'fluent/plugin/formatter_linebyline/version'

Gem::Specification.new do |spec|
  spec.name          = "fluent-plugin-formatter_linebyline"
  spec.version       = Fluent::Plugin::FormatterLinebyline::VERSION
  spec.authors       = ["Manraj Tatla"]
  spec.email         = ["ManrajT@gmail.com"]
  spec.summary       = %q{Formats output for key value pairs to be shown line by line}
  spec.description   = %q{FluentD formatter plugin that formats record output to be shown as key value pairs shown line by line.  Only works for FluentD version 0.10.49 and above, and with output plugins that support Text Formatter (such as out_file).  For installing plugins, please see http://docs.fluentd.org/articles/plugin-management and http://docs.fluentd.org/articles/formatter-plugin-overview# }
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.7"
  spec.add_development_dependency "rake", "~> 10.0"
end

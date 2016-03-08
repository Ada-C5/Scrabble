require 'minitest'
require 'minitest/spec'
require 'minitest/autorun'
require 'minitest/reporters' #still need to install?

Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

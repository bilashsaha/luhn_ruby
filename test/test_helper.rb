# frozen_string_literal: true

$LOAD_PATH.unshift File.expand_path("../lib", __dir__)
require "luhn"

require "minitest/autorun"
require "minitest/spec"
require "minitest/reporters"

Minitest::Reporters.use!

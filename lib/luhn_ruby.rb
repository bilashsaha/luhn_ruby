# frozen_string_literal: true

require_relative "luhn_ruby/version"

module Luhn
  class Error < StandardError; end
  def self.valid?(number)
    sum = 0
    number.reverse.chars.each_with_index do |ch, index|
      num = ch.to_i
      num *= 2 if index.odd?
      num -= 9 if num >= 10
      sum += num
    end
    (sum % 10).zero?
  end
end
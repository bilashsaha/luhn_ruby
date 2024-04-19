# frozen_string_literal: true

require "test_helper"

describe Luhn do
  it "has a version number" do
    refute_nil ::Luhn::VERSION
  end

  ValidCardNumbers = [
    "378282246310005", "371449635398431", "378734493671000", "5610591081018250", "30569309025904",
    "38520000023237", "6011111111111117", "6011000990139424", "3530111333300000", "3566002020360505",
    "5555555555554444", "5105105105105100", "4111111111111111", "4012888888881881", "5610591081018250",
    "4222222222222", "5019717010103742", "6331101999990016", "6304000000000000", "36259600000004",
    "4000001234562345678"
  ]

  it "returns true for valid card numbers" do
    assert ValidCardNumbers.all? { |number| Luhn.valid?(number) }
  end

  it "returns false for invalid card numbers" do
    invalid_numbers = ValidCardNumbers.map { |num| (num.to_i + 1).to_s }
    assert invalid_numbers.none? { |number| Luhn.valid?(number) }
  end

end

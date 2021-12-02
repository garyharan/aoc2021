require 'spec_helper'
require 'pry'

RSpec.describe Year2021::Day2 do
  describe "sample" do
    let(:input) { "inputs/day2_sample.txt" }

    it 'solves part 1 sample' do
      d = Year2021::Day2.new
      expect(d.product(input)).to eq 150
    end

    it 'solves part 2 sample' do
      d = Year2021::Day2.new
      expect(d.aimed_product(input)).to eq 900
    end
  end

  context "real data" do
    let(:input) { "inputs/day2_1.txt" }

    it "solves part1" do
      d = Year2021::Day2.new
      expect(d.product(input)).to eq 1815044
    end

    it "solves part2" do
      d = Year2021::Day2.new
      expect(d.aimed_product(input)).to eq 1739283308
    end
  end
end


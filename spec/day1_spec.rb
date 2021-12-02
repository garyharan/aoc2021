require 'spec_helper'
require 'pry'

RSpec.describe Year2021::Day1 do
  describe "sample" do
    let(:input) { File.open("inputs/day1_sample.txt").readlines.map(&:chomp).map(&:to_i) }

    it 'solves part 1 sample' do
      d = Year2021::Day1.new
      expect(d.increases(input)).to eq 7
    end

    it 'solves part 2 sample' do
      d = Year2021::Day1.new
      expect(d.triples_increases(input)).to eq 5
    end
  end

  describe "part1" do
    let(:input) { File.open("inputs/day1_1.txt").readlines.map(&:chomp).map(&:to_i) }

    it "solves part1" do
      d = Year2021::Day1.new
      expect(d.increases(input)).to eq 1624
    end
  end

  describe "part2" do
    let(:input) { File.open("inputs/day1_1.txt").readlines.map(&:chomp).map(&:to_i) }

    it "solves part2" do
      d = Year2021::Day1.new
      expect(d.triples_increases(input)).to eq 1653
    end
  end
end


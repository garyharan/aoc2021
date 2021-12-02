module Year2021
  class Day1
    def increases(input)
      _previous, increases = input.inject([input.first, 0]) do |acc, depth|
        previous, increases = acc

        increases += 1 if depth > previous

        acc = [depth, increases]
      end

      increases
    end

    def triples_increases(input)
      input.each_cons(3).inject([]) do |acc, args|
        acc << args.sum
      end.yield_self { |input| increases(input) }
    end
  end
end

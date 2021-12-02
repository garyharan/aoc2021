module Year2021
  class Day2

    def product(filename)
      output = parse(filename).inject({depth: 0, horizontal: 0}) do |acc, line|
        /^(?<direction>\w+)\W(?<change>\d+)$/ =~ line

        change = change.to_i

        case direction
        when 'forward'
          acc[:horizontal] += change
        when 'down'
          acc[:depth] += change
        when 'up'
          acc[:depth] -= change
        end

        acc
      end

      output[:depth] * output[:horizontal]
    end

    def aimed_product(filename)
      output = parse(filename).inject({depth: 0, horizontal: 0, aim: 0}) do |acc, line|
        /^(?<direction>\w+)\W(?<change>\d+)$/ =~ line

        change = change.to_i

        case direction
        when 'forward'
          acc[:horizontal] += change
          acc[:depth]      += (acc[:aim] * change)
        when 'down'
          acc[:aim] += change
        when 'up'
          acc[:aim] -= change
        end

        acc
      end

      output[:depth] * output[:horizontal]
    end

    private

    def parse(file_name)
      File.open(file_name).readlines.map(&:chomp)
    end
  end
end


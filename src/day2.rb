module Year2021
  class Day2

    def product(filename)
      output = parse(filename).inject({depth: 0, horizontal: 0}) do |acc, line|
        /^(?<direction>\w+)\W(?<change>\d+)$/ =~ line

        case direction
        when 'forward'
          acc[:horizontal] += change.to_i
        when 'down'
          acc[:depth] += change.to_i
        when 'up'
          acc[:depth] -= change.to_i
        end

        acc
      end

      output[:depth] * output[:horizontal]
    end

    def aimed_product(filename)
      output = parse(filename).inject({depth: 0, horizontal: 0, aim: 0}) do |acc, line|
        /^(?<direction>\w+)\W(?<change>\d+)$/ =~ line

        case direction
        when 'forward'
          acc[:horizontal] += change.to_i
          acc[:depth]      += (acc[:aim] * change.to_i)
        when 'down'
          acc[:aim] += change.to_i
        when 'up'
          acc[:aim] -= change.to_i
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


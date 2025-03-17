class StringCalculator
  def self.add string
    return 0 if string.empty?
    return string.to_i if string.length == 1

    delimiter = ','

    if string.start_with?('//')
      delimiter_str, *string = string.split("\n")
      delimiter = delimiter_str[2..]

      string = string.join(delimiter) # Handling extra case "//;\n1;2\n3"
    end

    string = string.gsub("\n", delimiter) if string.include?("\n")

    number_array = string.split(delimiter).map(&:to_i)

    negative_numbers = number_array.select { |num| num < 0 }
    raise "negative numbers not allowed #{negative_numbers.join(', ')}" unless negative_numbers.empty?

    number_array.sum
  end
end
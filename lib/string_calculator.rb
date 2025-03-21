class StringCalculator
  def self.add(string)
    return 0 if string.empty?

    delimiter = ','

    if string.start_with?('//')
      delimiter, string_numbers = extract_custom_delimiter(string)
    end

    string = string.gsub("\n", delimiter) if string.include?("\n")

    number_array = string.split(delimiter).map(&:to_i)

    negative_numbers = number_array.select { |num| num < 0 }
    raise "negative numbers not allowed #{negative_numbers.join(', ')}" unless negative_numbers.empty?

    number_array.sum
  end

  def self.extract_custom_delimiter(string)
    delimiter_str, *string = string.split("\n") # *string just for this case "//;\n1;2\n3"
    custom_delimiter = delimiter_str[2..]

    string = string.join(custom_delimiter) # Handling extra case "//;\n1;2\n3" or "//;\n1;2\n3:1"

    return custom_delimiter, string
  end
end
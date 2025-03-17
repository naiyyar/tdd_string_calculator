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

    string.split(delimiter).map(&:to_i).sum
  end
end
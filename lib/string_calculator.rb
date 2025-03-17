class StringCalculator
  def self.add string
    return 0 if string.empty?
    return string.to_i if string.length == 1

    delimiter = ','

    string = string.gsub("\n", delimiter) if string.include?("\n")

    string.split(delimiter).map(&:to_i).sum
  end
end
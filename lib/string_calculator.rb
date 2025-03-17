class StringCalculator
  def self.add string
    return 0 if string.empty?
    return string.to_i if string.length == 1

    if string.include?("\n")
      string.gsub("\n", ',').split(',').map(&:to_i).sum
    else
      string.split(',').map(&:to_i).sum
    end
  end
end
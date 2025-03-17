class StringCalculator
  def self.add string
    return 0 if string.empty?
    return string.to_i if string.length == 1

    string.split(',').map(&:to_i).sum
  end
end
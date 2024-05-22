class StringCalculator
  def add(numbers)
    return 0 if numbers.empty?
    return numbers.to_i if numbers.length == 1

    delimiter = ","

    if numbers.start_with?("//")
      parts = numbers.split("\n", 2)
      delimiter = parts[0][2]
      numbers = parts[1]
    end

    numbers = numbers.gsub("\n", delimiter)
    return numbers.split(delimiter).map(&:to_i).sum
  end
end

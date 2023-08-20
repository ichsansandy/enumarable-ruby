module MyEnumerable
  def all?
    return true unless block_given?

    each do |item|
      return false unless yield(item)
    end
    true
  end

  def any?
    return false unless block_given?

    each do |item|
      return true if yield(item)
    end
    false
  end

  def filter
    result = []
    each do |item|
      result << item if yield(item)
    end
    result
  end
end

module MyEnumerable
  def all?(&block)
    @list.map(&block).reduce(true) { |result, item| result && item }
  end

  def any?(&block)
    @list.map(&block).reduce(false) { |result, item| result || item }
  end

  def filter(&block)
    @list.reduce([]) { |result, item| block.call(item) ? result + [item] : result }
  end
end

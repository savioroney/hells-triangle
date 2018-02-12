class Triangle

  def initialize(values)
    @values = values
  end

  def get_maximum_total
    index_current_max = 0
    sum = 0
    @values.each_with_index do | t, t_index |
      max = get_next_max(t_index, index_current_max)
      index_current_max = get_index(t_index, max)
      sum += max
    end
    sum
  end

  def get_next_max(t_index, index_current_max)
    @values[t_index].slice(index_current_max, 2).max
  end

  def get_index(t_index, value)
    @values[t_index].rindex(value)
  end
end


class Train
  attr_reader :size, :destination, :line, :time

  def initialize(train_array)
    @size = train_array[0]
    @destination = train_array[1]
    @line = train_array[2]
    @time = train_array[3]
  end
end

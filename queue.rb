class Queue
  def initialize(size)
    @size = size
    @store = Array.new(@size)
    @head, @tail = 0, 0
  end

  def shift
    if empty?
      nil
    else

      dequeued = @store[@head]
      @store[@tail] = nil
      @tail = @tail - 1
      dequeued
    end
  end

  def push(element)
    if full? or element.nil?
      nil
    else
      @store[@tail] = element
      @tail = @tail + 1
      self
    end
  end

  def size
    @size
  end

  private

  def empty?
    @head == @tail
  end

  def full?
    @tail == (@size)
  end
end

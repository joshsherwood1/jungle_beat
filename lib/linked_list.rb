class LinkedList
  attr_reader :head

  def initialize
    @head = head
  end

  def append(data)
    # if @head == nil
    #   @head = Node.new(data)
    # else
    #   @head.change_next_node(Node.new(data))
    # end
    if @head == nil
      @head = Node.new(data)
    else
      current_node = @head
      while current_node.next_node != nil
        current_node = current_node.next_node
    end
    current_node.change_next_node(Node.new(data))
    end
  end

  def count
    array = []
    if @head == nil
      @head = Node.new(data)
    else
      current_node = @head
      array << @head.data
      while current_node.next_node != nil
        current_node = current_node.next_node
        array << current_node.data
    end
    end
    # array << @head.data
    # the_next_node = @head.next_node
    # if @head.next_node != nil
    #   array << @head.next_node.data
    # else
    # end
    array.count
  end

  def to_string
    # array = []
    # array << @head.data
    # the_next_node = @head.next_node
    # if @head.next_node != nil
    #   array << @head.next_node.data
    # else
    # end

    array = []
    if @head == nil
      @head = Node.new(data)
    else
      current_node = @head
      array << @head.data
      while current_node.next_node != nil
        current_node = current_node.next_node
        array << current_node.data
    end
    end
    array.join(' ')
  end
end

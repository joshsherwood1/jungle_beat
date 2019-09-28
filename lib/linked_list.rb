class LinkedList
  attr_reader :head

  def initialize
    @head = head
  end

  def append(data)
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
    array.count
  end

  def to_string
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

  def insert(target_position, data)
    current_node = @head
    if target_position > 0
    (target_position - 1).times do
      current_node = current_node.next_node
    end
  end
    #return unless node
    the_next = current_node.next_node
    current_node.change_next_node(Node.new(data))
    current_node.next_node.change_next_node(the_next)
  end

  def prepend(data)
    current_node = @head
    the_next = current_node
    @head = Node.new(data)
    @head.change_next_node(the_next)
  end
end

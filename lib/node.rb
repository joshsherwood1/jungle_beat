class Node
  attr_reader :data, :next_node

  def initialize(data)
    @data = data
    @next_node = next_node
  end

  def change_next_node(data)
    @next_node = data
  end
end

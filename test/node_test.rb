require 'minitest/autorun'
require 'minitest/pride'
require './lib/node'
require 'pry'

class NodeTest < Minitest::Test

  def test_it_exists
    node = Node.new("Plop")

    assert_instance_of Node, node
  end

  def test_it_has_data
    node = Node.new("Plop")

    assert_equal "Plop", node.data
  end

  def test_that_next_node_is_nil
    node = Node.new("Plop")

    assert_nil node.next_node
  end
end

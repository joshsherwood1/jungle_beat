require 'minitest/autorun'
require 'minitest/pride'
require './lib/node'
require './lib/linked_list'
require 'pry'

class LinkedListTest < Minitest::Test
  #
  # def setup
  #   @node = Node.new
  # end

  def test_it_exists
    linked_list = LinkedList.new

    assert_instance_of LinkedList, linked_list
  end

  def test_it_has_head
    linked_list = LinkedList.new

    assert_nil linked_list.head
  end

  def test_it_can_append
    linked_list = LinkedList.new
    linked_list.append("doop")

    assert_equal "doop", linked_list.head.data
    assert_nil linked_list.head.next_node
  end

  def test_append_next_node
    linked_list = LinkedList.new
    linked_list.append("doop")
    linked_list.append("deep")
    assert_equal "deep", linked_list.head.next_node.data
  end

  def test_that_it_can_count
    linked_list = LinkedList.new
    linked_list.append("doop")
    linked_list.append("deep")
    assert_equal 2, linked_list.count
  end

  def test_that_it_can_list_elements_in_spaced_string
    linked_list = LinkedList.new
    linked_list.append("doop")
    linked_list.append("deep")
    assert_equal "doop deep", linked_list.to_string
  end
end

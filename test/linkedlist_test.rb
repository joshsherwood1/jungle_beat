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
    linked_list.append("deepado")
    assert_equal 3, linked_list.count
  end

  def test_that_it_can_list_elements_in_spaced_string
    linked_list = LinkedList.new
    linked_list.append("doop")
    linked_list.append("deep")
    assert_equal "doop deep", linked_list.to_string
    linked_list.append("deepado")
    assert_equal "doop deep deepado", linked_list.to_string
  end

  def test_that_it_can_count_element_with_prepended_and_inserted_words
    linked_list = LinkedList.new
    linked_list.append("doop")
    linked_list.append("deep")
    linked_list.append("deepado")
    linked_list.insert(1, "woo")
    assert_equal 4, linked_list.count
    linked_list.prepend("banana")
    assert_equal 5, linked_list.count
  end

  def test_that_it_can_list_elements_in_spaced_string_with_prepended_and_inserted_words
    linked_list = LinkedList.new
    linked_list.append("doop")
    linked_list.append("deep")
    linked_list.append("deepado")
    linked_list.insert(1, "woo")
    assert_equal "doop woo deep deepado", linked_list.to_string
    linked_list.prepend("banana")
    assert_equal "banana doop woo deep deepado", linked_list.to_string
  end

  def test_it_can_find_and_return_elements
    linked_list = LinkedList.new
    linked_list.append("doop")
    linked_list.append("deep")
    linked_list.append("deepado")
    linked_list.insert(1, "woo")
    linked_list.prepend("banana")
    assert_equal "banana doop woo deep deepado", linked_list.to_string
    assert_equal "woo", linked_list.find(2, 1)
    assert_equal "doop woo deep", linked_list.find(1, 3)
  end

  def test_it_knows_what_data_it_has
    linked_list = LinkedList.new
    linked_list.append("doop")
    linked_list.append("deep")
    linked_list.append("deepado")
    linked_list.insert(1, "woo")
    linked_list.prepend("banana")
    assert_equal true, linked_list.includes?("deep")
    assert_equal false, linked_list.includes?("dep")
  end

  # def test_it_can_remove_data_from_end
  #   linked_list = LinkedList.new
  #   linked_list.append("doop")
  #   linked_list.append("deep")
  #   linked_list.append("deepado")
  #   linked_list.insert(1, "woo")
  #   linked_list.prepend("banana")
    #linked_list.pop
    #linked_list.pop
    #assert_equal "banana doop woo", linked_list.to_string
  # end
end

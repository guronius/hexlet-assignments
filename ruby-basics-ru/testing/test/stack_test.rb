# frozen_string_literal: true

require_relative 'test_helper'
require_relative '../lib/stack'

class StackTest < Minitest::Test
  # BEGIN

  private def setup
    @elems = [1, 2, 3]
    @stack = Stack.new(@elems)
  end

  def test_push
    @stack.push! 4
    assert { @elems.last == 4 and @elems.size == 4 }
  end

  def test_pop
    assert { @stack.pop! == 3 and @elems.size == 2  }
  end

  def test_empty?
    @elems.clear
    assert { @stack.empty? }
  end

  def test_to_a
    assert { @stack.to_a.instance_of? Array }
  end

  def test_size
    assert { @stack.size == 3 }
  end

  def test_clear!
    @stack.clear!
    assert { @stack.instance_variable_get(:@elements).empty? }
  end
  # END
end

test_methods = StackTest.new({}).methods.select { |method| method.start_with? 'test_' }
raise 'StackTest has not tests!' if test_methods.empty?

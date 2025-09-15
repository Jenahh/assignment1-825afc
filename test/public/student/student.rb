require "minitest/autorun"
require_relative "../../../src/warmup"
require_relative "../../../src/phonebook"

class StudentExtraTests < Minitest::Test
  def test_freq_large_string
    s = "a" * 1000 + "b" * 999 + "c" * 500
    assert_equal "a", freq(s)
  end

  def test_nthmax_negatives_and_duplicates
    arr = [5,5,4,4,3,3,-1,-1]
    assert_equal 5,  nthmax(0, arr)
    assert_equal 4,  nthmax(1, arr)
    assert_equal 3,  nthmax(2, arr)
    assert_equal(-1, nthmax(3, arr))
    assert_nil      nthmax(4, arr)
  end

  def test_namesByAc_insertion_order_preserved
    pb = PhoneBook.new
    pb.add("A", "123-000-0000", false)
    pb.add("B", "123-111-1111", true)
    pb.add("C", "999-222-2222", false)
    pb.add("D", "123-333-3333", false)
    assert_equal ["A","B","D"], pb.namesByAc("123")
  end
end
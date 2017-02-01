#TDD_lab_spec.rb
require( 'minitest/autorun' )
require( 'minitest/rg' )
require_relative( 'TDD_lab' )

class My_Functions < MiniTest::Test

  def test_add_array_lengths()
    prices = [ 1.23, 6.98, 8.43, 2.45 ]
    costs = [ 4.23, 1.12, 0.52, 8.67 ]
    result = add_array_lengths( prices, costs )
    assert_equal( result, 8)
  end

  def test_array_sum()
    data = [ 1, 2, 3, 4 ,5 ]
    result = array_sum(data)
    assert_equal( result, 15)
  end

  def test_find_item_true()
    hogwarts = [ 'Hufflepuff', 'Slytherin', 'Gryffindor', 'Ravenclaw' ]
    result = find_item?(hogwarts, "Ravenclaw")
    assert_equal( result, true)
  end
  def test_find_item_false()
    hogwarts = [ 'Hufflepuff', 'Slytherin', 'Gryffindor', 'Ravenclaw' ]
    result = find_item?(hogwarts, "Batman")
    assert_equal( result, false)
  end

  def test_find_first_key
    teacher_wallets = {
      'Sandy' => 12,
      'Zsolt'  => 10,
      'Val'  => 1356,
      'Jay' => 1
    }
    result = find_first_key(teacher_wallets)
    assert_equal( 'Sandy' ,  result )
  end

  def test_gimme_capitals()
    countries = {
      uk: {
        capital: 'London',
        population: 60
      },
      france: {
        capital: 'Paris',
        population: 70
      },
      italy: {
        capital: 'Rome',
        population: 56
      }
    }
    result = gimme_capitals(countries)
    assert_equal( [ 'London', 'Paris', 'Rome' ], result)    
  end


end


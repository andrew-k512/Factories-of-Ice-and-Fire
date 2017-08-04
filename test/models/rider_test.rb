require 'test_helper'

class RiderTest < ActiveSupport::TestCase

  def test_that_riders_swing
    # Use your knowledge of factories to make the test pass!
    # this time use create( ... ) instead of build
    aegon = Rider.create(name: "Aegon", sword: "Blackfyre")
    daenerys = Rider.create(name: "Daenerys", sword: "Lightbringer")
    goku = Rider.create(name: "Goku", sword: "his fists")
    vegeta = Rider.create(name: "Vegeta", sword: "his golf club")
    superman = Rider.create(name: "Superman", sword: "his self esteem")


    # can't change the assert_ statements!
    skip unless aegon && daenerys && goku && vegeta && superman
    assert_equal('Daenerys brings Lightbringer crashing down!', daenerys.swing)
    assert_equal('Aegon brings Blackfyre crashing down!', aegon.swing)
    assert_equal('Goku brings his fists crashing down!', goku.swing)
    assert_equal('Vegeta brings his golf club crashing down!', vegeta.swing)
    assert_equal('Superman brings his self esteem crashing down!', superman.swing)

  end

end

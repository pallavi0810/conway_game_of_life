require 'spec_helper'
  
describe Coordinate do 
  context "check adjacent " do
    it "should return true if two co ordinates are adjacent to each other" do
      coordinate_1 = Coordinate.new(1,3)
      coordinate_2 = Coordinate.new(2,3)
      expect(coordinate_1.is_adjacent(coordinate_2)).to eq(true)
    end

    it "should return false if two co ordinates are not adjacent to each other" do
      coordinate_1 = Coordinate.new(1,3)
      coordinate_2 = Coordinate.new(2,5)
      expect(coordinate_1.is_adjacent(coordinate_2)).to eq(false)
    end

  end

  context "find adjacent Coordinates " do
    it "should return left Coordinate(1,3) if Coordinate is (2,3)" do
      coordinate_1 = Coordinate.new(2,3)
      coordinate_2 = Coordinate.new(1,3)
      expect(coordinate_1.left).to eq(coordinate_2)
    end

    it "should return right Coordinate(3,3) if Coordinate is (2,3)" do
      coordinate_1 = Coordinate.new(2,3)
      coordinate_2 = Coordinate.new(3,3)
      expect(coordinate_1.right).to eq(coordinate_2)
    end

    it "should return top Coordinate(2,4) if Coordinate is (2,3)" do
      coordinate_1 = Coordinate.new(2,3)
      coordinate_2 = Coordinate.new(2,4)
      expect(coordinate_1.top).to eq(coordinate_2)
    end

    it "should return bottom Coordinate(2,2) if Coordinate is (2,3)" do
      coordinate_1 = Coordinate.new(2,3)
      coordinate_2 = Coordinate.new(2,2)
      expect(coordinate_1.bottom).to eq(coordinate_2)
    end

    it "should return top_left Coordinate(1,4) if Coordinate is (2,3)" do
      coordinate_1 = Coordinate.new(2,3)
      coordinate_2 = Coordinate.new(1,4)
      expect(coordinate_1.top_left).to eq(coordinate_2)
    end

    it "should return top_right Coordinate(3,4) if Coordinate is (2,3)" do
      coordinate_1 = Coordinate.new(2,3)
      coordinate_2 = Coordinate.new(3,4)
      expect(coordinate_1.top_right).to eq(coordinate_2)
    end

    it "should return bottom_left Coordinate(1,2) if Coordinate is (2,3)" do
      coordinate_1 = Coordinate.new(2,3)
      coordinate_2 = Coordinate.new(1,2)
      expect(coordinate_1.bottom_left).to eq(coordinate_2)
    end

    it "should return bottom_right Coordinate(3,2) if Coordinate is (2,3)" do
      coordinate_1 = Coordinate.new(2,3)
      coordinate_2 = Coordinate.new(3,2)
      expect(coordinate_1.bottom_right).to eq(coordinate_2)
    end
  end

end
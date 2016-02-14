require "../spec_helper"

module ArraysAndStrings
  describe UniqueChars do
    it "returns false if all characters are unique" do
      UniqueChars.new.solve("false").should eq false
    end

    it "returns true if there is at least one non-unique character" do
      UniqueChars.new.solve("non-unique").should eq true
    end

    it "returns true if character is doubled" do
      UniqueChars.new.solve("non").should eq true
    end

    it "returns true if there is only one repeated character" do
      UniqueChars.new.solve("nnnnn").should eq true
    end

    it "returns false if string is empty" do
      UniqueChars.new.solve("").should eq false
    end
  end
end

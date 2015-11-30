require "spec_helper"

describe "solution.rb" do

  describe "#hundred_to_word" do
    
    it "returns 300 as three hundred" do
      expect(hundred_to_word(300)).to eq("three hundred")
    end
    
    it "returns 750 as seven hundred fifty" do
      expect(hundred_to_word(750)).to eq("seven hundred fifty")
    end
    
    it "returns 45 as forty five" do
      expect(hundred_to_word(45)).to eq("forty five")
    end
    
  end

  # Specifications as provided by the projects README.md file
  describe "#int_to_word" do
  
    it "returns 4527 as four thousand five hundred twenty seven" do
      expect(int_to_word(4527)).to eq("four thousand five hundred twenty seven")
    end
    
    it "returns 200017 as two hundred thousand seventeen" do
      expect(int_to_word(200017)).to eq("two hundred thousand seventeen")
    end
    
    it "returns 784 as seven hundred eighty four" do
      expect(int_to_word(784)).to eq("seven hundred eighty four")
    end
    
    it "returns 1000215 as one million two hundred fifteen" do
      expect(int_to_word(1000215)).to eq("one million two hundred fifteen")
    end
    
  end
  
end

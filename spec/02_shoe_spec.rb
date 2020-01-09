describe 'Shoe' do 
  describe 'BRANDS' do
    # Think about it! When does the BRANDS constant need to be
    # made aware of the brands of the shoes that are being created?

    it 'keeps track of all brands' do
      brands = ["Uggs", "Rainbow"]
      brands.each do |brand|
        Shoe.new(brand)
      end

      brands.each do |brand|
        expect(Shoe::BRANDS).to include(brand)
      end
    end

    it 'only keeps track of unique brands' do
      Shoe::BRANDS.clear
      brands = ["Uggs", "Rainbow", "Nike", "Nike"]
      brands.each do |brand|
        Shoe.new(brand)
      end

      expect(Shoe::BRANDS.size).to eq(3)
    end
  end
end



class Shoe
  attr_accessor :shoe, :brand
 
  BRANDS = []
 
  def initialize(title)
    @title = title
  end
 
  def turn_page
    puts "Flipping the page...wow, you read fast!"
  end
 
  def genre=(genre)
   @genre = genre
   GENRES << genre
 end
end
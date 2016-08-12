# make a diamond of letters
# print_out should be:
# Diamond for letter 'E':

#     A
#    B B
#   C   C
#  D     D
# E       E
#  D     D
#   C   C
#    B B
#     A





class Diamond

  def initialize
    @final_diamond = []
    @diamond1 = []
  end


  def make_diamond(letter)
    letter = letter.upcase!
    space_counter = 0
    all_the_letters = ("B"..letter).to_a
    letters_and_spaces = ["A"]
    all_the_letters.each do |letter|
      substring = []
      substring << letter
      space_counter.times do
        substring << " "
      end
      substring << letter
      space_counter += 2
      letters_and_spaces << substring.join("")
    end
    @diamond1 = letters_and_spaces
  end

  def add_centering
    idx_center = @diamond1.length - 1
    @diamond1.each do |substring|
      spaces = ""
      idx_center.times do
        spaces << " "
      end
      spaces << substring
      @final_diamond << spaces
      idx_center -= 1
    end
    # @final_diamond[0][0] = ""
  end

  def pretty_print
    @final_diamond.each do |sub|
      print sub + "\n"
    end
    @final_diamond.pop
    @final_diamond.reverse!
    @final_diamond.each do |sub|
      print sub + "\n"
    end
  end
end


x = Diamond.new
x.make_diamond("j")
x.add_centering
x.pretty_print
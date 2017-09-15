require ('rspec')
require ('definer')
require ('pry')

describe ('Definer') do
#   describe ('.all') do
#     it("is an empty array.") do
#       expect(Word.all()).to(eq([]))
#     end
#   end

  describe ('#word') do
    it ('takes the input word and returns it.') do
      def_class = Word.new({:word_input=> "Unicorn", :definition_input=> "A mythical white horse with a horn on its head."})
      expect(def_class.word_input).to(eq("Unicorn"))
    end
  end

  describe ('#definition') do
    it ('takes input definition and returns it.') do
      def_class = Word.new({:word_input=> "Unicorn", :definition_input=> "A mythical white horse with a horn on its head."})
      expect(def_class.definition_input).to(eq("A mythical white horse with a horn on its head."))
    end
  end

end

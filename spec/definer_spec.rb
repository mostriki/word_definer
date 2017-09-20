require ('rspec')
require ('definer')
require ('pry')

describe('Word') do
  describe(".clear") do
    it("clears the array") do
      def_class = Word.new({word_input: 'Unicorn', definition_input: 'A mythical animal.'})
      Word.clear()
      expect(Word.all).to(eq([]))
    end
  end

  describe ('.all') do
    it("is an empty array.") do
      expect(Word.all).to(eq([]))
    end
  end

  describe("#save") do
    it("lets you save words to the database") do
      def_class = Word.new({word_input: 'Unicorn', definition_input:'A mythical animal.'})
      def_class.save
      expect(Word.all).to(eq([def_class]))
    end
  end

  describe ('.find') do
    it("finds the word by id") do
      Word.clear()
      def_class = Word.new({word_input: 'Unicorn', definition_input:'A mythical animal.'})
      def_class.save
      def_class2 = Word.new({word_input: 'Monkeys', definition_input:'A real animal.'})
      def_class2.save
      expect(Word.find(1)).to(eq(def_class))
      expect(Word.find(2)).to(eq(def_class2))
    end
  end

  # describe('#add_definition')
  #   it('append multiple definitions to page')
  #   def_class = Word.new({word_input: 'Unicorn', definition_input:'A mythical animal.'})
  #
  #   expect(def_class.word_input).to(eq())
  # end

  describe ('#word') do
    it ('takes the input word and returns it.') do
      def_class = Word.new({word_input: 'Unicorn', definition_input:'A mythical animal.'})
      expect(def_class.word_input).to(eq("Unicorn"))
    end
  end

  describe ('#definition') do
    it ('takes input definition and returns it.') do
      def_class = Word.new({word_input: 'Unicorn', definition_input: 'A mythical animal.'})
      expect(def_class.definition_input).to(eq('A mythical animal.'))
    end
  end

  describe ('#id') do
    it ('takes input definition and returns it.') do
      Word.clear
      def_class = Word.new({word_input: 'Unicorn', definition_input: 'A mythical animal.'})
      expect(def_class.id).to(eq(1))
    end
  end
end

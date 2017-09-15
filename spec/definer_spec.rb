require ('rspec')
require ('definer')
require ('pry')

describe ('Definer') do
  describe ('.all') do
    it("is an empty array.") do
      expect(Definer.all()).to(eq([]))
    end
  end

  describe ('#word') do
    it ('takes the input word and returns it.') do
      def_class = Definer.new({:word=> "Unicorn", :definition=> "A mythical white horse with a horn on its head."})
      expect(def_class.word).to(eq("Unicorn"))
    end
  end

  describe ('#definition') do
    it ('takes input definition and returns it.') do
      def_class = Definer.new({:word=> "Unicorn", :definition=> "A mythical white horse with a horn on its head."})
      expect(def_class.definition).to(eq("A mythical white horse with a horn on its head."))
    end
  end

end

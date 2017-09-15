class Word
  @@creation_list = []
  puts @@creation_list.inspect # test

  attr_reader :id
  attr_accessor(:word_input, :definition_input)

  def initialize(attribute)
    @word_input = attribute.fetch(:word_input)
    # puts @word.inspect # test
    @definition_input = attribute.fetch(:definition_input)
    # puts @definition.inspect # test
    @id = @@creation_list.length + 1
  end

  def self.all()
    @@creation_list
  end

  def save
    @@creation_list.push(self)
  end

  def self.sort
    @@creation_list.sort_by! {|word_id| word_id.word_input}
  end

  def self.find(id)
     item_id = id.to_i()
     @@creation_list.each do |item|
       if item.id == item_id
         return item
       end
     end
   end

  #  def self.delete(delete_input)
  #    @@creation_list = @@creation_list.reject do |item|
  #      item.word_input == delete_input
  #    end
  #  end

  # def self.clear()
  #   @@full_contact = []
  # end
end

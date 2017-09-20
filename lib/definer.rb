class Word
  @@creation_list = []

  attr_reader :id
  attr_accessor(:word_input, :definition_input)

  def initialize(attribute)
    @word_input = attribute.fetch(:word_input)
    @definition_input = attribute.fetch(:definition_input)
    @id = @@creation_list.length + 1
  end

  def self.all()
    @@creation_list
  end

  def self.clear()
    @@creation_list = []
  end

  def save
    @@creation_list.push(self)
  end

  def add_definition (definition)
    @definition_input.push(definition)
  end
  # def self.sort
  #   @@creation_list.sort_by! {|word_id| word_id.word_input}
  # end

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

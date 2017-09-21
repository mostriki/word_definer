class Word
  @@creation_list = []

  attr_reader :id
  attr_accessor(:word_input, :definition_input)

  def initialize(attribute)
    @word_input = attribute[:word_input]
    @definition_input = attribute[:definition_input]
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
# /////////
  def add_definition(definition)
    if @definition_input == nil
      @definition_input = definition
    elsif @definition_input.respond_to?(:push)
      @definition_input.push(definition)
    else
      @definition_input = [@definition_input, definition]
    end
  end

  def self.find(id)
    item_id = id.to_i()
    @@creation_list.each do |item|
      if item.id == item_id
        return item
      end
    end
  end
end

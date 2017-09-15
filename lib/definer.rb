class Word
  @@creation_list = []
  puts @@creation_list.inspect # test

  # attr_reader :id
  attr_accessor(:word_input, :definition_input)

  def initialize(attribute)
    @word_input = attribute.fetch(:word_input)
    # puts @word.inspect # test
    @definition_input = attribute.fetch(:definition_input)
    # puts @definition.inspect # test
  end

  def word_input
    @word_input
  end

  def definition_input
    @definition_input
  end

  def self.all()
    @@creation_list
  end

  def save
    @@creation_list.push(self)
  end

  # def self.sort
  #   @@full_contact.sort_by! {|contact_id| contact_id.last_name}
  # end
  #
  # def self.find(id)
  #    item_id = id.to_i()
  #    @@full_contact.each do |item|
  #      if item.id == item_id
  #        return item
  #      end
  #    end
  #  end

  # def self.clear()
  #   @@full_contact = []
  # end

end

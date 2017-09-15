class Definer
  @@creation_list = []

  # attr_reader :id
  attr_accessor(:word, :definition)

  def initialize(attribute)
    @word = attribute.fetch(:word)
    @definition = attribute.fetch(:definition)
  end

  def word
    @word
  end

  def definition
    @definition
  end

  def self.all()
    @@creation_list
  end

  def save
    @@creation_list.push(self)
  end

  # def self.clear()
  #   @@full_contact = []
  # end



end

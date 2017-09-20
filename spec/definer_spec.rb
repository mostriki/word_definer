require ('rspec')
require ('definer')
require ('pry')

# describe ('Definer') do
#   describe ('.all') do
#     it("is an empty array.") do
#       expect(Word.all()).to(eq([]))
#     end
#   end
#
#   describe("#save") do
#     it("lets you save doctors to the database") do
#       doctor = Word.new({word_input: 'Unicorn', definition_input: 'A mythical animal.'})
#       expect(Doctor.all).to(eq([doctor]))
#     end
#   end
#
#   describe ('#word') do
#     it ('takes the input word and returns it.') do
#       def_class = Word.new({word_input: 'Unicorn', definition_input:'A mythical animal.'})
#       expect(def_class.word_input).to(eq("Unicorn"))
#     end
#   end
#
#   describe ('#definition') do
#     it ('takes input definition and returns it.') do
#       def_class = Word.new({word_input: 'Unicorn', definition_input: 'A mythical animal.'})
#       expect(def_class.definition_input).to(eq('A mythical animal.'))
#     end
#   end
# end

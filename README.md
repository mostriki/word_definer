# _Word Definer_

#### _An independent project implementing DBB and Sinatra in Ruby, 09.15.2017_

#### By _Riki Montgomery_

## Description

_Build a learning website for kids that will allow them to write up a list of words they don't know (but would like to learn) and then come up with their own definitions for them._

## Specs

| Description                               | Input                                                        | Output                                                 |
|-------------------------------------------|--------------------------------------------------------------|--------------------------------------------------------|
| Clears the array                          | 'Unicorn', 'A mythical animal.'                              | []                                                     |
| Save words to the database                | 'Unicorn', 'A mythical animal.'                              | Unicorn, A mythical animal.                            |
| Finds the word by id                      | Word.find(1)                                                 | Monkeys, A real animal.                                |
| Appends multiple definitions to the page. | 'A mythical animal.', 'A real animal.', 'A mythical animal.' | A mythical animal. A real animal. & A mythical animal. |
| Takes a word returns and it.              | 'Unicorn'                                                    | Unicorn                                                |
| Takes a definition and returns it.        | 'A mythical animal.'                                         | A mythical animal.                                     |

## Setup/Installation Requirements

1. _`$ git clone` [https://github.com/mostriki/word_definer](https://github.com/mostriki/word_definer)_

2. _`$ cd word_definer/`_

3. _`$ ruby app.rb`_

4. _Open [http://localhost:4567/](http://localhost:4567/) in your favorite web browser._

5. _You can also try the app on [heroku](https://murmuring-basin-44508.herokuapp.com/)._

## Support and contact details

_If you have any updates or suggestions please contact [Riki Montgomery] or make a contribution to my repository._

[Riki Montgomery]: mailto:mostriki820@gmail.com

### License

MIT License

Copyright (c) 2017 Riki Montgomery

pdf2xls
=======

Install

1)RVM install

- sudo apt-get install curl
- \curl -sSL https://get.rvm.io | bash -s stable --rails
- source ~/.rvm/scripts/rvm
- echo "source ~/.rvm/scripts/rvm" >> ~/.bashrc

2) Tabula extractor install (https://github.com/tabulapdf/tabula-extractor)
- rvm install jruby
-jruby -S gem install tabula-extractor

3) AXLSX install  (https://github.com/randym/axlsx)
-gem install axlsx


Exécution

a) ruby extractArrays.rb 
Extract one pdf file to one xls sheet with one tab per tab


b)ruby extractArraysCsv.rb 
Extract one pdf file to many csv files(one file per tab)



Install
=======

1)RVM install
  - sudo apt-get install curl
  - \curl -sSL https://get.rvm.io | bash -s stable --rails
  - source ~/.rvm/scripts/rvm
  - echo "source ~/.rvm/scripts/rvm" >> ~/.bashrc

2) Tabula extractor install (https://github.com/tabulapdf/tabula-extractor)
  - rvm install jruby (tabula-extractor only works with JRuby 1.7 or newer)
  - jruby -S gem install tabula-extractor

3) AXLSX install  (https://github.com/randym/axlsx)
  - gem install axlsx


Exécution
=======
  
  Edit files to update the name of the directory and pdf to use

a) Extract one pdf file to one xls sheet with one tab per tab  
  - ruby extractArrays.rb 

b) Extract one pdf file to many csv files(one file per tab)
  - ruby extractArraysCsv.rb 



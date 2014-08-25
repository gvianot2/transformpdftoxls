require 'tabula'
require 'axlsx'

pdf_dir_path = "/home/giom/Bureau/Merlu/tabula/"
pdf_file_name = "datatables_sampleall.pdf"



extractor = Tabula::Extraction::ObjectExtractor.new(pdf_dir_path + pdf_file_name, :all )
i = 0
extractor.extract.each do |pdf_page|
  pdf_page.spreadsheets.each do |spreadsheet|
    out = open(pdf_file_name + i.to_s + ".csv", 'w')
    out << spreadsheet.to_csv
    out << "\n\n"
    out.close
    i += 1
  end
end

require 'tabula'
require 'axlsx'
require 'csv'

pdf_dir_path = "/home/giom/Bureau/Merlu/tabula/"
pdf_file_name = "datatables_sampleall.pdf"

p = Axlsx::Package.new
wb = p.workbook

extractor = Tabula::Extraction::ObjectExtractor.new(pdf_dir_path + pdf_file_name, :all )
i = 0

extractor.extract.each do |pdf_page|
  pdf_page.spreadsheets.each do |spreadsheet|
    
    wb.add_worksheet(:name => "tableau" + i.to_s) do | sheet |
     spreadsheet.rows.each do |currentrow|
	sheet.add_row currentrow.map(&:text)
     end
   end
    i +=1
    
  end

end
#output filename will be "inputfilename".xlsx
p.serialize pdf_file_name+'.xlsx'

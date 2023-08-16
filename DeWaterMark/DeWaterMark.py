# pip install PyPDF4
from PyPDF4 import PdfFileReader, PdfFileWriter
# input pdf path
input_pdf_path = "/Users/linxu/Desktop/护理记录单_Insert.pdf"
# output pdf path
output_pdf_path = "/Users/linxu/Desktop/护理记录单_Modify.pdf"


# Erase Watermark layer 
input_pdf = PdfFileReader(input_pdf_path, 'rb')
WaterMarkLayerKeys = input_pdf.getPage(0)['/Resources']['/XObject'].getObject().keys()
output = PdfFileWriter()

for page_num in range(input_pdf.getNumPages()):
    page = input_pdf.getPage(page_num)
    for key in page['/Resources']['/XObject'].getObject().keys():
        if key.startswith('/KSP'):
            page['/Resources']['/XObject'][key].clear()
    # add page to output_pdf
    output.addPage(page)

# save pdf
with open(output_pdf_path, 'wb') as output_pdf:
    output.write(output_pdf)
*** Settings ***
Library                 QWeb
Library                 ExcelLibrary
Library                 String
Library                 Collections
Library                 ../libraries/zip.py

*** Variables ***
${zip_file}=       ../files/localization.zip
${excel_file}=     localization.xlsx

*** Keywords ***
Get Excel Rows
    [Arguments]    ${column}=1  ${rows}=2
    Extract Archive  archive=${zip_file}   excelfile=${excel_file}
    ${document}=     Open Excel Document    ../files/${excel_file}    countries
    ${data}=   Read Excel Column    col_num=${column}    max_num=${rows}    row_offset=1    sheet_name=Test data
    [Return]  ${data}

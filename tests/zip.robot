*** Settings ***
Resource    ../resources/zip.resource

*** Test Cases ***
Sample Zip Test
    ${rows}=  Get Excel Rows  1  2
    FOR  ${i}  IN  ${rows}
        Log To Console  ${i}
    END

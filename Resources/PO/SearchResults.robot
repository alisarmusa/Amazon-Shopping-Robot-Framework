*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${SEARCH_LINK} =    xpath=//*[@id="search"]/div[1]/div[2]/div/span[3]/div[2]/div[2]/div/span/div/div/div[2]/h2/a
${SEARCH_VERIFY} =    results for "${SEARCH_TERM}"
*** Keywords ***
Verify Search Completed
    wait until page contains    ${SEARCH_VERIFY}

Click Product Link
    [Documentation]  Clicks on the first product in the search results list
    click link    ${SEARCH_LINK}

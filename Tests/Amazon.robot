*** Settings ***
Documentation    This is some basic information about whole suite
Resource    ../Resources/AmazonApp.robot
Resource    ../Resources/Common.robot
Suite Setup    Insert Testing Data
Test Setup    Common.Begin Web Test
Test Teardown   Common.End Web Test
Suite Teardown    Cleanup Testing Data

*** Variables ***
${BROWSER} =    chrome
${START_URL} =    http://www.amazon.com
${SEARCH_TERM} =    Ferrari 458
${LOGIN_EMAIL} =    musa.alisar@gmail.com
${LOGIN_PASSWORD} =    hacettepe_cs_2014

*** Test Cases ***
Logged out user go to Amazon
    [Documentation]    This is some basic information about the test 1
    [Tags]    Smoke
    AmazonApp.Go To Amazon

Logged out user can search for products
    [Documentation]    This is some basic information about the test 2
    [Tags]    Smoke
    AmazonApp.Go To Amazon
    AmazonApp.Search For Products

Logged out user can view a product
    [Documentation]    This is some basic information about the test 3
    [Tags]    Smoke
    AmazonApp.Go To Amazon
    AmazonApp.Search For Products
    AmazonApp.Select Product from Search Results

Logged out user can add product to cart
    [Documentation]    This is some basic information about the test 4
    [Tags]    Smoke
    AmazonApp.Go To Amazon
    AmazonApp.Search For Products
    AmazonApp.Select Product from Search Results
    AmazonApp.Add Product to Cart

Logged out user must sign in to check out
    [Documentation]    This is some basic information about the test 5
    [Tags]    Smoke
    AmazonApp.Go To Amazon
    AmazonApp.Search For Products
    AmazonApp.Select Product from Search Results
    AmazonApp.Add Product to Cart
    AmazonApp.Begin Checkout

User must sign in to check out -Email Step-
    [Documentation]    This is some basic information about the test 6
    [Tags]    Smoke
    AmazonApp.Go To Amazon
    AmazonApp.Search For Products
    AmazonApp.Select Product from Search Results
    AmazonApp.Add Product to Cart
    AmazonApp.Begin Checkout
    AmazonApp.Email    ${LOGIN_EMAIL}

User must sign in to check out -Password Step-
    [Documentation]    This is some basic information about the test 7
    [Tags]    Smoke
    AmazonApp.Go To Amazon
    AmazonApp.Search For Products
    AmazonApp.Select Product from Search Results
    AmazonApp.Add Product to Cart
    AmazonApp.Begin Checkout
    AmazonApp.Email    ${LOGIN_EMAIL}
    AmazonApp.Password    ${LOGIN_PASSWORD}

Logged out user can go to Electronics Menu
    [Documentation]    This is some basic information about the test 8
    [Tags]    Smoke
    AmazonApp.Go To Amazon
    AmazonApp.Choose Electronics



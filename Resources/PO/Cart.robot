*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${CART_VERIFY} =   Added to Cart
${CART_lINK} =    css=#hlb-ptc-btn-native

*** Keywords ***
Verify Product Added
    wait until page contains    ${CART_VERIFY}

Proceed to Checkout
    click link    ${CART_lINK}
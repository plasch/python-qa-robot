*** Settings ***
Resource        ResourceExample.robot

Library         LibraryClassExample.py
Library         LibraryFuncExample.py


Suite Setup       log  Hello, i am from Suite Setup

Suite Teardown    log  "Hello, i am from Suite Teardown"

Test Setup        log  "Hello, i am from Test Setup"

Test Teardown     log  "Hello, i am from Test Teardown"

Test Timeout      30s

Default Tags      auto-06  otus

*** Variables ***
${variable_example}=    "object"
${page}=                otus.ru

${login}=               login
${password}=            password
${welcome_page}=        otus.ru/welcome/
*** Test Cases ***
Valid login
    Given browser is opened to login page
    When user "demo" logs in with password "mode"
    Then welcome page should be open

Second test
  Browser is opened   ${page}
  User login   ${login}  ${password}  mode=admin
  Browser is opened   ${welcome_page}


*** Keywords ***
Browser is opened
  [Arguments]   ${page}
  log           ${page}

User login
  [Arguments]   @{args}    &{kwargs}
  log           ${args}
  log           ${kwargs}

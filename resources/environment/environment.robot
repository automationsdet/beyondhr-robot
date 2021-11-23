*** Settings ***
Documentation    Test environment from environment.py file
Variables    ../resources/environment/environment.py

*** Variables ***
${var_url}    ${url_list}
${users}    ${users_list}

# You can change this variable to use default url and user role
# You can override these variables by using -v parameter

${base_url}    test
${user}    admin

# Variables: These variables will be used in testing.
${url}    ${var_url}[${base_url}]
${username}    ${users}[${user}][uname]
${password}    ${users}[${user}][pwd]
${browser}    ${browsers}[chrome]
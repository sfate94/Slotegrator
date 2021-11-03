import {credentials} from "../fixtures/constants";
import {navigationConstants} from "../fixtures/navigation";

Then(/I enter (.*?) to "(.*?)"/,(text,typeOfField)=>{
    cy.get(`input[placeholder='${typeOfField}']`).click().type(credentials[text]);
});

Then(/I press the "Sign in" button/,()=>{
    cy.get('input').contains("Sign in").click();
});

Then(/I should see "(.*?)"/,(type)=>{
    if (type === 'unCorrectAuthorization') {
//        cy.get('div').contains('Incorrect login or password').should('be.visible');
        cy.get('div').contains('Verification Code cannot be blank.').should('be.visible');
        cy.url().should('include', navigationConstants['Casino']['Login']);
    } else if (type === 'correctAuthorization') {
        cy.url().should('include', navigationConstants['Casino']['adminPanel']);
    }
});
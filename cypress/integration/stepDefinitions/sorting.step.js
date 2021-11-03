Then(/I sort a player list by name "Test"/,()=>{
    cy.get('input[name="PlayerSearch[name]"]').click().type('test').type('{enter}');
});

Then(/I should see correct sort/,()=>{
    cy.get('div').contains('Displaying 1-20 of 699 results.').should('be.visible');
});

Then(/Url should be correct/,()=>{
    cy.url().should('include', 'PlayerSearch[name]=test')
});
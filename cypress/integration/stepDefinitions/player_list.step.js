import {navigationConstants} from "../fixtures/navigation";

Then(/I open a player list/,()=>{
    cy.contains("Users").click();
    cy.get('a[href*="/user/player/admin"]').click();
});

Then(/I should see correct player list/,()=>{
    cy.url().should('include', navigationConstants['Casino']['playerList']);
});
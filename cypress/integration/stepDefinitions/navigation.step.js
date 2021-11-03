import {navigationConstants} from "../fixtures/navigation";

Given(/I open "(.*?)" "(.*?)" page/,(application,page)=>{
    cy.visit(navigationConstants[application][page]);
});
import { LightningElement, api } from 'lwc';
import { ShowToastEvent } from 'lightning/platformShowToastEvent';
import LEAD_NAME from '@salesforce/schema/Lead';
import FIRSTNAME_FIELD from '@salesforce/schema/Lead.FirstName';
import LASTNAME_FIELD from '@salesforce/schema/Lead.LastName';
import COMPANY_FIELD from '@salesforce/schema/Lead.Company';
import PHONE_FIELD from '@salesforce/schema/Lead.Phone';
import EMAIL_FIELD from '@salesforce/schema/Lead.Email';



export default class LeadEditForm extends LightningElement {
    
    @api recordId;
    @api objectApiName = LEAD_NAME;
    fields = [FIRSTNAME_FIELD, LASTNAME_FIELD, PHONE_FIELD, COMPANY_FIELD, EMAIL_FIELD];

    firstname = FIRSTNAME_FIELD;
    phone = PHONE_FIELD;
    email = EMAIL_FIELD;
    company = COMPANY_FIELD;
    lastname = LASTNAME_FIELD;

    handleSuccess() {
        const toastEvent = new ShowToastEvent({
            title: 'Success',
            message: 'Record saved.',
            variant: 'success'
        });
        this.dispatchEvent(toastEvent);
    }
}
/**
 * Created by ValeryiaStrechyna on 9/18/2023.
 */

import {api, LightningElement} from 'lwc';

export default class Button extends LightningElement {

    @api label;
    @api icon;
    handleButton(event) {
        this.dispatchEvent(new CustomEvent('buttonclick',{
            bubbles: true
        }));
    }

}

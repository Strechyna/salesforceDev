/**
 * Created by ValeryiaStrechyna on 9/13/2023.
 */

import {LightningElement} from 'lwc';

export default class HelloWorld extends LightningElement {

    greeting = 'World';
    changeHandler(event) {
        this.greeting = event.target.value;
    }

}

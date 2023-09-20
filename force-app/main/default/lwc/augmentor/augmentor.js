/**
 * Created by ValeryiaStrechyna on 9/18/2023.
 */

import {LightningElement} from 'lwc';

export default class Augmentor extends LightningElement {
    startCounter = 0;
    handleStartChange(event) {
        this.startCounter = parseInt(event.target.value, 10);
    }

}

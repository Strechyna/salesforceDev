/**
 * Created by ValeryiaStrechyna on 9/15/2023.
 */

import {createElement} from 'lwc';
import HelloWorld from 'c/helloWorld';

describe('c-hello-world', () => {
    afterEach(() => {
        // The jsdom instance is shared across test cases in a single file so reset the DOM
        while (document.body.firstChild) {
            document.body.removeChild(document.body.firstChild);
        }
    });

    it('displays default greeting', () => {
        const element = createAndAppendElement();
        // Verify displayed greeting
        const div = element.shadowRoot.querySelector('div');
        expect(div.textContent).toBe('Hello, World!');
    });

    it('displays updated greeting', () => {
        const element = createAndAppendElement();

        const inputElement = element.shadowRoot.querySelector('lightning-input');
        inputElement.value = 'Test';
        inputElement.dispatchEvent(new CustomEvent('change'));

        const div = element.shadowRoot.querySelector('div');
        // Verify displayed unit status
        return Promise.resolve().then(() => {
            expect(div.textContent).toBe('Hello, Test!');
        });
    });
});

function createAndAppendElement() {
    const element = createElement('c-hello-world', {
        is: HelloWorld
    });
    // Add the element to the jsdom instance
    document.body.appendChild(element);
    return element;
}

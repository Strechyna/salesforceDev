/**
 * Created by ValeryiaStrechyna on 9/11/2023.
 */

trigger RestrictContactByName on Contact (before insert, before update) {

    for (Contact c : Trigger.new) {
        if(c.LastName == 'INVALIDNAME') {	//invalidname is invalid
            c.addError('The Last Name "'+c.LastName+'" is not allowed for DML');
        }

    }

}
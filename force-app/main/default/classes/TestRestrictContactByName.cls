/**
 * Created by ValeryiaStrechyna on 9/11/2023.
 */
@IsTest
public class TestRestrictContactByName {

    @IsTest
    static void whenLastNameIsInvalid_thenReturnError() {
        Contact contact = new Contact(LastName = 'INVALIDNAME');

        Test.startTest();
        Database.SaveResult result = Database.insert(contact, false);
        Test.stopTest();

        System.assert(!result.isSuccess());
        System.assert(result.getErrors().size() > 0);
        System.assertEquals('The Last Name "INVALIDNAME" is not allowed for DML',
                result.getErrors()[0].getMessage());
    }

}
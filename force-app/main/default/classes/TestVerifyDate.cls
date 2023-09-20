/**
 * Created by ValeryiaStrechyna on 9/11/2023.
 */
@IsTest
public class TestVerifyDate {

    private static final Date DATE1 = Date.newInstance(2023, 9, 18);

    @IsTest
    static void whenDate2Within30days_thenReturnDate2() {
        Date date2 = Date.newInstance(2023, 9, 22);
        Date result = VerifyDate.CheckDates(DATE1, date2);

        System.assertEquals(date2, result);
    }

    @IsTest
    static void whenDate2NotWithin30days_thenReturnLastDayOfMonth() {
        Date date2 = Date.newInstance(2023, 10, 22);
        Date lastDayOfMonth = Date.newInstance(2023, 9, 30);
        Date result = VerifyDate.CheckDates(DATE1, date2);

        System.assertEquals(lastDayOfMonth, result);
    }

}
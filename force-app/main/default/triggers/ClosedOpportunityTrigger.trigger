/**
 * Created by ValeryiaStrechyna on 9/11/2023.
 */
trigger ClosedOpportunityTrigger on Opportunity (after insert, after update) {
    List<Task> newTasks = new List<Task>();
    for (Opportunity opportunity : [
            SELECT Id
            FROM Opportunity
            WHERE Id IN :Trigger.new AND StageName = 'Closed Won'
    ]) {
        newTasks.add(new Task(Subject = 'Follow Up Test Task', WhatId = opportunity.Id));
    }

    insert newTasks;
}
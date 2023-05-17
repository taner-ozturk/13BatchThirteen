Notification_Event__e evt = new Notification_Event__e();
evt.Process__c = 'Sektör dedikoduları';
evt.Message__c ='ChatGPT neymiş. Biz IT profesional Olduktan sonra...' ;
EventBus.publish(evt);
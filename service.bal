import ballerina/http;
import ballerina/io; 

public type SMSPayload record {|
    string text;
    string to;
|};
service /sms/rest on new http:Listener(9090) {

    resource function post message(@http:Payload SMSPayload smsPayload)
                                    returns string {
                                        io:println("To : " + smsPayload.to + " -- Message : " + smsPayload.text ); 
                                        return smsPayload.text;

                                        
    }
}

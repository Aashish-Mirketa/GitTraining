public class CallWeb {
    
    public static void postDataToOrgB(String jsonData) {
       
        HttpRequest req = new HttpRequest();
        req.setEndpoint('callout:NameAssign/services/apexrest/Contact'); 
        req.setMethod('POST');
        req.setHeader('Content-Type', 'application/json');
      
        req.setBody(jsonData);
       
        Http http = new Http();
        try {
            HttpResponse res = http.send(req);
            // Check the response status
            if (res.getStatusCode() == 200 || res.getStatusCode() == 201) {
                System.debug('Data posted successfully: ' + res.getBody());
            } else {
                System.debug('Failed to post data: ' + res.getStatusCode() + ' ' + res.getStatus());
                System.debug('Response: ' + res.getBody());
            }
        } catch (Exception e) {
            System.debug('Error: ' + e.getMessage());
        }
    }
}
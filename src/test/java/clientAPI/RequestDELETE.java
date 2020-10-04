package clientAPI;

import javax.ws.rs.client.Entity;
import javax.ws.rs.core.MediaType;
import javax.ws.rs.core.Response;


public class RequestDELETE extends RequestClient {
    @Override
    public ResponseInformation send(RequestInformation request) {
        System.out.println("DELETE "+request.getUrl());

        // si yo quiero cambiar de libreria / framework
        Response response= this.client.target(request.getUrl())
                                      .request(MediaType.APPLICATION_JSON_TYPE)
                                      .headers(request.getHeaders())
                                      .delete();

        ResponseInformation responseInformation = new ResponseInformation(response.readEntity(String.class),
                                                                          response.getStatus());

        response.close();
        return responseInformation;
    }
}

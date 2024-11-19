<%@ WebHandler Language="C#" Class="Handler" %>

using System;
using System.Web;

public class Handler : IHttpHandler {
    
    public void ProcessRequest (HttpContext context) {
        
        byte[] image = (byte[])(context.Session["ImageBytes"]);
        context.Response.ContentType = "image/JPEG";
        context.Response.BinaryWrite(image);
       
    }
 
    public bool IsReusable {
        get {
            return false;
        }
    }

}
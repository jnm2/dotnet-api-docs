<%@ page language="C#"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN"
    "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<script runat="server">
    void Page_Load(Object Sender, EventArgs e)
    {
        CheckBrowserCaps();
    }

    void CheckBrowserCaps()
    {
        String labelText = "";
        System.Web.HttpBrowserCapabilities myBrowserCaps = Request.Browser;
        if (((System.Web.Configuration.HttpCapabilitiesBase)myBrowserCaps).MSDomVersion.Major > 1)
        {
            labelText = "MS DOM Major Version is greater than 1.";
        }
        else
        {
            labelText = "MS DOM Version is less than or equal to 1.";
        }

        Label1.Text = labelText;
    }
</script>

<html xmlns="http://www.w3.org/1999/xhtml" >
<head>
    <title>Browser Capabilities Sample</title>
</head>
<body>
    <form runat="server" id="form1">
        <div>
            Browser Capabilities:
            <p/><asp:Label ID="Label1" Runat="server" />
        </div>
    </form>
</body>
</html>
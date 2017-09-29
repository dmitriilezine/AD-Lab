
This solution deploys one ADDS DC (CONTOSO.COM), and 4 VMs. Three VMs will be joined to the ADDS. 
While you have a choice between Windows Server 2016 and 2012R2, I only tested it with Windows Server 2016.

You can choose which VMs to deploy. You can rerun deployment and additional VMs to it, if the first time did not decide to deploy it. Just make sure to select the same RG.

If you want to populate ADDS with bunch of test user accounts and groups, which have all kind of permission assigned, then select option to extend ADDS via Script. Do not select option to extend via DSC as it does not work.

Make sure to configure Scheduled Shutdown on all VMs. Five VMs will run up compute bill fairly quickly.

DC VM will have Public IP assigned to it. You will need to change NSG rule to allow access to the Public IP. Either do this during initial deployment or later on in NSG. 
Provide your PC Internet IP or * if ok with everyone else trying to get access to it.

Based on azure quick start templates. use it at your own risk.

<a href="https://portal.azure.com/#create/Microsoft.Template/uri/https%3A%2F%2Fraw.githubusercontent.com%2Fdmitriilezine%2FAD-Lab%2Fmaster%2FADLab%2FADLab%2Fazuredeploy.json" target="_blank">
    <img src="http://azuredeploy.net/deploybutton.png"/>
</a>



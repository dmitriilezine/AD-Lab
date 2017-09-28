
This solution deploys one ADDS DC, and 4 VMs. Three VMs will be joined to the ADDS. Tested it with Windows Server 2016 only.
Now you can choose which VMs to deploy. 



<a href="https://portal.azure.com/#create/Microsoft.Template/uri/https%3A%2F%2Fraw.githubusercontent.com%2Fdmitriilezine%2FAD-Lab%2Fmaster%2FADLab%2FADLab%2Fazuredeploy.json" target="_blank">
    <img src="http://azuredeploy.net/deploybutton.png"/>
</a>


Make sure to configure Scheduled Shutdown on all VMs. Five VMs will run up compute bill failry quickly.

Based on azure quick start templates. use it at your own risk.
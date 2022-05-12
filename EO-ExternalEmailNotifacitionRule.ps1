<#
.HAKKIMDA
	Mehmet PATLAKYÝÐÝT | Office Apps & Services MVP
	https://www.parlakyigit.net/
	Twitter:@mparlakyigit 
#>

<#
.NOTE
Bu Bölümde dýþarýdan gönderilen e-postalar için kullanýcýya e-postanýn hemen altýnda uyarý verilir. 
#>

Write-Host "Mehmet PATLAKYÝÐÝT | Office Apps & Services MVP" -ForegroundColor blue
Write-Host "https://www.parlakyigit.net/" -ForegroundColor blue
Write-Host "Twitter:@mparlakyigit" -ForegroundColor blue

Set-ExecutionPolicy Unrestricted
Install-Module -Name ExchangeOnlineManagement
Import-Module ExchangeOnlineManagement
Write-Host "Exchange Online Servisine Baðlanýlýyor." -ForegroundColor Cyan
Connect-ExchangeOnline


$ExtEmailNot = '<table border=0 cellspacing=0 cellpadding=0 align="left" width="100%">
  <tr>
    <td width="100%" cellpadding="7px 6px 7px 15px" style="background:#fff8e5;padding:5pt 4pt 5pt 12pt;word-wrap:break-word">
      <div style="color:#222222;">
        <span style="color:#222; font-weight:bold;">Dikkat:</span>
        Bu e-mail þirket dýþýndan gelmektedir. Göndereni tanýmadýðýnýz ve/veya içeriðinin güvenli olduðunu bilmediðiniz sürece baðlantýlara týklamayýn veya ekleri açmayýn.
      </div>
    </td>
  </tr>
</table>
<br/>'


New-TransportRule -Name "External-Email-Notifacition-Rule" -FromScope NotInOrganization -SentToScope InOrganization -ApplyHtmlDisclaimerLocation Append -ApplyHtmlDisclaimerText $ExtEmailNot -ApplyHtmlDisclaimerFallbackAction Wrap

Write-Host "Transport Rule Baþarýlý bir þekilde oluþturulmuþtur." -ForegroundColor Cyan
<#
.HAKKIMDA
	Mehmet PATLAKY���T | Office Apps & Services MVP
	https://www.parlakyigit.net/
	Twitter:@mparlakyigit 
#>

<#
.NOTE
Bu B�l�mde d��ar�dan g�nderilen e-postalar i�in kullan�c�ya e-postan�n hemen alt�nda uyar� verilir. 
#>

Write-Host "Mehmet PATLAKY���T | Office Apps & Services MVP" -ForegroundColor blue
Write-Host "https://www.parlakyigit.net/" -ForegroundColor blue
Write-Host "Twitter:@mparlakyigit" -ForegroundColor blue

Set-ExecutionPolicy Unrestricted
Install-Module -Name ExchangeOnlineManagement
Import-Module ExchangeOnlineManagement
Write-Host "Exchange Online Servisine Ba�lan�l�yor." -ForegroundColor Cyan
Connect-ExchangeOnline


$ExtEmailNot = '<table border=0 cellspacing=0 cellpadding=0 align="left" width="100%">
  <tr>
    <td width="100%" cellpadding="7px 6px 7px 15px" style="background:#fff8e5;padding:5pt 4pt 5pt 12pt;word-wrap:break-word">
      <div style="color:#222222;">
        <span style="color:#222; font-weight:bold;">Dikkat:</span>
        Bu e-mail �irket d���ndan gelmektedir. G�ndereni tan�mad���n�z ve/veya i�eri�inin g�venli oldu�unu bilmedi�iniz s�rece ba�lant�lara t�klamay�n veya ekleri a�may�n.
      </div>
    </td>
  </tr>
</table>
<br/>'


New-TransportRule -Name "External-Email-Notifacition-Rule" -FromScope NotInOrganization -SentToScope InOrganization -ApplyHtmlDisclaimerLocation Append -ApplyHtmlDisclaimerText $ExtEmailNot -ApplyHtmlDisclaimerFallbackAction Wrap

Write-Host "Transport Rule Ba�ar�l� bir �ekilde olu�turulmu�tur." -ForegroundColor Cyan
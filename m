Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C0E731B8E30
	for <lists+ath10k@lfdr.de>; Sun, 26 Apr 2020 11:24:12 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:Date:Message-ID:References:To:From:Subject:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=bhO2AvnZcliV4zzD11bwUIjtQDegCI8jS6jPuuBXvS4=; b=BBUXWz+1D2QM9+BSpIXIk9mNv
	+VSTGcxM8RqQJjLwRwOv0ZjkO6bSIX3zZ8jqpY1dJFKCyqmpll7VMqm//z7/Z0hgl2cy+qb7b3Ivx
	BIq4lgwM7xN/g0bUSRob+LeMoXdOE39tyqiUJQHONraw1HWBN1E/uCG61lBdYuuqGLg83QSulG8AL
	cppNC5gIJCeB8m31LEAs43qJRsHZjZJlwriVjw6gZ+GySTajgE0snfuvUBrXDpYmlQalnAhwi0CMx
	FJfMxE/ekW+v4U9hEcwoaCyVh1G76bf5+nEW6HhbL/Xt7ZknZZit1u2M90kNL0/lzt0WEBJdyEVVV
	P0QbO92bQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jSdW8-0005tx-FE; Sun, 26 Apr 2020 09:24:04 +0000
Received: from postina.fi.infn.it ([2001:760:421a:1::62])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jSdW3-0005sm-Jx
 for ath10k@lists.infradead.org; Sun, 26 Apr 2020 09:24:02 +0000
Received: from localhost (localhost [127.0.0.1])
 by postina.fi.infn.it (Postfix) with ESMTP id B188D811E0;
 Sun, 26 Apr 2020 11:14:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=fi.infn.it; s=mail;
 t=1587892463; bh=hZ0w9fJxDkH9epP7KjYvBOE30MHgisQXmk3oN9fGdLo=;
 h=Subject:From:To:Cc:References:Date:In-Reply-To:From;
 b=D8A3mmJjUVuCtr80FFESTk6kUkOJWn+ON64TxEJtlLMy4q6MgmW4eb+/SzeH88NmU
 lIZqoy5PTH8Kh9n6e0uL1AvguTCMWHg1IlHEkcVkqzFgU2BGqvk4dI+ptu8ykb8W8r
 AtfmXuTzm2c7nCUAX8kA/7jMVjyigBBbDxb37km8tJndxo4gyJTRZ+eJU7KsmExyMp
 z2++u4af/v66y/EmH81BGNxVKVD4GgY6c/rVXqBI0nJOnJrhrhQnM5Yva0TjwTzQob
 DEmknyibhWXTAyY7TnaXztTG42RRDd8+aEItAzOuUbL9sPRKUxBqNLTKfxkYHm4Ard
 TbLONvXUkwusQ==
X-Virus-Scanned: Debian amavisd-new at fi.infn.it
Received: from postina.fi.infn.it ([127.0.0.1])
 by localhost (postina-02.fi.infn.it [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id hdRJhICHHIpq; Sun, 26 Apr 2020 11:14:23 +0200 (CEST)
Received: from postino.fi.infn.it (postino.fi.infn.it [192.84.145.9])
 by postina.fi.infn.it (Postfix) with ESMTP;
 Sun, 26 Apr 2020 11:14:23 +0200 (CEST)
Received: from [192.168.1.2]
 (host61-68-dynamic.59-82-r.retail.telecomitalia.it [82.59.68.61])
 by postino.fi.infn.it (Postfix) with ESMTPSA id 080CC9FBFC;
 Sun, 26 Apr 2020 11:14:22 +0200 (CEST)
Subject: Re: Killer WiFi card keeps disconnecting due to latest firmware
From: Nicola Mori <mori@fi.infn.it>
To: Wen Gong <wgong@codeaurora.org>, Kalle Valo <kvalo@codeaurora.org>
References: <b07a7ea1-7ab2-8ce3-95d7-6726e7708749.ref@aol.com>
 <b07a7ea1-7ab2-8ce3-95d7-6726e7708749@aol.com>
 <87ftd3r4lt.fsf@kamboji.qca.qualcomm.com>
 <87k128ng9e.fsf@kamboji.qca.qualcomm.com>
 <57cd41942128e71f971b132df3dc403a@codeaurora.org>
 <cd1469bf-452c-5819-b5c2-b1ff8c48638f@aol.com>
Message-ID: <6836f341-1d0f-671d-b2d8-99cc4315a637@fi.infn.it>
Date: Sun, 26 Apr 2020 11:14:21 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.7.0
MIME-Version: 1.0
In-Reply-To: <cd1469bf-452c-5819-b5c2-b1ff8c48638f@aol.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200426_022400_161692_755FD173 
X-CRM114-Status: GOOD (  13.81  )
X-Spam-Score: -0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-BeenThere: ath10k@lists.infradead.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: <ath10k.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/ath10k>,
 <mailto:ath10k-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/ath10k/>
List-Post: <mailto:ath10k@lists.infradead.org>
List-Help: <mailto:ath10k-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/ath10k>,
 <mailto:ath10k-request@lists.infradead.org?subject=subscribe>
Cc: ath10k@lists.infradead.org
Content-Type: multipart/mixed; boundary="===============8139525739474700800=="
Sender: "ath10k" <ath10k-bounces@lists.infradead.org>
Errors-To: ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org

This is a cryptographically signed message in MIME format.

--===============8139525739474700800==
Content-Type: multipart/signed; protocol="application/pkcs7-signature"; micalg=sha-256; boundary="------------ms080506010203020500060503"

This is a cryptographically signed message in MIME format.

--------------ms080506010203020500060503
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: quoted-printable

Sending again from a different mail account due to multiple errors in=20
previous attempts to reply to the list from my original account.

Wen, see below for the configuration of my AP.

Sorry for the noise,

Nicola

On 2020-04-23 19:54, Nicola Mori wrote:
> Hi Wen, thanks for replying. I'm using an AP provided by my ISP (TIM,=20
> Italy) and it's a bit hard to understand the producer and the model. Th=
e=20
>  =C2=A0web interface says:
>=20
> Model: AGWIFIN
> Hardware version: L1s
> Firmware: AGAWI_4.0.7
>=20
> About the configuration, I use:
>=20
> - Channel: 6
> - Channel width: Auto 20 MHz / 40 MHz
> - SSID: TIM-67287725
> - authentication: WPA-PSK TKIP-AES 256 bit
> - encryption key: Wifi@Pepita2013
>=20
> As for the dhcp lease time I was not able to recover it from the router=
=20
> settings (maybe this basic model doesn't allow for setting it) but from=
=20
> the logs in my pc I got this:
>=20
> apr 23 15:01:30 stryke dhcpcd[34040]: wlan0: leased 192.168.1.2 for=20
> 21600 seconds
>=20
> I don't know if the above information is what you were after or if it i=
s=20
> sufficient, in case just let me know.
> Thanks again,
>=20
> Nicola
>=20
> On 23/04/20 11:14, Wen Gong wrote:
>> On 2020-04-22 15:14, Kalle Valo wrote:
>>> Kalle Valo <kvalo@codeaurora.org> writes:
>>>
>>>> Nicola Mori <nicolamori@aol.com> writes:
>>>>
>>>>> Hi, I have an issue with the WiFi card in my laptop, that keeps
>>>>> disconnecting from the network in a strange way: randomly every 1-2=

>>>>> hours I can't access web pages or even ping the gateway, but existi=
ng
>>>>> connections (like existing ssh sessions or Zoom videoconferences)
>>>>> continue to work. The only solution is to restart the network
>>>>> connection.
>> Nicola Mori,
>> Could you tell us the AP model and AP configure(WPA-PSK/WEP...., ssid =

>> name/password...,dhcp timeout period...)?
>> We prepare to try it.


--------------ms080506010203020500060503
Content-Type: application/pkcs7-signature; name="smime.p7s"
Content-Transfer-Encoding: base64
Content-Disposition: attachment; filename="smime.p7s"
Content-Description: S/MIME Cryptographic Signature

MIAGCSqGSIb3DQEHAqCAMIACAQExDzANBglghkgBZQMEAgEFADCABgkqhkiG9w0BBwEAAKCC
CjEwggUAMIID6KADAgECAhADS+4XH7fhBjcv1HJCQL0qMA0GCSqGSIb3DQEBCwUAMGUxCzAJ
BgNVBAYTAlVTMRUwEwYDVQQKEwxEaWdpQ2VydCBJbmMxGTAXBgNVBAsTEHd3dy5kaWdpY2Vy
dC5jb20xJDAiBgNVBAMTG0RpZ2lDZXJ0IEFzc3VyZWQgSUQgUm9vdCBDQTAeFw0xNDExMTgx
MjAwMDBaFw0yNDExMTgxMjAwMDBaMGkxCzAJBgNVBAYTAk5MMRYwFAYDVQQIEw1Ob29yZC1I
b2xsYW5kMRIwEAYDVQQHEwlBbXN0ZXJkYW0xDzANBgNVBAoTBlRFUkVOQTEdMBsGA1UEAxMU
VEVSRU5BIFBlcnNvbmFsIENBIDMwggEiMA0GCSqGSIb3DQEBAQUAA4IBDwAwggEKAoIBAQDG
pbsfVYL0pTRyFHJlm1/V6qBo2JuCiU9TYpx7jM4O2tQyDq8bjMum69vg6wM0lMGHflMgqB75
GxeKfQFmEldoXi2cLishqFUvU2cJeM3SaRsLk2BsuCgTzh9NsYgmrUX60KHOq7eYKVZxbPFW
JF2nMOBuMXNu2qBXTGSLeLXHnNvG3r7TLzGg1oA5teAxQE6Eo8ySSeIXbP7wZB76urwlh51P
IbrJZjkDjdQVELh7OlTP1WO6T/Hf6BsEfeFcpoa1e+MW/lw0VetTPPHQ15HYKYP2WYohHxzD
iC+QUwE7UZVBlp9cXIpwHuDzSibc5RG3z0n/j2SQCx0Dk5FMAUErAgMBAAGjggGmMIIBojAS
BgNVHRMBAf8ECDAGAQH/AgEAMA4GA1UdDwEB/wQEAwIBhjB5BggrBgEFBQcBAQRtMGswJAYI
KwYBBQUHMAGGGGh0dHA6Ly9vY3NwLmRpZ2ljZXJ0LmNvbTBDBggrBgEFBQcwAoY3aHR0cDov
L2NhY2VydHMuZGlnaWNlcnQuY29tL0RpZ2lDZXJ0QXNzdXJlZElEUm9vdENBLmNydDCBgQYD
VR0fBHoweDA6oDigNoY0aHR0cDovL2NybDMuZGlnaWNlcnQuY29tL0RpZ2lDZXJ0QXNzdXJl
ZElEUm9vdENBLmNybDA6oDigNoY0aHR0cDovL2NybDQuZGlnaWNlcnQuY29tL0RpZ2lDZXJ0
QXNzdXJlZElEUm9vdENBLmNybDA9BgNVHSAENjA0MDIGBFUdIAAwKjAoBggrBgEFBQcCARYc
aHR0cHM6Ly93d3cuZGlnaWNlcnQuY29tL0NQUzAdBgNVHQ4EFgQU8CHpSXdzn4WuGDvoUnAU
Bu1C7sowHwYDVR0jBBgwFoAUReuir/SSy4IxLVGLp6chnfNtyA8wDQYJKoZIhvcNAQELBQAD
ggEBADrCGyv+Y967YbS5R6j8fAWxJiAiUZvIPfn1xVgesF6jspwCQY8xGn/MG04d+Jh97I8I
/Xfx29JEEFq2rQmw4PxiO9RiDZ7xoDxNd4rrRDR7jrtOKQP8J+o+ah0vSOP62hnD/zPS7NRM
tIyVS2G277KAL5fIR62ngr984fmJghDv0bsjGAmeu3EP0xhUsDJT61IoAGoKBnxBPAeg3WXs
dSm4Gn7btyvakeyFtYebr2KmOBSa28PRqGSDur56aZhJoM2eMzc6prmvGwwtAzRsc5t2OsKR
uHWV6O3anP2K27jGZR2bi1VX1NQUvIbpVNTuwjm+XcZtsa/AAJF9KGkEseAwggUpMIIEEaAD
AgECAhADSXyQPtAXdHWcqsu2RrR+MA0GCSqGSIb3DQEBCwUAMGkxCzAJBgNVBAYTAk5MMRYw
FAYDVQQIEw1Ob29yZC1Ib2xsYW5kMRIwEAYDVQQHEwlBbXN0ZXJkYW0xDzANBgNVBAoTBlRF
UkVOQTEdMBsGA1UEAxMUVEVSRU5BIFBlcnNvbmFsIENBIDMwHhcNMTgxMDI0MDAwMDAwWhcN
MjExMDI0MTIwMDAwWjBmMQswCQYDVQQGEwJJVDERMA8GA1UEBxMIRnJhc2NhdGkxLjAsBgNV
BAoTJUlzdGl0dXRvIE5hemlvbmFsZSBkaSBGaXNpY2EgTnVjbGVhcmUxFDASBgNVBAMTC05p
Y29sYSBNb3JpMIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAthmLBanyOseGHXae
Q9/obZvSKr/IUoFMtnauIBdophhp8S8/RBQ/6YSYZgAc8Oy6mJJwsCAyC3a7i2ss3RiioicZ
ipMhc431x5RlvDrUnhpMDQuuBrxWJkpS/wjfgTMFxp5A+Savz5x4yNKoxijsNRli67mtgXOn
ppX39wGIURuhIJXljdfmK5E8jSKwYhxi8bX1BiVDGy0hE3IYTReGfzwWtQDgtYywYaeMqS3v
JU3ys9i2wKsA2kxs/oixaEh6Vax+7o3lBcGil53cxtVWCmOTSKaHqo5x/eIjjIwr8Jzulyzp
9oRVZTOD4EX5hv0Kv5SNbGONWLgUALTxRKf5JQIDAQABo4IBzjCCAcowHwYDVR0jBBgwFoAU
8CHpSXdzn4WuGDvoUnAUBu1C7sowHQYDVR0OBBYEFKu9ob1iJ24nS7qhIhRvKP3xZkGXMAwG
A1UdEwEB/wQCMAAwGgYDVR0RBBMwEYEPbW9yaUBmaS5pbmZuLml0MA4GA1UdDwEB/wQEAwIF
oDAdBgNVHSUEFjAUBggrBgEFBQcDAgYIKwYBBQUHAwQwQwYDVR0gBDwwOjA4BgpghkgBhv1s
BAECMCowKAYIKwYBBQUHAgEWHGh0dHBzOi8vd3d3LmRpZ2ljZXJ0LmNvbS9DUFMwdQYDVR0f
BG4wbDA0oDKgMIYuaHR0cDovL2NybDMuZGlnaWNlcnQuY29tL1RFUkVOQVBlcnNvbmFsQ0Ez
LmNybDA0oDKgMIYuaHR0cDovL2NybDQuZGlnaWNlcnQuY29tL1RFUkVOQVBlcnNvbmFsQ0Ez
LmNybDBzBggrBgEFBQcBAQRnMGUwJAYIKwYBBQUHMAGGGGh0dHA6Ly9vY3NwLmRpZ2ljZXJ0
LmNvbTA9BggrBgEFBQcwAoYxaHR0cDovL2NhY2VydHMuZGlnaWNlcnQuY29tL1RFUkVOQVBl
cnNvbmFsQ0EzLmNydDANBgkqhkiG9w0BAQsFAAOCAQEAp35SPNmf6IuXe6U4lohIoBZ1Y1zM
yrFsh4ykBpzieyfikWwxNmzAxDsRVVDmqn6YHKF3K2kPa7Kff2DPRLyQmlXeCShDueQryxNQ
HOWctA+GZ0HTzYmhJ8sb9fW3lRJqvUQmEbGee91wS+NKJfmjm3WFHz8XhHpMRr46dJD7VwEY
8Q04xvekDGn2Ctx1I3mKWxT2z7FYsdP7Hr+UQ3qeHL9nZvZBRLby3vPcevZRB6ZZDeox8v04
6LbXA0FD9zDV3rrEjKXYgsO7kEff/D7AQYQdNO+C2KDFLSelAr9D2LwHfNsPQqPkwzWQguJq
A44vvK5IVP68nWWNYIpa3I3lgDGCA6MwggOfAgEBMH0waTELMAkGA1UEBhMCTkwxFjAUBgNV
BAgTDU5vb3JkLUhvbGxhbmQxEjAQBgNVBAcTCUFtc3RlcmRhbTEPMA0GA1UEChMGVEVSRU5B
MR0wGwYDVQQDExRURVJFTkEgUGVyc29uYWwgQ0EgMwIQA0l8kD7QF3R1nKrLtka0fjANBglg
hkgBZQMEAgEFAKCCAfcwGAYJKoZIhvcNAQkDMQsGCSqGSIb3DQEHATAcBgkqhkiG9w0BCQUx
DxcNMjAwNDI2MDkxNDIxWjAvBgkqhkiG9w0BCQQxIgQg2o62HYx627d7W16a6DgIBzVeR95j
bBDNFNevRh1xkTkwbAYJKoZIhvcNAQkPMV8wXTALBglghkgBZQMEASowCwYJYIZIAWUDBAEC
MAoGCCqGSIb3DQMHMA4GCCqGSIb3DQMCAgIAgDANBggqhkiG9w0DAgIBQDAHBgUrDgMCBzAN
BggqhkiG9w0DAgIBKDCBjAYJKwYBBAGCNxAEMX8wfTBpMQswCQYDVQQGEwJOTDEWMBQGA1UE
CBMNTm9vcmQtSG9sbGFuZDESMBAGA1UEBxMJQW1zdGVyZGFtMQ8wDQYDVQQKEwZURVJFTkEx
HTAbBgNVBAMTFFRFUkVOQSBQZXJzb25hbCBDQSAzAhADSXyQPtAXdHWcqsu2RrR+MIGOBgsq
hkiG9w0BCRACCzF/oH0waTELMAkGA1UEBhMCTkwxFjAUBgNVBAgTDU5vb3JkLUhvbGxhbmQx
EjAQBgNVBAcTCUFtc3RlcmRhbTEPMA0GA1UEChMGVEVSRU5BMR0wGwYDVQQDExRURVJFTkEg
UGVyc29uYWwgQ0EgMwIQA0l8kD7QF3R1nKrLtka0fjANBgkqhkiG9w0BAQEFAASCAQCiqhNk
+7TZFmzxF+6Cm29t1zte8uknL7ogMLG4U7sUgjvq5J7gSKodR1fxjuV35XoFXoTs3ZV0HOCG
0Qv7R3Rv3XHgQH1zdoq2j/iiJc9ewyhC4QWwCTAeAm+IUA5CQG2I5R7OMH/FWh6IzzV52HPK
KArw/VM09Yu9OUzwQYOZ3ZZD3hsiOgp47+lJDkNBjajetOW0R79EUvUOnmohSDPhb88F4ZXE
OZ8GbPePEgxIfjtq1WmVmZTYdFz5GQ8+BrZETe8/VfoDw4XYBHFmDaq1bkSpOevvV8IpzSGQ
XuDOIsoWVvmJD4cxkEWvs+JT37adn2iEckwFbmkIZ2T1ChX0AAAAAAAA
--------------ms080506010203020500060503--


--===============8139525739474700800==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k

--===============8139525739474700800==--


Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 93155B6406
	for <lists+ath10k@lfdr.de>; Wed, 18 Sep 2019 15:07:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:To:From:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=3S7JfVrMPXyEprlYD1gp+W5v53uC90mQrKap8bbxpnk=; b=LVMA+xIdNhC+4cyRHzk65wQDy
	z8H9c69S8p0ZsHaaUKp0wig3sC6DAYP3S4SnHnt0iyveFcEdksc7Sg5QRFytULZIZaAbUrAPUMWft
	Eh2R1JxKLDTe/WxffNNaQNaYjT2NdL6xHNtckNJkFmMGBpcoyOT/E2rFOve+S0QChiT4AtIl6y7Ra
	7evM3c+QJhpADFWU1V+7r2cULRcG7QBx7hmzYOxCkHDtJ1ygRpwRnr/oHJB7oagb1MlM2REdgpc6y
	+gTD4ld2IqcWg3U7HzfXvqrf26eK+O9OfuDoFLwlKIunb9/3LIefH4Rr12X8uhOoOIZ1l4aPo3MiX
	Sa+AX+6bA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iAZgE-0000KZ-2R; Wed, 18 Sep 2019 13:07:34 +0000
Received: from dvalin.narfation.org ([213.160.73.56])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iAZg5-0000JN-CM
 for ath10k@lists.infradead.org; Wed, 18 Sep 2019 13:07:27 +0000
Received: from bentobox.localnet
 (p200300C5971113F0000000000000063E.dip0.t-ipconnect.de
 [IPv6:2003:c5:9711:13f0::63e])
 by dvalin.narfation.org (Postfix) with ESMTPSA id F2DD31FEDA;
 Wed, 18 Sep 2019 12:37:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=narfation.org;
 s=20121; t=1568810269;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=7mkuvuGCv8D1pI1RqMuReknb7eYubYgm6b4koTPPIwo=;
 b=0a17J9XEAFKruUEdzu1G9MoVD1TDC4+hONx+qBtTK01hrtniUJx/1BZdGwFJQ7eh8yGL92
 DuhLFWE4ZYh2rIDwgysKdGveZPvZjYqLHdgmdiuLuTlXka/IprbhQ13Tw5GswqUGcL8zy7
 JiGnSwnmSWTBGuSXkjsn2ZfGiApdu7I=
From: Sven Eckelmann <sven@narfation.org>
To: Ben Greear <greearb@candelatech.com>
Subject: Re: [PATCH] cfg80211: Add cumulative channel survey dump support.
Date: Wed, 18 Sep 2019 15:07:11 +0200
Message-ID: <9396620.6V9WzEIOqW@bentobox>
In-Reply-To: <b24ec622-8510-d8e4-bbc4-86a34c1dd32b@candelatech.com>
References: <1526980556-26707-1-git-send-email-vnaralas@codeaurora.org>
 <18458963.ukFM9YuvQx@bentobox>
 <b24ec622-8510-d8e4-bbc4-86a34c1dd32b@candelatech.com>
MIME-Version: 1.0
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=narfation.org; 
 s=20121; t=1568810269;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=7mkuvuGCv8D1pI1RqMuReknb7eYubYgm6b4koTPPIwo=;
 b=e14pZy+D0tc6yal2HpZP3yxn9yljSA5jnrPSDFr+73/6trEFVGCNEziUEunzxHhRuq8bM5
 nmHcCuHpU0sE6A+JI197y02IfZRatO9CzJ/07DecdmCP8sZkUbN5ef9bmgp1707ZfIIqiG
 PXam7At73G+qLnT8gevKKtGFpbGMNvo=
ARC-Seal: i=1; s=20121; d=narfation.org; t=1568810269; a=rsa-sha256; cv=none;
 b=UKGw/dzrqFKv8jU5ewM/ak+/qaodMTEDzUf4MGm92QG6iSx6Kui+J6jL5E/v3aP23rdKNR
 SsxaHQbeBvYRq/yqyRNIW8ceLIHQnYOY7as3IHK40HSldv6BcHC4owkgcjHmseZQ7ap/mf
 Yd7hU1juunZrQCwRmvKUiicdZun2QF8=
ARC-Authentication-Results: i=1; dvalin.narfation.org;
 auth=pass smtp.auth=sven smtp.mailfrom=sven@narfation.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190918_060725_733780_4EA2CBF4 
X-CRM114-Status: GOOD (  11.27  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [213.160.73.56 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: sw@simonwunderlich.de, vnaralas@codeaurora.org,
 linux-wireless@vger.kernel.org, ath10k@lists.infradead.org,
 slakkavalli@datto.com, Johannes Berg <johannes@sipsolutions.net>
Content-Type: multipart/mixed; boundary="===============0746079279454281683=="
Sender: "ath10k" <ath10k-bounces@lists.infradead.org>
Errors-To: ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org

--===============0746079279454281683==
Content-Type: multipart/signed; boundary="nextPart32686119.arC66jU3Z4"; micalg="pgp-sha512"; protocol="application/pgp-signature"

--nextPart32686119.arC66jU3Z4
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

On Wednesday, 18 September 2019 14:58:46 CEST Ben Greear wrote:
[...]
> > So as Ben Greear said, the 10.4 firmware version is fixed and 10.2.* (for
> > the wave-1 cards) is still broken and we need a QCA firmware engineer to
> > fix it. Or to work around it by polling every couple of seconds and
> > manually do the cleanup of the values from the firmware.
> 
> Have you tried probing very fast, like every 100ms, to see if returned values
> look sane?  I seem to recall that there was some firmware issue with this, like
> it only updates internal counters every second or so.
> 
> Polling slow would have the same off-by-a-second's-worth-of-data, but you would not
> easily notice it at slower polling intervals.

Yes, I've polled at ~100ms intervals at some point. And it looked like I get 
most of the time only 0 values (for everything - including noisefloor) from 
the firmware when I do this. And the actual values are only send every second 
or so (I didn't actual make precise calculations here).

I have now prepared a test patch [1] to get the data every 10 seconds. This 
was a compromise between having useful information over time and the 
overflowing problem. While it is not the perfect solution (QCA *cough*), it is 
at least more bearable for me.

Kind regards,
	Sven

[1] https://patchwork.kernel.org/patch/11150289/
--nextPart32686119.arC66jU3Z4
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part.
Content-Transfer-Encoding: 7Bit

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEF10rh2Elc9zjMuACXYcKB8Eme0YFAl2CK/8ACgkQXYcKB8Em
e0Y94hAA0/ROFoGwOKnIIlCRxVRpa4GmCdYUKUYB32Dk1Pnm4atB6xdzT4bTk9+Y
TY/0AcQ0ycYSgw/T52kiyfGS79WSsUzce6oHpy7LD/fBr9QF2WBp66N5Ydw+VpK6
egcp31kHvTznCasXUbIejdlRBgEXyDPfpWuhobGrcRLjg8AZNsj/4fFtWdTCEeJn
u/2o+AAtK2CkSH5cyWf6oDF1f3essL2GiOl2/6fbo7dfvbGYhQ8BtKrPzWyiNVDs
Saxym1JX4lI0thTa/NB6g+UZzDeEpR6Kvcj0X2M9aqH69bckgxQoakRo245Z5/TH
UYO9b6OtM52ZP93s6AXd/grSi14EbrY92Yap4LQT1Rf7ldOJnPlS8ugPKKEuUZu+
CcsPfQHB8CHLe0Zi8mmkS91/ox7TUyPxtC/uXrb8L5Hesj5BiLL2rF26HQnzGWvI
E7qF48nx2Q4xNpe5nhhD8wv3KuJwkG1T0iXxBf9UNdlCqnNsWBwxHYiX835RH/MO
tj28Kn5yd00lSin2Yf8A7V6EDShmb8OSdVrHdYV9MqPnNnvp8qXBITPnMW1l1gzh
VOVqYDUxdaa/DZUnVtlFzsmzNWGhFlS1jtOrPZcGzkYmkLvw48PO48OBct8j1EpR
IbJCYGMSFNbkvCJblMrcjX+c6ZVJbP6ckYyt0GJJkjnMDofOGSc=
=SJ3l
-----END PGP SIGNATURE-----

--nextPart32686119.arC66jU3Z4--





--===============0746079279454281683==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k

--===============0746079279454281683==--





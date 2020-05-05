Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F16051C4FB5
	for <lists+ath10k@lfdr.de>; Tue,  5 May 2020 09:55:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:To:From:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=mSL5rxSuoqkMGyRGHlg6R4pxbcdqcTp++sYGgciMhBQ=; b=gBzWSWLjZQNzHUmxgOmX8LuDI
	ece6s22rjCSBBwFm2cZUDogU7OOlMkmoXpYpdAu2BNxsMHkeXyyHWulaxZYwkaUMF21n+U2brDrOM
	Clb3Q6wNZbdBIftH1vFrZHa4qd4GKtmiNelHFwOaSC2ohd5dRYMQ3kFU8yiwvarvruhNlTVvtbcUK
	hu1oiJcwd7Lo+s0fdaWP3pFFfvY2VE2hZnwHu6iFIo8gb/wmc/eflirXbMPmck0lg5slZUHwPEq3P
	/JAde2OUVJ1MuWtTOVWtsx7nQhLNae+cdTQ8xfw8Kjy7tkLnFECfbgNWHg5d4ejMorScOyZgR0+sI
	Kg2XcsggA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jVsQ9-0005L3-Jm; Tue, 05 May 2020 07:55:17 +0000
Received: from dvalin.narfation.org ([213.160.73.56])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jVsQ5-0005KN-RV; Tue, 05 May 2020 07:55:15 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=narfation.org;
 s=20121; t=1588665310;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=6eitsOTt2uKwhWLjUuCnARFT8tInxkqJma7dnpaVIGc=;
 b=BuZPKOClqfBmnOGY/DG0zi1WB3VCNcOJQFiVA7DA23qYylHvAdlQrMZ4muCtbk7bbjAQ2m
 8yAzEVf1MJRrYP2j5dL+VqQdnNUqiMoZ7cR7TcUa3Io7qKrKQGwQGEvhBGdVbx+Mrba0H7
 kCNhxQ6hKTnPwWwsti0nECmjJm4BrrY=
From: Sven Eckelmann <sven@narfation.org>
To: ath11k@lists.infradead.org
Subject: Re: [PATCH 1/2] ath10k: use cumulative survey statistics
Date: Tue, 05 May 2020 09:55:08 +0200
Message-ID: <5194473.9tBAi8KRnL@bentobox>
In-Reply-To: <1845755.pTfhzBy2qg@bentobox>
References: <20200504154122.91862-1-markus.theil@tu-ilmenau.de>
 <2335594.cnkAv9Vaq7@bentobox> <1845755.pTfhzBy2qg@bentobox>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200505_005514_052749_8E5DED6B 
X-CRM114-Status: UNSURE (   3.42  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [213.160.73.56 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Rajkumar Manoharan <rmanohar@codeaurora.org>,
 linux-wireless-owner@vger.kernel.org, linux-wireless@vger.kernel.org,
 Markus Theil <markus.theil@tu-ilmenau.de>, ath10k@lists.infradead.org,
 kvalo@codeaurora.org
Content-Type: multipart/mixed; boundary="===============6368435910604188531=="
Sender: "ath10k" <ath10k-bounces@lists.infradead.org>
Errors-To: ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org

--===============6368435910604188531==
Content-Type: multipart/signed; boundary="nextPart1919120.v24dTSXcW5"; micalg="pgp-sha512"; protocol="application/pgp-signature"

--nextPart1919120.v24dTSXcW5
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

On Tuesday, 5 May 2020 09:49:46 CEST Sven Eckelmann wrote:
[...]
> See also https://patchwork.kernel.org/patch/9701459/

And I completely forgot about this one: https://patchwork.kernel.org/patch/10417673/

Kind regards,
	Sven
--nextPart1919120.v24dTSXcW5
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part.
Content-Transfer-Encoding: 7Bit

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEF10rh2Elc9zjMuACXYcKB8Eme0YFAl6xG9wACgkQXYcKB8Em
e0YkJhAAxZ5ZkAftBeyPFhdZ1oSQ3Rtt2EfbS9lOfQLqGW33memF3NQ56Rf/Seap
Oqz9MiJ2ix+6iI6GoOEU8th59vL7Ve5yjNxp46G4OYzYjjtaQ6bd3ZaNYq6E9Cx/
VAEeKFTkmNyuglwj+xradnU31JN4bMbsDm0p57c3A1YTExhtbPud+e2SDXxrjww0
FBWPN625g7lgSMWLpVoaTRnFaXRVJ5Fq5m00BpFEDcTZieiTmfwYpDswveU2Ei3c
UXUfbQ88zoCh0OW3gvHT0aTjk76Atgnk/KFWVVeyZuV0whp94CatyuZem0BEMGII
DqVJEm9TEHVuxzZN4e+MK8exIF209HLa4ReX6KHdUBgYPAwo+Nm0ZWMd/BWrvJi6
BF5k6pEXwevLLkPFcdOPG13fWF2ExMxlEztOY3yo9pyk7CtZmZECMh/0KYrNZe1z
YqxGrnu5Qd9mzRI5q/5PtXf4Ni9z9aEwkVJaQSzO/fId64ysxYrnmGNvc+hbFnLr
iI/x5mp7CpJVa5F1qg1X+9hwouQi7g756A9pnY2O7fVvJzYG0GmsH2KUt6k7SJSH
vb7aRjxpfk4DKm6P6o/u2bgIUU6J8m8IyJI5evkKbX4YbhZsoea7egLQmG0rYUMR
kMNymnkhCDraj46HlOHCWRvbZL+v6hehB1jBIDvjIGLcSEfUZ84=
=93bm
-----END PGP SIGNATURE-----

--nextPart1919120.v24dTSXcW5--





--===============6368435910604188531==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k

--===============6368435910604188531==--





Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 636D21C4EB6
	for <lists+ath10k@lfdr.de>; Tue,  5 May 2020 09:01:51 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:To:From:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=KZymV1xV10CNxLIasIG4e2kpNIvhcnSBV3nQyab59Bs=; b=VhzWN8FZyvlT0pKpR4fnHifk2
	shu5cgM/e5cQDsCPUeC4H134TNbIjJ1Snu41iNROcUuc3j+C2tSv9c0FJ7dDWdTX3h2S64qyEwv0w
	SzwH92er/DpKAGSOyroJj9E/ozu10C99qhGTN9rlIrgVznMQCX1JCwha65CCBaQ/9TDNY/2A1A09T
	IiE979po5h2VU2tfVHKhBImYSJkrQLOfueB2dH2UaWZHvJrQAy8r7dzmvcsrIatHufNtX4yrcXxlA
	n4QoW/5tWnPIjoTnNZfrMUvcAPSX5uS++JmHKZ6dozyCBaLzWxo7qnXDlPJ7Y/7mnbJzveRttwbJN
	0ISpTkuHQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jVraO-0006Xh-4G; Tue, 05 May 2020 07:01:48 +0000
Received: from dvalin.narfation.org ([213.160.73.56])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jVraI-0006X1-6F; Tue, 05 May 2020 07:01:44 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=narfation.org;
 s=20121; t=1588662099;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=flt+0nv/wY6EtEjl/gozth8PAjTpWfBxfoBL5ar5q9U=;
 b=V72ELWoX7v6oOmg11Q+GW046l9XV3fOKF/Kc0iysoJ5BSdRQzs1zpqwFfbocOoMIEdVthB
 s0DO4LzEplLZRtfnwL3PCyObY/JYfeCZN67NReUgGdHghALOFYvQGBa2m7KVJE5SQ2J7rK
 6E+WDW99b0X8rflgSPj8VfvtCuCR7Sk=
From: Sven Eckelmann <sven@narfation.org>
To: ath11k@lists.infradead.org
Subject: Re: [PATCH 1/2] ath10k: use cumulative survey statistics
Date: Tue, 05 May 2020 09:01:34 +0200
Message-ID: <2335594.cnkAv9Vaq7@bentobox>
In-Reply-To: <f772b7bf0eac31516a4e28719c1938f2@codeaurora.org>
References: <20200504154122.91862-1-markus.theil@tu-ilmenau.de>
 <f772b7bf0eac31516a4e28719c1938f2@codeaurora.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200505_000142_388287_203AD283 
X-CRM114-Status: UNSURE (   6.25  )
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
Content-Type: multipart/mixed; boundary="===============1572918091306926223=="
Sender: "ath10k" <ath10k-bounces@lists.infradead.org>
Errors-To: ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org

--===============1572918091306926223==
Content-Type: multipart/signed; boundary="nextPart2406179.bnRGkfsQJl"; micalg="pgp-sha512"; protocol="application/pgp-signature"

--nextPart2406179.bnRGkfsQJl
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

On Tuesday, 5 May 2020 01:46:12 CEST Rajkumar Manoharan wrote:
[...]
> IIRC this was fixed a while ago by below patch. Somehow it never landed 
> in ath.git.
> Simple one line change is enough.
> 
> https://patchwork.kernel.org/patch/10550707/

Because it doesn't work for everything. Remember that 10.2.4.x overflows all 
the time (14-30s) because it used only 31 bit for the counters.

But feel free to point me to the firmware version which fixed this.

Kind regards,
	Sven
--nextPart2406179.bnRGkfsQJl
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part.
Content-Transfer-Encoding: 7Bit

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEF10rh2Elc9zjMuACXYcKB8Eme0YFAl6xD04ACgkQXYcKB8Em
e0YEVw//TH/fq0NNa8BsCXeGXzxlVMEexjFoX4Kd4gu+kbKZaN6e6kHdfp4jVfFL
nWvkEuCkVytqr+7pBRVvPHOdKoLTJXwkbIdfbtz2GR+qpVDqxC90qn+pPJr33V4D
Tinws56w4EhXK3YLaptPZRYGmRUjXIsMd6+KCdUyNupG1ztIlwrSUfTYdk6imWkS
XXUin/LTR5YsVGkBKoj3NNyBcjAvr//g+PLTiWR/PBmIDBYzl1QhvBrxMURuN8wx
sUeco+4LlP1nunB6OE2JwikoOK0AAFc8SyjHgZeBXm45cDmbnMeYhcLYYnakl+gs
BifsmGgeeNPl2smGYgkUC0VtisX3p4/mFU0B87Fp9RD4ouO2bFTCldbmDROTX/gY
m55yIZIWhH908xPVjf4SLQpaC3IBSTHmfEZ1ie/5guO8E0q19pZCoDLRiYdYpUtv
USM/9+8M68yXrvgdg/Xxi/gcOHDeKeZIXb3gxYK1+xoIfahGdM/t/IFE9qIN5O+n
hCYEBnbA26niZop3JDQxDHesjGA8uuPkBT+xtaUqWzDgBANG4DWn94uyZGffTapk
dCYwFM0jdzTdQQuPYDphwMisi+P42x9jgk0QkmCgAh6CfWxdTe9D44UgCs/8+lZd
wTzFvz5lcyJv8BsOjpzHA/6mI9CiJ7178pwOYU9SR43zF4pr8kw=
=nZKo
-----END PGP SIGNATURE-----

--nextPart2406179.bnRGkfsQJl--





--===============1572918091306926223==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k

--===============1572918091306926223==--





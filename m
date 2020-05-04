Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D840B1C400A
	for <lists+ath10k@lfdr.de>; Mon,  4 May 2020 18:36:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:To:From:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=VNAVevX2vEeBRKl9nW2XKj03vsBLrbZzKv92vwu5rGE=; b=e7p9m0KVtZZaEyLEOHJA/HihH
	96H2BhS5gSFuS/u2L7EcMZCeAdQl7RGQ26DLp+gbD00PAOgJhUl7XjIneiMtl2L3t55UvuYv+e+yH
	iCMxtIVGTVLpb/3GoBDMq/wLGEtLjX0hG1KaQQEDmkB0i0/LGiKxJJ+NFNMZqgnSYa+Oi0adkrNbb
	o9TbbGxZ1L+Lk8n5NdYgB9aHVGzTqXpmV7vEO22fDOQmc1iRcK20lIHQ1SLoOb4xusNVKPiF7agbO
	/l0e/GzVJrQhN1Is+VFrFz3jEh3ockOsmZcIriJNN875vq/2k6Y8bQUAr9jDrRNU1dPKT9bd6QUML
	3SPpGu6TA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jVe57-00006B-2E; Mon, 04 May 2020 16:36:37 +0000
Received: from dvalin.narfation.org ([213.160.73.56])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jVe53-00004r-Qi; Mon, 04 May 2020 16:36:35 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=narfation.org;
 s=20121; t=1588610192;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=YFPc5efbpIyKnBr6op+YCa/HL6e6F9MtOcXPUQ8Ph7Q=;
 b=dpXmUNyEEVsGpbScscL/KHKusrg5uy6dQNlof9Ug4Rt6vHt33KYAF5wPY+IyOqD012wEa9
 /jY8A94oX8+ddb/HFaz+CgdL7ijE9OEB4viswZGE7VrZEbJdAbsNoRka1KYvYfdgYPnf2I
 zSxRhVQsD9/Nyth7/Io+kMMF69sr7MA=
From: Sven Eckelmann <sven@narfation.org>
To: ath10k@lists.infradead.org
Subject: Re: [PATCH 2/2] ath11k: use cumulative survey statistics
Date: Mon, 04 May 2020 18:36:29 +0200
Message-ID: <1858610.Ps4IJGbiz4@bentobox>
In-Reply-To: <20200504154122.91862-2-markus.theil@tu-ilmenau.de>
References: <20200504154122.91862-1-markus.theil@tu-ilmenau.de>
 <20200504154122.91862-2-markus.theil@tu-ilmenau.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200504_093634_025208_9DDCDCE3 
X-CRM114-Status: UNSURE (   5.78  )
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
Cc: linux-wireless@vger.kernel.org, Markus Theil <markus.theil@tu-ilmenau.de>,
 kvalo@codeaurora.org, ath11k@lists.infradead.org
Content-Type: multipart/mixed; boundary="===============5881775401003804617=="
Sender: "ath10k" <ath10k-bounces@lists.infradead.org>
Errors-To: ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org

--===============5881775401003804617==
Content-Type: multipart/signed; boundary="nextPart15277854.gjROg6epRP"; micalg="pgp-sha512"; protocol="application/pgp-signature"

--nextPart15277854.gjROg6epRP
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

On Monday, 4 May 2020 17:41:22 CEST Markus Theil wrote:
[...]
> diff --git a/drivers/net/wireless/ath/ath11k/wmi.c b/drivers/net/wireless/ath/ath11k/wmi.c
> index c2a972377687..322ddfda5bfd 100644
> --- a/drivers/net/wireless/ath/ath11k/wmi.c
> +++ b/drivers/net/wireless/ath/ath11k/wmi.c
> @@ -5610,16 +5610,16 @@ ath11k_pdev_bss_chan_info_event(struct ath11k_base *ab, struct sk_buff *skb)
[...]

What about the survey modifying code in ath11k_chan_info_event?

Kind regards,
	Sven
--nextPart15277854.gjROg6epRP
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part.
Content-Transfer-Encoding: 7Bit

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEF10rh2Elc9zjMuACXYcKB8Eme0YFAl6wRI0ACgkQXYcKB8Em
e0ZpiBAAz3O/JbFM/rpEAk7dzxZUlbGxcQy7DzqQ+yPIj/aBYVnUl7qPuCAYExEZ
oKRpLovr+/EyZE6pFkIjB5eo8G6aCoWiAgn8MSf3PHgcPsa3Izk+//lBDTUGafMl
csEtDBdQxlW1OZGJfzS1FHMeLvmcqzE+vzpihO7ZaNJXX7QpNCcHGty2TcDQol4F
5JDJigbwL18wmV2Za0rR3PmCj2lp41xO0g7g+Z8y6Yk4wUuq/R7oXIcfuFAES4hH
iq1ZbQedFjZ6n+ORIEKlqktdIucWSmzRPMHAHTLc72h3oUVH3HW8/jPSN5WHoIgl
avfXQ6DgkARfshn1vHrKMp3QUAcWMl9qLrkX0yEHLxVPJuSR8mC4g8u3rG0ikG03
m40zmdESnJE1zM5xVuSnuLr1F6xhlZf7QIl2A521SopfaMZb1Ju13r10bJ9GXELb
2YzWBhN1oJWFM684v6cVn5vQhY+Pc2sKOK5bAjNs4bJeIOeiv4L0JUx+HTtSHVFx
SdNHcGz+2vHpxqW/vyQmFFwhaDWM05UyxVD9Vmzeywd+rF2+hK4c0Gdp4OsKqip8
qtS3vyNY1JGS2whPSXO4CSVyK4mFM7cF8tdV+n7blpMNKDDX/nvscQiqYfR0S/u1
x3jmFqOGUrotyiBB8OTCkxITI3FBc+ZNFTXJGDZ1I5HpaMDQgj0=
=ZsEU
-----END PGP SIGNATURE-----

--nextPart15277854.gjROg6epRP--





--===============5881775401003804617==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k

--===============5881775401003804617==--





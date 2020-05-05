Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9F5B71C4F8F
	for <lists+ath10k@lfdr.de>; Tue,  5 May 2020 09:49:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:To:From:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=K37PfFbeMVipPi80w1wCfvo9LX5xecJN5QzBVvXWH+k=; b=u4Evzc8q/l/pRe/tlowgmMLEt
	koRHLBvt9vzWUxFGYUotmI/3UD29gpzOU2NbGhzelNY0mVDvohGmr2/jWX/G4bsQGOTRUhIWSbY2G
	ZJnCiQTitkE0bXrxBMdY7ig/34u96vxDZeiWmyIIBtDv1LiDqa5OWqpbNhe8FAaz5UC0ZpF23FiRL
	IKlOG1EqDaB8DtcCQ0ttF9ShLhDeFQ7xRbByWqI8mArI6tpPIjFOx6W5Q4CMXA9blIOlUjsSBh9QQ
	AYkTL7VfsYLe8M8orlkOak7tA7sN1en8frPL6eOQ9+F7aWAA+xzTK33V3jno74lOpu4wIC7uYdssP
	Uzr0MgVaA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jVsKx-0007UF-C6; Tue, 05 May 2020 07:49:55 +0000
Received: from dvalin.narfation.org ([2a00:17d8:100::8b1])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jVsKt-0007TD-BQ; Tue, 05 May 2020 07:49:53 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=narfation.org;
 s=20121; t=1588664989;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=1IWrsJBZhdCsDyfYSJJhd0QFKh2SYgRZbADR1astMwI=;
 b=dKzclyKzpjnaFtGo6rLlMP9ke/9p0TWzxDP+nC0/7MxO3EW9HfHwdCArWZMGCfVDfnbwnk
 lmm/+xonJ2rCn7mOPylZVwaLgPWtqhisnhioGRESPuVwvXfJKakr/8n/4ZYPfT/3LkfWVT
 sCMjAKUGeE6wC3X2YbqE3eA9VuXuBIk=
From: Sven Eckelmann <sven@narfation.org>
To: ath11k@lists.infradead.org
Subject: Re: [PATCH 1/2] ath10k: use cumulative survey statistics
Date: Tue, 05 May 2020 09:49:46 +0200
Message-ID: <1845755.pTfhzBy2qg@bentobox>
In-Reply-To: <2335594.cnkAv9Vaq7@bentobox>
References: <20200504154122.91862-1-markus.theil@tu-ilmenau.de>
 <f772b7bf0eac31516a4e28719c1938f2@codeaurora.org>
 <2335594.cnkAv9Vaq7@bentobox>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200505_004951_536329_96004809 
X-CRM114-Status: UNSURE (   7.90  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [2a00:17d8:100:0:0:0:0:8b1 listed in]
 [list.dnswl.org]
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
Content-Type: multipart/mixed; boundary="===============3406996777522705258=="
Sender: "ath10k" <ath10k-bounces@lists.infradead.org>
Errors-To: ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org

--===============3406996777522705258==
Content-Type: multipart/signed; boundary="nextPart4024693.4Mujkspm9b"; micalg="pgp-sha512"; protocol="application/pgp-signature"

--nextPart4024693.4Mujkspm9b
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

On Tuesday, 5 May 2020 09:01:34 CEST Sven Eckelmann wrote:
> On Tuesday, 5 May 2020 01:46:12 CEST Rajkumar Manoharan wrote:
> [...]
> > IIRC this was fixed a while ago by below patch. Somehow it never landed 
> > in ath.git.
> > Simple one line change is enough.
> > 
> > https://patchwork.kernel.org/patch/10550707/
> 
> Because it doesn't work for everything. Remember that 10.2.4.x overflows all 
> the time (14-30s) because it used only 31 bit for the counters.
> 
> But feel free to point me to the firmware version which fixed this.

See also https://patchwork.kernel.org/patch/9701459/

Kind regards,
	Sven
--nextPart4024693.4Mujkspm9b
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part.
Content-Transfer-Encoding: 7Bit

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEF10rh2Elc9zjMuACXYcKB8Eme0YFAl6xGpoACgkQXYcKB8Em
e0ZzCRAAgqYCt2mvPP4dcDSuLObeeqnrlCg1zGaJJZTOYiTbGbBOFPKRKKWoX/PG
manCnusFGFRHSpoGC94W89wlOJ6EW9x2RMy7ylws0z15iOzziE6faiE9XNuczjQw
+NVHZthe6xgWq5iORv2+zGtVqPPjvzoVcObZyyTdWtYmnVEb/Vo5W0g713/ha42K
IHfFLbcwdW3OjVFEd88hEt6sOaMeM86ZmZql6cox23CNzYfG76BcNUvgta7l2Tr1
MvpLrattlWdTP+6uWabdIdJp2IDKFj9DeEQrvUUuIlQJO1lbiZSBK+/jMqv0buNS
dImQBdrJZElVL7LW0hqgYHesekgpigVOt4gWd/mZfJlH6dtzW8hp/btxonCzecfd
DUJchzFPJv4LfAswoWEr/Uw3MYwi7W0pdcbKCJQbzchHgMfO2mtWX6BvfdU5Pvl3
V5tmKzNbpJIZTFUKh0mFqsceBRXU/fYWU9S3IuAuFmPzTnew4YeBKQj/xhHmduhx
dXF6IQU69fM2hKUQWZV9NCxmCzHXhytChza4JeQpGhXKM8bQ4sH7yuMWrSlKJ7VU
D14XlUppGsOW8uKK6VNl76DfFpWqs76bZs95npCX0u188PwTTTAGpbqaizZjXZ5q
OWF98ErpHvU88aaLjKsYNmUOj6pXyRCfADeukZnuXHKUWSyf3jw=
=8mIN
-----END PGP SIGNATURE-----

--nextPart4024693.4Mujkspm9b--





--===============3406996777522705258==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k

--===============3406996777522705258==--





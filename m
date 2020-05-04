Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AD3091C3FDC
	for <lists+ath10k@lfdr.de>; Mon,  4 May 2020 18:29:44 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:To:From:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=BnKxWLFkJ1PxNqZh4Exq4u2s5JpJjJRWOZUXn94choI=; b=eNK4Xs1tmf31PLhtMCjlBXZCz
	ib7W8ok/J3MvBwdpl7rLki5Fe6wSdtOuMJGWKD+jVjCgJAU0ePqhoJlkedT3Hmo4Vm7AjrV4uj6Qr
	GZ3CHOwdmPRuYtH1s7t7Y/RDk3bMxWxaofOeqZlz5nojxSOVZ7E4Rb3SzrXcpqfKCazEexd7YskhV
	QRKawKi/ChWJ68LaaBL93SahwHoDjdDBh+t9kE+QLAxGH3bxde12P629hriEn2Hs7AAjx2vTUubKL
	7VD7s/q5sCVLQudTLPUtkWrtZfndauTB7Dj4qHrX4wWtTiXaRDbZne7LPYPEaF0wrSPSK0VVn2AZv
	xwdW5mh3w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jVdyQ-00019H-Nx; Mon, 04 May 2020 16:29:42 +0000
Received: from dvalin.narfation.org ([213.160.73.56])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jVdyM-00016C-Jn; Mon, 04 May 2020 16:29:40 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=narfation.org;
 s=20121; t=1588609772;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=2p0xlqH/n1GRp0FBc63MMF95nvW3k0K1p0+mBKAtSW4=;
 b=VsccDo+2zaqkIeSU7CKoICc7/1p55+F44hkciv60cRfP+miV/RvyGGc5gNMQHK6dKAT/kZ
 W1JXdTQ+XcM+zoyxdBx7r8gC+6C7/xC9dclW6EPG2PPlxBIDmHlJR5t5GUVKlR9SQrEgs3
 t/D57IJhBHUrDOQVroxAJ4zH3GQ71WY=
From: Sven Eckelmann <sven@narfation.org>
To: ath11k@lists.infradead.org
Subject: Re: [PATCH 1/2] ath10k: use cumulative survey statistics
Date: Mon, 04 May 2020 18:29:26 +0200
Message-ID: <1760068.xeLkAeoAig@bentobox>
In-Reply-To: <20200504154122.91862-1-markus.theil@tu-ilmenau.de>
References: <20200504154122.91862-1-markus.theil@tu-ilmenau.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200504_092938_963741_3FB908F1 
X-CRM114-Status: UNSURE (   5.71  )
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
Cc: kvalo@codeaurora.org, linux-wireless@vger.kernel.org,
 Markus Theil <markus.theil@tu-ilmenau.de>, ath10k@lists.infradead.org
Content-Type: multipart/mixed; boundary="===============3274681519708504341=="
Sender: "ath10k" <ath10k-bounces@lists.infradead.org>
Errors-To: ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org

--===============3274681519708504341==
Content-Type: multipart/signed; boundary="nextPart3821530.ePlWPIuScu"; micalg="pgp-sha512"; protocol="application/pgp-signature"

--nextPart3821530.ePlWPIuScu
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

On Monday, 4 May 2020 17:41:21 CEST Markus Theil wrote:
> ath10k currently reports survey results for the last interval between each
> invocation of NL80211_CMD_GET_SURVEY. For concurrent invocations, this
> can lead to unexpectedly small results, e.g. when hostapd uses survey
> data and iw survey dump is invoked in parallel. Fix this by returning
> cumulative results, that don't depend on the last invocation. Other
> drivers, e.g. ath9k or mt76 also use this behavior.

It is (unfortunately) not that trivial:

See code and comments from other people:

* https://patchwork.kernel.org/cover/11150285/
* https://patchwork.kernel.org/patch/11150287/
* https://patchwork.kernel.org/patch/11150289/

Kind regards,
	Sven

--nextPart3821530.ePlWPIuScu
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part.
Content-Transfer-Encoding: 7Bit

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEF10rh2Elc9zjMuACXYcKB8Eme0YFAl6wQuYACgkQXYcKB8Em
e0YCdhAAygPurJUmKQJVE5BgEzHYMvKcjs753EZjE4y4jiapgn1eygKetd86eG0y
v9/H370oOke8oR7OZD+LH/8KtQDuhAENiasfB9gpDwZJoEtfA5YjBQmUJLz/+K30
GJcqjCr2s2dCqIDIqXvKz+nJFgpDUkY1qowIi0/eQN9N10gIuUzh66eTLMTUUuSt
e5E1POqjvVHD8Fh5sa+e3vTofx2aeKJHI5Bkze59xm0gIh/l44f7YyHzeZnAJ5cZ
LlCAjpENR5aQvCkr3Vt6IMjJWtDk9/zydkzIkJAL99LyScdMYAgg3qnSekvIJ3N5
gDF28qSi+PwzpqGm1YSVtwv/BK7NjP5b7t0P6CZtWPmzypEEc8fUAYeIAGTwgVib
bsbuX/HQbxglLYQkoD6UQPjRkFOrNfM8SFR+rIjxc5DfVGG8dPPwfBqok0PbsRoE
JK/KP0Enjt2XsSswER5yCbqEZkIytWsAE/Eh3OfuFLGejOw9OhmfEnZQXyVbk4RP
5+4N6KkD+WS+AdctlXuS5+aR5tb5yMutQ7COn97kZGc2cR5OU89Sc3sFm+ydZGRK
EuXrsyW2V3p6Yh82Mi8aXR1pHwAGxS5+nyMT0Tg+c9hVEQx+2gfJhrNztEOFWXjD
m9jTk3xJtsGNoKqNijhFRCDQuykk5DGWUy96v/mVknpJcZqxh48=
=sviW
-----END PGP SIGNATURE-----

--nextPart3821530.ePlWPIuScu--





--===============3274681519708504341==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k

--===============3274681519708504341==--





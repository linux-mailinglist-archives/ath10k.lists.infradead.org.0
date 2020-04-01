Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CE7E619A5BF
	for <lists+ath10k@lfdr.de>; Wed,  1 Apr 2020 09:01:03 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:To:From:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=0NQO9bFvdUvKTexy0Dm7tEvCC4j791pXuV5XpAa304U=; b=gzoIbBG29zuSZk5pZK0TmHERE
	zzZcd2zhxwOu4d76z8P58kRIapnA6cjBVEuGAKoOe4HIRVPqfP8eq1ReW+I3ujVUfeJZ7AOnlMymL
	PTgTFQnkJ/Ue1vic9TYMwRTe3XCZ2OjnrLXFPKPJv8iMXFlVrFqVr2tUyKL3vQmJ8sJWmhcfOgnhW
	8mpta7wfdk7oytHKeppAnmhigB+Wt7By4KKdRDN/okVciR4Cz+GICNRH5VYOHCyHj+EfmihmztZY1
	TA7trJnNR/D89mAQGdRjovMSHkLGYPfC28FwCB6t9ZEUVjV4sN82PwpO3uLVtmg93am0TxPceDi9U
	eXnjn0nVg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jJXN0-00083x-4X; Wed, 01 Apr 2020 07:01:02 +0000
Received: from dvalin.narfation.org ([2a00:17d8:100::8b1])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jJXMv-00082r-IG
 for ath10k@lists.infradead.org; Wed, 01 Apr 2020 07:00:59 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=narfation.org;
 s=20121; t=1585724452;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=eZ6rBSBIdA4UjzIh0yr15zffeVskWrBIvZd3EQOPrHQ=;
 b=n4i5Mxx0SgULGxZvV7buuIi+nBoDF4oNx4ok5Lxv3oThJ0jbvE6nTcE8aRQr+jl+3U1dXb
 QkV3PM3ke6Go0QqeFj/8YtaqS8sAdZMisZvclqZROIlWb6cxBl/W+tsFChNezTGztqdtJ3
 fVPep6L3Q1M+KH852n3FGxJ7yeM6ClI=
From: Sven Eckelmann <sven@narfation.org>
To: ath10k@lists.infradead.org
Subject: Re: [PATCH] ath10k: increase rx buffer size to 2048
Date: Wed, 01 Apr 2020 09:00:49 +0200
Message-ID: <3300912.TRQvxCK2vZ@bentobox>
In-Reply-To: <20200205191043.21913-1-linus.luessing@c0d3.blue>
References: <20200205191043.21913-1-linus.luessing@c0d3.blue>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200401_000057_901973_7F9B5194 
X-CRM114-Status: UNSURE (   7.96  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [2a00:17d8:100:0:0:0:0:8b1 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Linus =?ISO-8859-1?Q?L=FCssing?= <linus.luessing@c0d3.blue>,
 Simon Wunderlich <sw@simonwunderlich.de>, netdev@vger.kernel.org,
 linux-wireless@vger.kernel.org, linux-kernel@vger.kernel.org,
 Ben Greear <greearb@candelatech.com>, "David S . Miller" <davem@davemloft.net>,
 Kalle Valo <kvalo@codeaurora.org>,
 Linus =?ISO-8859-1?Q?L=FCssing?= <ll@simonwunderlich.de>
Content-Type: multipart/mixed; boundary="===============5620324936941332504=="
Sender: "ath10k" <ath10k-bounces@lists.infradead.org>
Errors-To: ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org

--===============5620324936941332504==
Content-Type: multipart/signed; boundary="nextPart1800025.TbuEdfJRpj"; micalg="pgp-sha512"; protocol="application/pgp-signature"

--nextPart1800025.TbuEdfJRpj
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="iso-8859-1"

On Wednesday, 5 February 2020 20:10:43 CEST Linus L=FCssing wrote:
> From: Linus L=FCssing <ll@simonwunderlich.de>
>=20
> Before, only frames with a maximum size of 1528 bytes could be
> transmitted between two 802.11s nodes.
>=20
> For batman-adv for instance, which adds its own header to each frame,
> we typically need an MTU of at least 1532 bytes to be able to transmit
> without fragmentation.
>=20
> This patch now increases the maxmimum frame size from 1528 to 1656
> bytes.
[...]

@Kalle, I saw that this patch was marked as deferred [1] but I couldn't fin=
d=20
any mail why it was done so. It seems like this currently creates real worl=
d=20
problems - so would be nice if you could explain shortly what is currently=
=20
blocking its acceptance.

Kind regards,
	Sven

[1] https://patchwork.kernel.org/patch/11367055/
--nextPart1800025.TbuEdfJRpj
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part.
Content-Transfer-Encoding: 7Bit

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEF10rh2Elc9zjMuACXYcKB8Eme0YFAl6EPCEACgkQXYcKB8Em
e0YRxA//YxxFkrb3+3MfksBJzKvpwPudQje1PeGas/4ofeiU8BeEaEGPbE5psITT
FNUyVMxVf9VceV10aWdFwVNB4pr6BNhp8ENaZC1mM+ysv4qx2GGdFizlDSmctk6S
KUEeE7sGWPMF8GsVmKFOm91xDWZJPQkz39dYrrOF/n8z0A/PpSVVj9GU1+qWh1uY
wpTi1FBpQ22mt1+lLtkzd79iWR88tUEq6+kSb6c9iGRHwFzAKsWH2ztHiz1XJKUL
JuslEzrgknh22OKVuMDFeHERdTV20QxFouTv4jJNAT7++TWrOOscqLmyAHApkzxS
LUasYj1cIAUIOhiB26luknCi2nshgSqo3pX98brWOc5k7oOAip2dj3ZP7SKTTCDx
bm/oTQEjvH6tx/ejTssiObbCNE2eNVk2NKSiIPQ43f/7TUQLKOx0MwKZP0Oze1AO
nNPz04GP75RJManuczRyBRZ9RVHfS4V/yiD1EDvT3NQpmg9bJrfWyo7gpFAVL8mx
BXHiaDmaXbRAlK4DrBR/ozjYXlGddNVBJQ9JTdk1PM0BOoTnRjMj/Gs1ZIvtKb8R
mlfJYXEu4D9tIi1XlRAOmMZ/VYlE33T198Pb5ia6r6g4qlqiVpZc/h+ktfB/BkWH
SqRSuL6vw7oCbxefi5oF2T0HEVU3K3hvvATa0R6A2xQgtkz/pXQ=
=1DtW
-----END PGP SIGNATURE-----

--nextPart1800025.TbuEdfJRpj--





--===============5620324936941332504==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k

--===============5620324936941332504==--





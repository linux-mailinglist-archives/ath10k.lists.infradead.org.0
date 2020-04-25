Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5F9A61B8615
	for <lists+ath10k@lfdr.de>; Sat, 25 Apr 2020 13:15:11 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:To:From:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=XENYHYh1e4qMCe6aM4JXOQF8rYSecR3SkTl4aWvT1rg=; b=iqBlaV6AWujXFX6VBggaR+w3c
	uw4rXqJIrNrgtGdqRS2NMc3urwVSDSZ7flozIKDVSduscEr20zsMtPuD9vmAt8rpf7e8KUVMxGshB
	Feaeb9G9WiAcIhsqKDjjj4uOTOW4yANcMYqxGP8ox8vbLJtJpStks+tA3VWrkVq6ig5rw7k1ls/Vo
	pd3JvZUMrePlb5OBmsf9xfz+3eEcTeIZL/vfzLqspCKD00tr5lGPkC7ytsuMgSbxmcSeFw5xIKDrS
	RpN9OIza/qM8BxJDhy3nb/cdUTpz0Y3yNB4wM9ILTciNyyBrgMdRgoHVrwonFmM73ia5V2xi7pn2W
	WCoE2N0wQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jSIm0-0004JO-WC; Sat, 25 Apr 2020 11:15:05 +0000
Received: from dvalin.narfation.org ([213.160.73.56])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jSIlu-0004H1-1q
 for ath10k@lists.infradead.org; Sat, 25 Apr 2020 11:15:00 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=narfation.org;
 s=20121; t=1587813290;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=KumF6kh56EN8JU+7POkgR7Y2ujlsA83xKr4QGN/daXg=;
 b=d3wmTxFC0t5ZVqdKAiC+GC/Lm6Thc6opDvrFvelDyKI1DXvCx+KpYYtcjNgP9n95smB8zi
 2N5EHiMVHUJANDnUUr77SmLF2PmdkndLm/1uNnEgso1JGbjR6n5AR5FG4LCwqBDD1I70/5
 JxLo+0k2l3VZF+8Qpj05Lsi9Wo+mU1I=
From: Sven Eckelmann <sven@narfation.org>
To: ath10k@lists.infradead.org
Subject: Re: [PATCH] ath10k: increase rx buffer size to 2048
Date: Sat, 25 Apr 2020 13:14:42 +0200
Message-ID: <3097447.aZuNXRJysd@sven-edge>
In-Reply-To: <3300912.TRQvxCK2vZ@bentobox>
References: <20200205191043.21913-1-linus.luessing@c0d3.blue>
 <3300912.TRQvxCK2vZ@bentobox>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200425_041458_253246_0D74A7E9 
X-CRM114-Status: UNSURE (   9.76  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [213.160.73.56 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Linus =?ISO-8859-1?Q?L=FCssing?= <linus.luessing@c0d3.blue>,
 Simon Wunderlich <sw@simonwunderlich.de>, netdev@vger.kernel.org,
 linux-wireless@vger.kernel.org, linux-kernel@vger.kernel.org,
 mail@adrianschmutzler.de, Ben Greear <greearb@candelatech.com>,
 "David S . Miller" <davem@davemloft.net>, Kalle Valo <kvalo@codeaurora.org>,
 Linus =?ISO-8859-1?Q?L=FCssing?= <ll@simonwunderlich.de>
Content-Type: multipart/mixed; boundary="===============6648046091867572953=="
Sender: "ath10k" <ath10k-bounces@lists.infradead.org>
Errors-To: ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org

--===============6648046091867572953==
Content-Type: multipart/signed; boundary="nextPart9684083.LlcNlZrpYr"; micalg="pgp-sha512"; protocol="application/pgp-signature"

--nextPart9684083.LlcNlZrpYr
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="iso-8859-1"

On Wednesday, 1 April 2020 09:00:49 CEST Sven Eckelmann wrote:
> On Wednesday, 5 February 2020 20:10:43 CEST Linus L=FCssing wrote:
> > From: Linus L=FCssing <ll@simonwunderlich.de>
> >=20
> > Before, only frames with a maximum size of 1528 bytes could be
> > transmitted between two 802.11s nodes.
> >=20
> > For batman-adv for instance, which adds its own header to each frame,
> > we typically need an MTU of at least 1532 bytes to be able to transmit
> > without fragmentation.
> >=20
> > This patch now increases the maxmimum frame size from 1528 to 1656
> > bytes.
> [...]
>=20
> @Kalle, I saw that this patch was marked as deferred [1] but I couldn't f=
ind=20
> any mail why it was done so. It seems like this currently creates real wo=
rld=20
> problems - so would be nice if you could explain shortly what is currentl=
y=20
> blocking its acceptance.

Ping?

Kind regards,
	Sven

> [1] https://patchwork.kernel.org/patch/11367055/
--nextPart9684083.LlcNlZrpYr
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part.
Content-Transfer-Encoding: 7Bit

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEF10rh2Elc9zjMuACXYcKB8Eme0YFAl6kG6IACgkQXYcKB8Em
e0blZhAAtUz1zZuJUiX3gvEu7u03vcUEh+9wxlrnYwC+XmWyXWZ0lswqB5egTyd0
2XbsmAXldRfVz6HV/Gly3WGR2QBxVCkQPhEhDuUBDuNFnp/QL2+qnriubgRlDYSp
lIVP1REqUJcADEM92Bec8vWub35lxIwMj3j/DpR9gQ/toJu9C/1Gnuw9i40WTF3i
K+BMaPwR33aGAdTRDh1fK0zWcpuzRIOMGJf4HhoOgm3HU0K07P64UXC4x40uU1zi
G7Tn6SekHgtio5DmRRualgp28QE69XK66W25mbLxaZQcvnUHuNEoMZC+bJh+kYkN
pZiVdlUx6CM+CqSuztHCYT7Dgl3hC8KbTRAfVSY1M44NChglAIO3WXuHasyeqJHn
n9BJ+q9+AcemX1whESG16iA10KMK/8PsRF9ynzM05W+JiwvDiTB0JbEfS0h4eur0
dwiavSaAvnhoXV2bra4XxuqDxQWjagq11FCIpMg1U4WpuZSKit2K6hL31wHChsK7
O03j+un9EU/UHlDRb4G2EM1UU3t6JngjUDlzPr1lNkVFCwiFO4wh4e8nm+GiRmuc
yj1Wq7FREyBhhDbktr56SFLHoAluhshb2QRE+8yNAELZEi+mKS08kY/c6FVxPo63
elfS4ktzDlNtkQO4agAAPAmIOijysXjj7mG8a+5A8vhX4Y+s6Ck=
=2W59
-----END PGP SIGNATURE-----

--nextPart9684083.LlcNlZrpYr--





--===============6648046091867572953==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k

--===============6648046091867572953==--





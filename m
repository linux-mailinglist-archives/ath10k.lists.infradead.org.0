Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C9E121E0A9F
	for <lists+ath10k@lfdr.de>; Mon, 25 May 2020 11:31:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:To:From:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=k6taG1bUGCHbfkWF5M+QLsXZ8QtLFEtLFUMs4ORuSVo=; b=JLZV+mP/AJJiTZR8DgM+zCbi/
	XLpvaIc0KmxssMYIxJPUEaFs40n4VzO46P8cK363vRXGBqspPNpC6+HAoJ4ne/VoBPTxYmb0uDY9w
	+6XKz0NcE3BfTXJak7f7XznC0Rn8b3aknfMGpEjzyDiyffPT/XkVJUy4VJQla3RBLpxAsJOpQZQHe
	Rfc82CNGqgu39bBhO5ZGS+EGdfeSRUnIymXeiAA4goVpnMhq9eGUaluCUyvlzY9d0BpXUzva2OIsT
	NfiNFvghzgj+H7+Z478x+gkEIwKF/g1JJu0C0t5IVnSPhIdjnJjrJTo+FvMtUvqM7P57dfJ704vSf
	SGx7Gdftw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jd9Sc-0001Ub-Mr; Mon, 25 May 2020 09:31:54 +0000
Received: from dvalin.narfation.org ([213.160.73.56])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jd9JN-0005JJ-Fo
 for ath10k@lists.infradead.org; Mon, 25 May 2020 09:22:28 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=narfation.org;
 s=20121; t=1590398536;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=rc63LKazKJ42gCxrKydqcK9JdD5SREUWcGPPhltHNEE=;
 b=sbFk6falZc9RXyaWKLibbda8wt0DBRNXzdFTz1ZysCgsLI4WQup6umnmKY4bgelNI7PiwV
 jWCUZqR2lVoeYl3FKZTdXEPdlBhEG938wPtCCd9t6csN+DKBfK7SQTCOLA1ZyQ/VHS5bgt
 4MUfx6oXr+9XSDHz/MIWS3ZzEaCDzGM=
From: Sven Eckelmann <sven@narfation.org>
To: Sebastian Gottschall <s.gottschall@dd-wrt.com>
Subject: Re: [PATCH v13] ath10k: add LED and GPIO controlling support for
 various chipsets
Date: Mon, 25 May 2020 11:22:13 +0200
Message-ID: <3608947.bSrYYtX6KI@bentobox>
In-Reply-To: <b23e65cf-4be7-72db-7955-32eae196953e@dd-wrt.com>
References: <1523027875-5143-1-git-send-email-kvalo@codeaurora.org>
 <2468724.JaAZLprVu6@bentobox>
 <b23e65cf-4be7-72db-7955-32eae196953e@dd-wrt.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200525_022221_865723_DE087D0D 
X-CRM114-Status: GOOD (  11.19  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [213.160.73.56 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: linux-wireless@vger.kernel.org, ath10k@lists.infradead.org,
 John Crispin <john@phrozen.org>,
 Sebastian Gottschall <s.gottschall@newmedia-net.de>,
 openwrt-devel@lists.openwrt.org, Ansuel Smith <ansuelsmth@gmail.com>,
 Kalle Valo <kvalo@codeaurora.org>
Content-Type: multipart/mixed; boundary="===============8211223660415021630=="
Sender: "ath10k" <ath10k-bounces@lists.infradead.org>
Errors-To: ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org

--===============8211223660415021630==
Content-Type: multipart/signed; boundary="nextPart2460714.mtjQ6OgbZm"; micalg="pgp-sha512"; protocol="application/pgp-signature"

--nextPart2460714.mtjQ6OgbZm
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

On Wednesday, 20 May 2020 09:39:45 CEST Sebastian Gottschall wrote:
[...]
> could somone clarify the state here and why it was dropped?
> the original patch i wrote does exclude the soc chipsets, but the patch 
> was later reorganized and some part have been rewritten
> so i'm not sure if it covers the scenario mentioned here, which i did 
[...]
> > This patch was imported to OpenWrt in commit 61d57a2f88b9 ("mac80211: ath10k
> > add leds support") and broke the 11s support for IPQ4019 and QCA4019 (5GHz)
> > firmware versions 10.4-3.5.3-00053, 10.4-3.5.3-00057, 10.4-3.6-00140:

Just noticed that there was a copy and paste error in my message. The 5GHz was 
an QCA9888 [1,2] and not an QCA4019. Otherwise the _pci error wouldn't have made 
any sense.

And I can only say at the moment (remember that this was observer 14 months 
ago), that it could be reproduced easily on IPQ40xx with an QCA9888 and the 
given config running OpenWrt reboot-9440-g0f89c17b57. The diffconfig (seed) of 
the installation was:

    CONFIG_TARGET_ipq40xx=y
    CONFIG_TARGET_ipq40xx_generic=y
    CONFIG_TARGET_ipq40xx_generic_DEVICE_openmesh_a62=y
    CONFIG_ATH10K_LEDS=y
    CONFIG_PACKAGE_ath10k-firmware-qca4019=y
    # CONFIG_PACKAGE_ath10k-firmware-qca4019-ct is not set
    CONFIG_PACKAGE_ath10k-firmware-qca9888=y
    # CONFIG_PACKAGE_ath10k-firmware-qca9888-ct is not set
    CONFIG_PACKAGE_kmod-ath10k=y
    # CONFIG_PACKAGE_kmod-ath10k-ct is not set
    # CONFIG_PACKAGE_kmod-hwmon-core is not set

And it still can with this OpenWrt version. But it doesn't seem to happen with 
the most recent OpenWrt reboot-13353-gb1604b744b. But there are nearly 4000 
commits inbetween. So no idea what changed (just a timing thing or an actual 
fix - no idea).

Btw. the wireless config was given in the original mail [2,3]

Kind regards,
	Sven

[1] https://openwrt.org/toh/hwdata/open-mesh/open-mesh_a62
[2] https://patchwork.kernel.org/patch/10723033/#22502191
[3] https://patchwork.kernel.org/patch/10327075/#22502179
--nextPart2460714.mtjQ6OgbZm
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part.
Content-Transfer-Encoding: 7Bit

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEF10rh2Elc9zjMuACXYcKB8Eme0YFAl7LjkUACgkQXYcKB8Em
e0YH8xAAg6aeHEscaqQ7cvLRA1v9ipqIz4bNIUte+dpOzinFIIAVW5bHwYVF0GZT
L2Ft9lIMLrSLuFZ/PKNlqnS2Ke+ReB2796DYGAY4rw2glSr3A4YH9/IsOwJgXHp3
tvS6sxdWDyBHXiYS+WkviGdwyyZX+GR3qgJLOagO8dbN/vEZARMTPmyKaP3YDOcC
RghlJq+1wJGaKdaOG9BE3s4bh5puSg/czAKtYKPgHXYJBJFWIziLuhUYYSAOhLy6
VbHr6d45nymssAQqtoUK0pnccLUI6V3JXGhmmH/yVs1aayE4txjvMPEj5aP3ZP6d
2WRa+812FKwLnXOpRIfFgpx6WSElAk+QShbAzqwJ9HFn/dYfm2HOjui6oqU8xD04
fHbMF4CA9p4zue4t4ClDYTKURqzutg7wLva/vKVN/ovyu0ZQKM+9o/nJu6wkth9g
hUQllRdH9nWJiJvGlzWzYVxrMmDDa4Gvi3socbZ6zuCbIWLFWNsNsU77WKf7Od+Q
dEPoRFEyyz7yeEQCWl+AMY20PjdGdWWG+JYHx89+/aIDyLhp3K1BHDpSToe86aCG
8PiGV48W6NI79IqEoVeyQtenTAmpj0bizdQw5frylK2XDA7ofnEhU4+W8V8Cv9QF
ARACuJMgtl1FbLS8jWOJP2KAFYOG8upZWbIu3bASQnJ5s9LWvYg=
=B32t
-----END PGP SIGNATURE-----

--nextPart2460714.mtjQ6OgbZm--





--===============8211223660415021630==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k

--===============8211223660415021630==--





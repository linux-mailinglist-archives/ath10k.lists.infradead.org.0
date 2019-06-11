Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0D0F63CADA
	for <lists+ath10k@lfdr.de>; Tue, 11 Jun 2019 14:15:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:To:From:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=09xXU85Mwma4VQKuOT4EDoZbX+ReTpMK2leD0/3NUJQ=; b=rQOzgaiagb//GdjZxTmhkRRXG
	GZZ1Xpn5GueX13X50a2ieCemiBQdHhPBkTj1C/qITIiZX7/A7CEEVfNaCI+QmG/i6Vzuwf/n1Kb9W
	3YkFw3xbGSEZFICwFiAeq9luCuTyZFzaPN6PlmYpWW2PScJm2N3tZqoaWIEcs5xxv1svl3+HuIOHK
	4o+Q1v3Z6YvgQuW8AuST/5PeZrDx6SJEH6Tk4iMVuU6e9GysiQnyC39iuHGzHJTZiriLWAbE98j4L
	o79v7/61lU6jm/AWs5wt/01mZ/sTLfpls8KAtnBpUDX+JFh6FD9BUHnPfjgK1UFnb5HAAzwZHsXr9
	8elXr0Dfw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hafgJ-0005Zy-B3; Tue, 11 Jun 2019 12:15:15 +0000
Received: from us-smtp-delivery-195.mimecast.com ([216.205.24.195])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hafgD-0005Bx-P1
 for ath10k@lists.infradead.org; Tue, 11 Jun 2019 12:15:11 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=datto.com;
 s=mimecast20190208; t=1560255308;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=XEruTvNLUPvUr5ERAaCwxLrbpk63z5Tj3gu4Ukc65dw=;
 b=LQ2ennS89t0w+Mqx1kDVdU3BzFHte5P5Bx2YJ+nOv2Pzwzb+7M0ZtXyE9yaQcXiBU4+Kjx
 CZLbcT6iU17znB9KjW1dmzQVbeZ1ZIXq15LH7jxl3+O8n1sgmBlOkMU6SE43KGMYpH4iX7
 x/HbtEjQZPD/7m4rD7Kcr0r6LfeozKo=
Received: from mail-qt1-f198.google.com (mail-qt1-f198.google.com
 [209.85.160.198]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-211-DMKb2rgOP7S8l8H3ihJYTw-1; Tue, 11 Jun 2019 08:15:06 -0400
X-MC-Unique: DMKb2rgOP7S8l8H3ihJYTw-1
Received: by mail-qt1-f198.google.com with SMTP id 97so11611232qtb.16
 for <ath10k@lists.infradead.org>; Tue, 11 Jun 2019 05:15:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=datto-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version; bh=XEruTvNLUPvUr5ERAaCwxLrbpk63z5Tj3gu4Ukc65dw=;
 b=evpu/hvKcAUWhHZtjlyHoLRMLlVFoQzn7yOmG5M+f3VC8T5vWd8f1VWCQil/Flmw5j
 9nB6DUQoaJon5ZbJNyNc2pr5MTZNN6oXCMGZx4yQg0t3EYX9GvKR1sBZhNuXkBLcvpHQ
 UP1KPBQAOQ6R+APx3Jn7w9GIswB9MA4QokxR0+n4OGhen0Kvca9cfoPgleTsdXpn1BON
 IVzgenRCpyFDudRdJUpCmhmOiN4WA9Tg+RxT5MCycz3ZtegsRRs/uHEisE+cT0xvv2DE
 FAUAj4cvaIxHURdk+sPSQRrj8q2Dq4tb4xBCdNBOPJ+ecjWER/tKzP0x4nq2lckDkVYS
 W6/A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version;
 bh=XEruTvNLUPvUr5ERAaCwxLrbpk63z5Tj3gu4Ukc65dw=;
 b=Sn1YT2HQCc/taGNaqbbwXh+CA2XnU0XreTGnhpFVWXVu1lGhaaZBqOu7xrhd+6NZiE
 KGvlMlqN2MmQ0KUxnGojPkTPF62OW3wcRlJuIIAonc0dzjZ6oQHjYsTz3dWxOgu8CLa/
 gb5gIN3cUKSuA40oEeKV0bkgShAnk6p84dY072yK/grokAhTJ0P3bFLoXvWa1xrv7p5v
 3Pak3Hg/xt38yUG1lgvhMoB/UQLUxw4tlUyBOZVPbPjqCGbihwCrr2jNdvafVxlmGSTc
 NfXQxsVNHN4m34L/uNAYms2il/gFc4CZu0tEeLzsm6Ga0F49nm+ufJan1wJeKC0K1YSa
 wSzw==
X-Gm-Message-State: APjAAAW2OaAhOme7bTZ9x1OJGaCSemqAJoNaZPpW+OkV+GOtAUhfXd62
 +1j9wfm/cxWJ2XAn9e5zIdkeS5JiwqoOQuAI2YFgWjsoqaSIUbdLKDWmFV+uhgDWYrcMwdN4ibu
 XpkgKrJaQ6TPIVvvOug6h3w==
X-Received: by 2002:ac8:2f66:: with SMTP id k35mr8350224qta.174.1560255306143; 
 Tue, 11 Jun 2019 05:15:06 -0700 (PDT)
X-Google-Smtp-Source: APXvYqxhF4XgPlocgeRhLXwXuc/D8BAApSc0mw8dgM3ljSXF4TJQGgRb6mcjBZqegBzYkhgZk1Mnyg==
X-Received: by 2002:ac8:2f66:: with SMTP id k35mr8350200qta.174.1560255305909; 
 Tue, 11 Jun 2019 05:15:05 -0700 (PDT)
Received: from bentobox.localnet
 (p200300C5970379EE000000000000070D.dip0.t-ipconnect.de.
 [2003:c5:9703:79ee::70d])
 by smtp.gmail.com with ESMTPSA id q37sm7950617qtj.94.2019.06.11.05.15.04
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Tue, 11 Jun 2019 05:15:05 -0700 (PDT)
From: Sven Eckelmann <seckelmann@datto.com>
To: ath10k@lists.infradead.org
Subject: Re: ath10k: TPC: Max antenna gain
Date: Tue, 11 Jun 2019 14:14:59 +0200
Message-ID: <1812561.GRj0lRSQoq@bentobox>
In-Reply-To: <17533428.x5EMhTv9h2@bentobox>
References: <17533428.x5EMhTv9h2@bentobox>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190611_051510_115211_A6E7E729 
X-CRM114-Status: GOOD (  11.26  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [216.205.24.195 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Maharaja Kennadyrajan <mkenna@codeaurora.org>,
 Maharaja Kennadyrajan <c_mkenna@qti.qualcomm.com>
Content-Type: multipart/mixed; boundary="===============7494281371158134109=="
Sender: "ath10k" <ath10k-bounces@lists.infradead.org>
Errors-To: ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org

--===============7494281371158134109==
Content-Type: multipart/signed; boundary="nextPart3026271.I8CKX0oS5p"; micalg="pgp-sha512"; protocol="application/pgp-signature"

--nextPart3026271.I8CKX0oS5p
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

On Tuesday, 11 June 2019 12:59:25 CEST Sven Eckelmann wrote:
> Hi,
> 
> the firmware doesn't seem to parse the max_antenna gain from 
> ath10k_update_channel_list anymore. At least the 
> /sys/kernel/debug/ieee80211/phy0/ath10k/tpc_stats shows me max antenna gain 0 
> when I set it in ath10k_update_channel_list to 12.
[...]

Just checked the code a little bit more and there seem to be two problems. One 
is in ath10k and the other one is in my PoC change. The problem in the latter 
is the missing change in the vdev_restart.

But the problem in ath10k is more interesting. It seems to be that the 
firmware expects the max_antenna_gain in dBm but the ath10k driver sends it in 
twicepower (0.5 dBm steps). At least this is what I see in tpc_stats when 
setting all max_antenna_gain to 12.

And the funniest part is that the configured 9 dBm is shown as 12 twicepower 
(6 dB) in tpc_stats for 5GHz PHYs when using the US country code (but not when 
using Germany or checking 2.4GHz PHYs). Is there some hardcoded limiter in the 
firmware for FCC 5GHz?

Kind regards,
	Sven
--nextPart3026271.I8CKX0oS5p
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part.
Content-Transfer-Encoding: 7Bit

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEF10rh2Elc9zjMuACXYcKB8Eme0YFAlz/m0MACgkQXYcKB8Em
e0aM+xAAl4Za7SzWPTVW8KHfUUNcTBrMfotSO04J+C6kZUjraW1KDJrc+KVC2QiE
X/IjwOqMMtqD2bXvXPYihXDhv4hjCWlwGjqrG5MUBheS2g43Gq/W1CEAJtJPD5+V
aB9r2dkizEGdHDvxKgZabNO7kohPZOC6k5a7ykq6fvsg4MkgaL0cU4g4R6txQyoI
AEa9HGi1/KD67fC0tArd3gAFWktX0H1f3/vGZtEkLa2QA7uh3kaN+BA8Cf2vZOU7
BkGlEvlgf8QZUmZLoKI8vxe3HWhmO31zMnzmSefRDepOGRaCPBV2+giEbpqdtsfc
B1D9yFoKmhfexNQ11OqSlbkm1FwWUxQt4kdkTL/d9hnJ1Nw+/lzdV7fxPfTYxWwe
HCcfFpBtCb824V3sVG0p76eU8IsrSPH/Vya7LQmTEsBCrtJIn/TkoDjAiqC7bAH8
vaR/GcaGFVD4+jDcEsRaePNGjfXezE3G2M8XKGqyw90yZcQwcv8xSvRphU1MWe3U
CLRvrX5PYZ7UC2Wp+1i3SmZaj+Ha/98Pm82OVMMQOyb6h1o5/VkzfcTOUybW6oYc
g5MPeuESKUY59LLdch8kAp91MGgS3C0YvkG6LiHrmSILv5y+fGuw+5XKdPNeyKHu
sl/5V/y5Q9zUCAJDeyiluxqRjfSXrTVsFfJU5HbU0iI87/cnPq4=
=nns1
-----END PGP SIGNATURE-----

--nextPart3026271.I8CKX0oS5p--





--===============7494281371158134109==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k

--===============7494281371158134109==--





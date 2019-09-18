Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E0B6CB6423
	for <lists+ath10k@lfdr.de>; Wed, 18 Sep 2019 15:14:02 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:To:From:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=iP52/EJMcVuYR7IRYqb6XMOs/jttEZbFmP/jQL4gM0M=; b=os5AOn/9wrqJF4Run4GHeoiO6
	k39qZMG0RNeWBru6Ob9Oqx7GZkCnb3NHV0krsNP/WHNzkRL+3BN1KoyRKEwze1VZJBZe/nzb+VH86
	BxPKIpeUy/YVBRnsR42yuq2gOD8TIudHOJGkj0NumulWTSh63u1KFVvD078oZnUFLGCW4sPOt0TV/
	sIkxmx1YG1iMxSBQvHn8Nr5J8esWy8lZQtj2bDWjBaWaQCdYUGDN1PcmAvBpYYtq1M5REGOFIriIi
	ztVKIEUMP3TqthYGK4jnELQfZkM89vCSPs50cK+g4IfewGD4EJoc+5p2pxEz2ITNfDatEXqt2In4G
	xImiudKtw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iAZmT-0002We-7R; Wed, 18 Sep 2019 13:14:01 +0000
Received: from dvalin.narfation.org ([2a00:17d8:100::8b1])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iAZmN-0002WC-0W
 for ath10k@lists.infradead.org; Wed, 18 Sep 2019 13:13:57 +0000
Received: from bentobox.localnet
 (p200300C5971113F0000000000000063E.dip0.t-ipconnect.de
 [IPv6:2003:c5:9711:13f0::63e])
 by dvalin.narfation.org (Postfix) with ESMTPSA id A307E1FF55;
 Wed, 18 Sep 2019 12:44:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=narfation.org;
 s=20121; t=1568810668;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=4fN6X+sIH7Jw3xYYUZxPZfWLfnNnQDNdbUhuy7Jx1Bc=;
 b=ACsJgPuxmWq/N1gTDKSc5B4xmgS5zYLBcWiOTpoDJcZ//8wTfrThBz4GphxqBJ6y7S4BJv
 tXlcnzS+ByMybU/kOq58scgbhDJe+JLN1Da8vAzJTehXYrTq7B9t/XX8XsRK3hobdsMoOQ
 2OogKPzJ77RZAWLyrBL1Gm02Lsiuov4=
From: Sven Eckelmann <sven@narfation.org>
To: Ben Greear <greearb@candelatech.com>
Subject: Re: [PATCH] cfg80211: Add cumulative channel survey dump support.
Date: Wed, 18 Sep 2019 15:13:50 +0200
Message-ID: <1915721.epgQvm9qp9@bentobox>
In-Reply-To: <9396620.6V9WzEIOqW@bentobox>
References: <1526980556-26707-1-git-send-email-vnaralas@codeaurora.org>
 <b24ec622-8510-d8e4-bbc4-86a34c1dd32b@candelatech.com>
 <9396620.6V9WzEIOqW@bentobox>
MIME-Version: 1.0
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=narfation.org; 
 s=20121; t=1568810668;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=4fN6X+sIH7Jw3xYYUZxPZfWLfnNnQDNdbUhuy7Jx1Bc=;
 b=eE3WRZdAV2lP7ga+7twwQjXqfJCWE42A9DsVQd0tnCB2isXbbdD8qiCI5JVqLvKOsFKmwb
 9tnMDow1I0kor2fSHJafjRLze1f0pPTBO/Zt+rd5p047HeSUuMCgvH13uQ2Q8RAHtz9aYI
 4NQ9I7E0JwZ6HfO32KnO6zg2iKBOHnQ=
ARC-Seal: i=1; s=20121; d=narfation.org; t=1568810668; a=rsa-sha256; cv=none;
 b=cO4AI1Pt6iMNkh3u29JVUClIjnGCErFXHNX2zO1ZRHPfsOsAWlJBcvluQnTwdJKuYSbSLa
 4O7NW/0dmUGz3WjF3cEj1w/e5M34tbwt7QQOGLr9V/Uoil8jC/wVbhm0TJvkxXzvoqL3NI
 GUFvly9wgNkYEL4glCJirs00a8AyjBo=
ARC-Authentication-Results: i=1; dvalin.narfation.org;
 auth=pass smtp.auth=sven smtp.mailfrom=sven@narfation.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190918_061355_206188_B80B9E30 
X-CRM114-Status: UNSURE (   4.68  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [2a00:17d8:100:0:0:0:0:8b1 listed in]
 [list.dnswl.org]
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
Content-Type: multipart/mixed; boundary="===============7519398677582963616=="
Sender: "ath10k" <ath10k-bounces@lists.infradead.org>
Errors-To: ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org

--===============7519398677582963616==
Content-Type: multipart/signed; boundary="nextPart3096840.zzhJXNy4Gy"; micalg="pgp-sha512"; protocol="application/pgp-signature"

--nextPart3096840.zzhJXNy4Gy
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

On Wednesday, 18 September 2019 15:07:11 CEST Sven Eckelmann wrote:
[...]
> I have now prepared a test patch [1] to get the data every 10 seconds. This 
> was a compromise between having useful information over time and the 
> overflowing problem. 

...over time without too many "bss channel survey timed out" errors and...

Kind regards,
	Sven
--nextPart3096840.zzhJXNy4Gy
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part.
Content-Transfer-Encoding: 7Bit

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEF10rh2Elc9zjMuACXYcKB8Eme0YFAl2CLY8ACgkQXYcKB8Em
e0b1SxAAtEDe5QoD4u5/aCttIe1q0DlYYCSY1cIBm7fIp8VuQsZYr5zL7lI/NEEv
ISZmqrQ5Ml4fjKPZ8P0lV1mHGvKrdAS82gk+f/QmAE5IpMeOZ2UsYN8h4BY3aH5+
tXAG+6/Dwy3hnFP4TluS4zdIhN30tSXxbafV0LL7im25GDHTwYWczQ38Y38xko62
974A6iwfavwuUSuN9L8wwee1EHPsueh7dclPoGkeLfBtMxD/vr7EE3GAffGvnYSk
FpiGZotSulIEWg7oLkZoF2QUFxZ9GaN5uVY+t2WWF+cC2xpTtjS6CfDXHRKVq9B4
Slw2+EyFe0X5u6P7cimmwR9FRSGmJYi7pFdU6wt698Oc+1/+tHGXMVnuViIMrVgT
LHt+POqDyrB8+dilI2UQKKXaK/0NdfboB2PlIZxta6CVTf93N0E9xVxmIW2IbVIi
UkBHmGjmz5C70Z1Z3MuYs+0iyMmBov0Lhr23+3t85SK8M7Hdk6DNrs9W43r7VcwE
ZSgwAF5OfNeTsWvbJWFRTOr7bVaFju8EhY/zQOgXWCWmrS3BTYvGhfL2tl9PtyWy
ELrflQVZWNbYy1ECF4ZDFAh1UBaBo4l9vhft7OeB36cFVMPAypX+ZR3wNI8uHxay
LAfGb5aSMfNj4U+1g3zuZ+7WZhC6C/tOJttV7ljFCH9fAqN4YHo=
=vMka
-----END PGP SIGNATURE-----

--nextPart3096840.zzhJXNy4Gy--





--===============7519398677582963616==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k

--===============7519398677582963616==--





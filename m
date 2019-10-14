Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3BFBBD5BDE
	for <lists+ath10k@lfdr.de>; Mon, 14 Oct 2019 09:07:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:To:From:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=KUg3tbDP/OfDD0vwy+2R9hUYciTjfYZBc03QFtKGMIw=; b=L/bUJtNqsE7cdU2ezcNA78iPn
	ezcJvZJVCG9/M+FJ4vPje7rqth0U9eN1zT6snY4pXC67wjs+59HdibNAi3iEblj0wJ83Y2g4AM6Ec
	xlDKZxW0zBEyONPeRXer6mXU20klNNGpJ+xp6Yt2c4XuM9xuQpoVueEa+SVDvH5S4hXv6oXd4eHHk
	eMBJ/21wlku+S4GMcewmudJ7w7LEzQBR467oGsfAJ3AGtn+iY9ft3smYIh6NfPDcVz6ljPdH/xASo
	2/R9DMgl2gzcTmtGmbvly00NKjKCZ9y3mFoW96UDSTrdzn/xMtMk1a4PDDM3QOTx6dwIf3PvSiEWR
	n4ztLqcwQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iJuSP-0003NI-R9; Mon, 14 Oct 2019 07:07:53 +0000
Received: from dvalin.narfation.org ([2a00:17d8:100::8b1])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iJuSL-0003Lo-NI
 for ath10k@lists.infradead.org; Mon, 14 Oct 2019 07:07:51 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=narfation.org;
 s=20121; t=1571036865;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=axC+jM4ADqxgdZJ1iBxOf/jTq46214TEMAimEqIXNSc=;
 b=MDel8nDR21+wfafqAJXW1f0RGPFbIWDMQ/92nyka1xYDL7yF20tVInjdlxGyGzJnLvr4+L
 aqaN6zA+zuopcXZ5iQ93FyKr3xdcf1aDpMgT1xYcWEWgXUH7X7Z06mHVj7nmvk4eMQWvue
 5ZshFriTeYLmL9+GxkV0naLBUPTbr7I=
From: Sven Eckelmann <sven@narfation.org>
To: Sebastian Gottschall <s.gottschall@newmedia-net.de>
Subject: Re: [RFC PATCH 0/2] ath10k: provide survey info as accumulated data
Date: Mon, 14 Oct 2019 09:07:42 +0200
Message-ID: <1614044.H5m0Cyd3Ly@bentobox>
In-Reply-To: <9a9ec99b-9643-7288-eed5-b549a9fe1487@newmedia-net.de>
References: <20190918124259.17804-1-sven@narfation.org>
 <9a9ec99b-9643-7288-eed5-b549a9fe1487@newmedia-net.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191014_000750_049807_626F7B8A 
X-CRM114-Status: GOOD (  10.13  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
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
Cc: vnaralas@codeaurora.org, linux-wireless@vger.kernel.org,
 ath10k@lists.infradead.org
Content-Type: multipart/mixed; boundary="===============8609644286598458446=="
Sender: "ath10k" <ath10k-bounces@lists.infradead.org>
Errors-To: ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org

--===============8609644286598458446==
Content-Type: multipart/signed; boundary="nextPart3096302.iHDqCeegG6"; micalg="pgp-sha512"; protocol="application/pgp-signature"

--nextPart3096302.iHDqCeegG6
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

On Monday, 14 October 2019 00:15:20 CEST Sebastian Gottschall wrote:
> i checked your patch on 10.4 based chipsets with 9984. the values are 
> now looking bogus and wrong at all. busy and active time time in ms does 
> increase in hours each second
> the problem seem to be that your patch is 10.2.4 only related. 
> ath_clean_survey does not trigger on 10.4 so the values double itself 
> each time the event raises since you add the full values and not just a 
> delta on top

Thanks for the feedback. So we have now a firmware 10.2.4 which is counting 
busy + active up and has wraparound problems. And then we have a 10.4 firmware 
(on QCA9888 and QCA4019) which is clearing everything as expected with 
WMI_BSS_SURVEY_REQ_TYPE_READ_CLEAR  and then we have some 10.4 firmware (one 
QCA9984) which behaves more like ath 10.2.4 firmware but is marked as 
ATH10K_HW_CC_WRAP_SHIFTED_EACH like the QCA4019.

So I have no idea how to fix this when QCA4019 and QCA9984 are currently 
marked the same but behave differently. Does somebody have a overview how the 
different HW versions should behave or is there some special bit in the data 
reported by the firmware which can be used to evaluate the expected behavior?

Kind regards,
	Sven
--nextPart3096302.iHDqCeegG6
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part.
Content-Transfer-Encoding: 7Bit

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEF10rh2Elc9zjMuACXYcKB8Eme0YFAl2kHr4ACgkQXYcKB8Em
e0Y0gA/+J3vh6vqdz7b6HrkGIgGPto8oO94eyZVurrnv2bQg6wZtGaBZsiw0c0Fg
+kl6b+xDAOwy2WzfEEqZUAY1Wkbdub7MHG41dLJ2sJ8UvARksGNuPx6qT16yseHY
ewaTaIdBb6cIQmb/HewibxC8sIeLAz2s0Qj4UPxqlnmgRiEK39VHZ3tyGD1uptcH
Br0SkxDg4nTvIKqvNVHRIq8iduM+InK0mMl3WXV+/Q0ax93CR3wfStHE0G2hP9ep
fO1ZWdgPtw4Do9RRh9j+0K6eEmyA/EhDy6kTYptonIRcz9+yRRS8OhNtg+8xrwIk
0nPhlBKpvZKcSDhISyJfakbktXVFuEYaPgJXilBK7AjVPIUxS+9VVCR1v1AxA/Ep
CcDn/akUBbFf4s6/HD2kiQUEghfxrPp4lt0qqBb0Mbe4eDjVlAtbQFQll1RyOf9F
Vf2K/0I/bdIG/TCAu7qDLJqypUdjOSUAYxBe2tkuewkLji+xFg61Z9J8Pdb/gFUZ
ba/tacoXY1gRF+56yaj07WlJg1GcKtMWNmP+531awg/sSm7v1M89qhXM5kqMAc9H
5dIt1m/rSiTDW9zjOUS1Rh0WtUnZYqG4MKZNxLqasat9rwW3it9PPCHykTlDmHay
OtZakA1Y43+fELFCVsJgJnfPC6y3F0o6FFHL1pXCIvI4+JfEUIQ=
=GLvq
-----END PGP SIGNATURE-----

--nextPart3096302.iHDqCeegG6--





--===============8609644286598458446==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k

--===============8609644286598458446==--





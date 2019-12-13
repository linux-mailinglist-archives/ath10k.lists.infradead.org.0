Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A908B11E154
	for <lists+ath10k@lfdr.de>; Fri, 13 Dec 2019 10:58:21 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=lsZ4i4Yuozwwpa/pIs3DuWLPOFca5BWJkL4Gq3r9zo8=; b=hD4qKJU7VmRdfg
	98QPJGWsah5Fml+GCBz4v5bBExORnLydayQ/PauY0QHk1KhfuUT5ivb5w01HsYRdvPNTR1FlFpgbZ
	7xTsIWcDtPLBitOkHMeenZG3djX/V8mwK+0cEil/KbP0KnfUvuaBogfkUvcWCJ5bwdZZ5fgeFj0pQ
	Rv6wIIflboz0Cln/Lqdxh9AzROLaom6g44IC/xNEJxy15Vp0MmgrmdIhPVHSaKjJ5ItLqrdWIp7yV
	cTxP8/jzvMhM7kjoNC5XVCVJE8A4pYjm9VvPH0ElVAzm0V3oGieOLHOxONpiBcY+qVslb4HEImSda
	erR9HbIjlMk7OpOqTVvw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ifhiG-0003ip-Cb; Fri, 13 Dec 2019 09:58:20 +0000
Received: from s3.sipsolutions.net ([2a01:4f8:191:4433::2]
 helo=sipsolutions.net)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ifhiB-0003gR-F7
 for ath10k@lists.infradead.org; Fri, 13 Dec 2019 09:58:16 +0000
Received: by sipsolutions.net with esmtpsa
 (TLS1.3:ECDHE_SECP256R1__RSA_PSS_RSAE_SHA256__AES_256_GCM:256)
 (Exim 4.92.3) (envelope-from <johannes@sipsolutions.net>)
 id 1ifhi6-009eZZ-RF; Fri, 13 Dec 2019 10:58:11 +0100
Message-ID: <fd7b4cb48f3510d81d227ae8020c3b6c46f4a4b0.camel@sipsolutions.net>
Subject: Re: [PATCH 4/4] mac80211: Sync airtime weight sum with per AC
 synced sta airtime weight together
From: Johannes Berg <johannes@sipsolutions.net>
To: Yibo Zhao <yiboz@codeaurora.org>, linux-wireless@vger.kernel.org
Date: Fri, 13 Dec 2019 10:58:09 +0100
In-Reply-To: <1576221593-1086-5-git-send-email-yiboz@codeaurora.org>
 (sfid-20191213_082437_402312_070F042E)
References: <1576221593-1086-1-git-send-email-yiboz@codeaurora.org>
 <1576221593-1086-5-git-send-email-yiboz@codeaurora.org>
 (sfid-20191213_082437_402312_070F042E)
User-Agent: Evolution 3.34.2 (3.34.2-1.fc31) 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191213_015815_519148_DD781E09 
X-CRM114-Status: UNSURE (   3.38  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.4 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.4 KHOP_HELO_FCRDNS       Relay HELO differs from its IP's reverse DNS
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
Cc: ath10k@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "ath10k" <ath10k-bounces@lists.infradead.org>
Errors-To: ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org


I'm going to assume that Toke will review all of this and there will be
changes, so you'd resend anyway ...

> - * @airtime_weight: station weight for airtime fairness calculation purposes
> + * @airtime_weight: station per-AC weight for airtime fairness calculation
> + * purposes

If you do, please replace the "*<space>purposes" by "*<tab>purposes" :-)

(otherwise I can just fix that myself too, but ...)

johannes


_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k

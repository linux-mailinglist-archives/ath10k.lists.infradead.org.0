Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 542391C5A5
	for <lists+ath10k@lfdr.de>; Tue, 14 May 2019 11:06:10 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Mime-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Zau6jHKifeN5LVJ75xn0Tx6Eogmd8K+Jkk5TyJZ/spE=; b=ErbTkg/pNfcary
	LlI3vrpqTTAVhuMvu4K3VsVOZVWEGvXFFIy78r//2LO2oedfGEQncNTJ7Zf2tgDOyt1yjYf4sHUqf
	ZZM7bX0+tHRvQ9ya8K445uasIyuqYyV148hQdK67XsTX26z2f5+Ce24uvM+Ln8xNEGxUyOvOsFycw
	+niUY2h7MNFXgsc6fxturBwKlFWJQaUpSAXuJIkDJdovAWxgwUp2AtGMgd+zOdA6d8Uz4Z6In4doa
	jzGPxUdcQxU+1vpJ40BYVt5l60eOhnqHds4FnRFMUTN4LeutUqMx2rD0ngf7Vl+s1lOvqfsD0dO32
	KISeYaYIWUoX86pg0aAQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hQTNw-0002ia-MJ; Tue, 14 May 2019 09:06:08 +0000
Received: from s3.sipsolutions.net ([2a01:4f8:191:4433::2]
 helo=sipsolutions.net)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hQTNt-0002ha-BC
 for ath10k@lists.infradead.org; Tue, 14 May 2019 09:06:06 +0000
Received: by sipsolutions.net with esmtpsa
 (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <johannes@sipsolutions.net>)
 id 1hQTNr-0007KZ-MM; Tue, 14 May 2019 11:06:03 +0200
Message-ID: <7c92f5cf51eaec1d5449698d90f5b6c5ca6c2bea.camel@sipsolutions.net>
Subject: Re: [PATCH v2] mac80211: remove warning message
From: Johannes Berg <johannes@sipsolutions.net>
To: Yibo Zhao <yiboz@codeaurora.org>, linux-wireless@vger.kernel.org
Date: Tue, 14 May 2019 11:05:51 +0200
In-Reply-To: <1557824507-17668-1-git-send-email-yiboz@codeaurora.org>
 (sfid-20190514_110314_752671_7E53E9A2)
References: <1557824507-17668-1-git-send-email-yiboz@codeaurora.org>
 (sfid-20190514_110314_752671_7E53E9A2)
X-Mailer: Evolution 3.28.5 (3.28.5-2.fc28) 
Mime-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190514_020605_375570_5B0672FD 
X-CRM114-Status: UNSURE (   6.05  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
X-BeenThere: ath10k@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <ath10k.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/ath10k>,
 <mailto:ath10k-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/ath10k/>
List-Post: <mailto:ath10k@lists.infradead.org>
List-Help: <mailto:ath10k-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/ath10k>,
 <mailto:ath10k-request@lists.infradead.org?subject=subscribe>
Cc: Zhi Chen <zhichen@codeaurora.org>, ath10k@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "ath10k" <ath10k-bounces@lists.infradead.org>
Errors-To: ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org

On Tue, 2019-05-14 at 17:01 +0800, Yibo Zhao wrote:
> In multiple SSID cases, it takes time to prepare every AP interface
> to be ready in initializing phase. If a sta already knows everything it
> needs to join one of the APs and sends authentication to the AP which
> is not fully prepared at this point of time, AP's channel context
> could be NULL. As a result, warning message occurs.
> 
Err, what was the point in sending v2 without any changes?

johannes


_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k

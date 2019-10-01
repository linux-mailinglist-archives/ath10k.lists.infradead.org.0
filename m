Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 25CB9C311C
	for <lists+ath10k@lfdr.de>; Tue,  1 Oct 2019 12:19:39 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=DiPtelfYJ8TxjiL54RIb+R83XLJlaZ9DJmxv31gvHyw=; b=hygDhVVfOkHCTN
	peqY8tbeOiRSEAGFFke4+B/mC+kN0r9qjGvPEqu+7x+GZ7RCQ0oDwD3bSM2SU3xO8IP6kakTC4Ifh
	OBHCoqcBtU8+8qF9CMBUbga4cyPC+8kYr2mImnLZ/ufZSPlPVv1xw13X62ixMzi9XFFhep4861rJW
	5S4UnCCHOhx8uOP9h7/CXM3WPYzxHy8l+skQ/KpXw3Vm5aFvKYMalJ37ns9KSg4XRMTfLwaMWTwnr
	Uvp1lYKX4yEk8uNPsKIcjVjGFWyN43W5JV753asJJCMZrp7xwRg6HMsNMZ2QpQ5nlvwedXiKymWLP
	bktl7s7wY7JNjH3mgmnw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iFFFn-0001Ew-D7; Tue, 01 Oct 2019 10:19:35 +0000
Received: from s3.sipsolutions.net ([2a01:4f8:191:4433::2]
 helo=sipsolutions.net)
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iFFFk-0001EX-Fc
 for ath10k@lists.infradead.org; Tue, 01 Oct 2019 10:19:33 +0000
Received: by sipsolutions.net with esmtpsa
 (TLS1.3:ECDHE_SECP256R1__RSA_PSS_RSAE_SHA256__AES_256_GCM:256)
 (Exim 4.92.2) (envelope-from <johannes@sipsolutions.net>)
 id 1iFFFf-00057v-KI; Tue, 01 Oct 2019 12:19:27 +0200
Message-ID: <20985660fd0872db1511948bd42cd925cef13cee.camel@sipsolutions.net>
Subject: Re: [PATCH V3 0/4] Enable virtual time-based airtime scheduler
 support on ath10k
From: Johannes Berg <johannes@sipsolutions.net>
To: Yibo Zhao <yiboz@codeaurora.org>, linux-wireless@vger.kernel.org
Date: Tue, 01 Oct 2019 12:19:26 +0200
In-Reply-To: <1569223201-1490-1-git-send-email-yiboz@codeaurora.org>
 (sfid-20190923_092024_747005_B4B11EDF)
References: <1569223201-1490-1-git-send-email-yiboz@codeaurora.org>
 (sfid-20190923_092024_747005_B4B11EDF)
User-Agent: Evolution 3.30.5 (3.30.5-1.fc29) 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191001_031932_520066_2AC97599 
X-CRM114-Status: UNSURE (   4.88  )
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

On Mon, 2019-09-23 at 15:19 +0800, Yibo Zhao wrote:
> This series fix some issues when enabling virtual time-based airtime scheduler on ath10k.
> 
Given the lengthy discussion here and also over in the related thread
about AQL, I'm assuming you're going to repost this eventually.

johannes


_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k

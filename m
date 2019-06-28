Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id ABB4D59335
	for <lists+ath10k@lfdr.de>; Fri, 28 Jun 2019 07:08:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:In-Reply-To:
	Date:References:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=tNq76cRJ+WSh+RXlINNrE1jCvhVfIPghM9JNQ2yzebc=; b=ZWxA2NUX2woWYj
	dXVSY82gNKyh5WSayc3BB+UVp5EwMgRLwOeuYD4PSKtkBozOllFLIcWNzDslJuMoDV0HE7Hp5lTGk
	7iPmSjfI7WvaEISP/BpDcC8oOL/126sNuJnQw6fKcNUug2Zt41tLEy+4PN19BApOw0+etN845qTof
	I9Pf4IpZqtQLpUZenpKCuGkQ5SmJPsit7G1aO+08P4cHiIOZQZ4UfT/snvsKuZM0Sa20DAeDa0SQU
	6aIDAOyFXwTpyVDxddF52mOnFXHBA13vEB4VhuTFWyJ14AEU3XYaBr0vV4r4kugAmz/437/5JpPNq
	WYHYIOLsy6acDEqn3LvA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hgj7V-00047z-Sg; Fri, 28 Jun 2019 05:08:21 +0000
Received: from smtp.codeaurora.org ([198.145.29.96])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hgj7I-00042m-90
 for ath10k@lists.infradead.org; Fri, 28 Jun 2019 05:08:09 +0000
Received: by smtp.codeaurora.org (Postfix, from userid 1000)
 id ECF4260E40; Fri, 28 Jun 2019 05:08:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=codeaurora.org;
 s=default; t=1561698487;
 bh=rb7ZCFwECe0+1BB4kbofLdYTkobYyf8xm5XvPY+X28k=;
 h=From:To:Cc:Subject:References:Date:In-Reply-To:From;
 b=K+qxu1wmpEacp/1rtwuUS46ONjSuQSWqb76Wj/NjxihP4DQKdSLVRMrcQO89KZR0J
 taLLRWai3ZEc0sDY9UgAWS8kll+VU4FEDQ2xFt5izeC3TTxSZxDVZX8468CpLKUERh
 c4L7O51ZDD8MpBtaBvL2vJcifAdQfK/nSs/gfvEg=
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
 pdx-caf-mail.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=2.0 tests=ALL_TRUSTED,BAYES_00,
 DKIM_INVALID,DKIM_SIGNED,SPF_NONE autolearn=no autolearn_force=no
 version=3.4.0
Received: from x230.qca.qualcomm.com (88-114-240-156.elisa-laajakaista.fi
 [88.114.240.156])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 (Authenticated sender: kvalo@smtp.codeaurora.org)
 by smtp.codeaurora.org (Postfix) with ESMTPSA id 979C1607C3;
 Fri, 28 Jun 2019 05:08:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=codeaurora.org;
 s=default; t=1561698487;
 bh=rb7ZCFwECe0+1BB4kbofLdYTkobYyf8xm5XvPY+X28k=;
 h=From:To:Cc:Subject:References:Date:In-Reply-To:From;
 b=K+qxu1wmpEacp/1rtwuUS46ONjSuQSWqb76Wj/NjxihP4DQKdSLVRMrcQO89KZR0J
 taLLRWai3ZEc0sDY9UgAWS8kll+VU4FEDQ2xFt5izeC3TTxSZxDVZX8468CpLKUERh
 c4L7O51ZDD8MpBtaBvL2vJcifAdQfK/nSs/gfvEg=
DMARC-Filter: OpenDMARC Filter v1.3.2 smtp.codeaurora.org 979C1607C3
Authentication-Results: pdx-caf-mail.web.codeaurora.org;
 dmarc=none (p=none dis=none) header.from=codeaurora.org
Authentication-Results: pdx-caf-mail.web.codeaurora.org;
 spf=none smtp.mailfrom=kvalo@codeaurora.org
From: Kalle Valo <kvalo@codeaurora.org>
To: Johannes Berg <johannes@sipsolutions.net>
Subject: Re: [PATCH 2/2] ath10k: pci: remove unnecessary casts
References: <1561661250-30528-1-git-send-email-kvalo@codeaurora.org>
 <1561661250-30528-2-git-send-email-kvalo@codeaurora.org>
 <58e8952b87c8aa533c15fe5650f3f71288377f36.camel@sipsolutions.net>
 <a6c87741bc3e992bf61d2706834e069917018745.camel@sipsolutions.net>
Date: Fri, 28 Jun 2019 08:08:04 +0300
In-Reply-To: <a6c87741bc3e992bf61d2706834e069917018745.camel@sipsolutions.net>
 (Johannes Berg's message of "Thu, 27 Jun 2019 21:15:48 +0200")
Message-ID: <87r27eqouj.fsf@codeaurora.org>
User-Agent: Gnus/5.13 (Gnus v5.13) Emacs/24.5 (gnu/linux)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190627_220808_432896_E486080B 
X-CRM114-Status: GOOD (  12.28  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.145.29.96 listed in list.dnswl.org]
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
Cc: linux-wireless@vger.kernel.org, ath10k@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "ath10k" <ath10k-bounces@lists.infradead.org>
Errors-To: ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org

Johannes Berg <johannes@sipsolutions.net> writes:

> On Thu, 2019-06-27 at 21:12 +0200, Johannes Berg wrote:
>> On Thu, 2019-06-27 at 21:47 +0300, Kalle Valo wrote:
>> > Fixes checkpatch warnings:
>> > 
>> > drivers/net/wireless/ath/ath10k/pci.c:926: unnecessary cast may
>> > hide bugs, see http://c-faq.com/malloc/ma
>> > drivers/net/wireless/ath/ath10k/pci.c:1072: unnecessary cast may
>> > hide bugs, see http://c-faq.com/malloc/m
>> 
>> I think you cut off the link there, did you mean
>> http://c-faq.com/malloc/mallocnocast.html perhaps?

Yes, thanks. Fixed now in the pending branch.

> Which I should've read before replying ... WHAT? We consider calling
> undeclared functions an *error* in the kernel, this is quite pointless.

Yeah, the link checkpatch provides is pointless. TBH I didn't even read
it until you commented on it :) But the patch is still good to have as
there's no point of use casting on void pointers, it's just extra cruft.
Right?

-- 
Kalle Valo

_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k

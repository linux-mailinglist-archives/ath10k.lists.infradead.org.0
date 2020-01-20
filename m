Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F2D95142C25
	for <lists+ath10k@lfdr.de>; Mon, 20 Jan 2020 14:34:17 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:Subject:To:From:
	Date:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=9EjUjr2hCERSH2t8AzqoZzWu0YdexReAoE2WvVrq5Ko=; b=mM8lYIeF81hhdyPe/cwQujB5j
	H0sE1zLY632LkR1IaKmj7TqGqgnR7i3pJeXEM7Fuwvg22SsEUjsrakIrkr3KPjZVYr+b6MrES2WEy
	4KWx6WOaUdmMdGLRywWFFrdfvk7w5CVpGMBR5q4duybu9h/Ybn0AXX4l0rtdyeWz5S10lV6on9Ckb
	s7RMFDkrPl+RyYn6HHbF1lWe+E0VPdyUyMuJBzpBQVv94/lb9+kCgng/UwX/eigbjvH7tqq/+F3l/
	kDRjBIv/J3Or7aef7izQ5o+MSz+vDUrSpjgP2AzYsDHtW1xEsm/ARDrAoH1eh+Dxz7kWs8+pb43qj
	8mKMY2PRg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1itXC0-00028Q-WD; Mon, 20 Jan 2020 13:34:13 +0000
Received: from mail26.static.mailgun.info ([104.130.122.26])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1itXBt-00027T-Im
 for ath10k@lists.infradead.org; Mon, 20 Jan 2020 13:34:10 +0000
DKIM-Signature: a=rsa-sha256; v=1; c=relaxed/relaxed; d=mg.codeaurora.org;
 q=dns/txt; 
 s=smtp; t=1579527243; h=Message-ID: References: In-Reply-To: Subject:
 Cc: To: From: Date: Content-Transfer-Encoding: Content-Type:
 MIME-Version: Sender; bh=3/luni3J7ScBx0bY1SZF2X8ybATefN1wEs60Hdbp9to=;
 b=PHZF0itjWiLOmU5AK1LlVl1OKlqb3W/gm4Zy1q/ZnQnvsg9KTX2gmnMYvIsBHckDBOIJCJxx
 1EZISRQKPPBIwOHsgG7EanH78DxpIKEHp3owqJz/u+kG2Ck5vNXbuIha56eoyUqHiIVwF0c7
 3tmb7RDjfNY1cdKPw4qtOWu3boc=
X-Mailgun-Sending-Ip: 104.130.122.26
X-Mailgun-Sid: WyJiZDQ3OSIsICJhdGgxMGtAbGlzdHMuaW5mcmFkZWFkLm9yZyIsICJiZTllNGEiXQ==
Received: from smtp.codeaurora.org
 (ec2-35-166-182-171.us-west-2.compute.amazonaws.com [35.166.182.171])
 by mxa.mailgun.org with ESMTP id 5e25ac49.7f0a35fa7110-smtp-out-n02;
 Mon, 20 Jan 2020 13:34:01 -0000 (UTC)
Received: by smtp.codeaurora.org (Postfix, from userid 1001)
 id 096A0C43383; Mon, 20 Jan 2020 13:34:01 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
 aws-us-west-2-caf-mail-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.0 required=2.0 tests=ALL_TRUSTED autolearn=ham
 autolearn_force=no version=3.4.0
Received: from mail.codeaurora.org (localhost.localdomain [127.0.0.1])
 (using TLSv1 with cipher ECDHE-RSA-AES256-SHA (256/256 bits))
 (No client certificate requested) (Authenticated sender: wgong)
 by smtp.codeaurora.org (Postfix) with ESMTPSA id C5573C433CB;
 Mon, 20 Jan 2020 13:34:00 +0000 (UTC)
MIME-Version: 1.0
Date: Mon, 20 Jan 2020 21:34:00 +0800
From: Wen Gong <wgong@codeaurora.org>
To: Justin Capella <justincapella@gmail.com>
Subject: Re: [PATCH v4 1/2] ath10k: add refcount for ath10k_core_restart
In-Reply-To: <CAMrEMU8DmXBGGU-WNd9bQAVVkHF6SCO7c_wv+dyH9D7KFOB8jw@mail.gmail.com>
References: <20200108031957.22308-1-wgong@codeaurora.org>
 <20200108031957.22308-2-wgong@codeaurora.org>
 <CAMrEMU-UTtxJ-eMoNEBONXJCTpaZCcGc8Mu34wqQNXkpVz=gJA@mail.gmail.com>
 <55ab2d64e78d51a9da587f276899e08b@codeaurora.org>
 <a1950ee2cb8dd9fc10e7d31bf18c9c95@codeaurora.org>
 <CAMrEMU8DmXBGGU-WNd9bQAVVkHF6SCO7c_wv+dyH9D7KFOB8jw@mail.gmail.com>
Message-ID: <7ad4db8ea256a823778edf89b2a1b2fc@codeaurora.org>
X-Sender: wgong@codeaurora.org
User-Agent: Roundcube Webmail/1.3.9
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200120_053405_684443_68E9C77C 
X-CRM114-Status: GOOD (  14.70  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [104.130.122.26 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: linux-wireless@vger.kernel.org, ath10k <ath10k@lists.infradead.org>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "ath10k" <ath10k-bounces@lists.infradead.org>
Errors-To: ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org

On 2020-01-20 17:38, Justin Capella wrote:
> Ok thanks. I am still trying to familiarize myself with ath10k. A
> couple things come to mind:
> 
> firstly recently there was a patch that set stations back to
> associated during recovery, do you know if the branch you're working
> against includes that? I will try to figure that out myself but it's
> at least worth considering.
> 
can you give the patch link or patch?

> If I remember correctly, the sdio rx involves peeking and checking to
> see if the frame/packet continues/has more. In the case of firmware
> recovery/reconfig I think current code enables all sorts of debug
> pktlog stuff, historically it was maybe used as a hack to check for hw
> changes... But I mention it because I think what might be happening in
> some cases is fw crash follows a frame that would continue/extend,
> which is messing with the content and act_len (maybe?)
does it have relation with this patch?
> 
> I also noticed that with aggregation I wind up getting a
> deauth/dissasoc followed by mlme delete sta/peer/key.
> 
does it have relation with this patch?
> I think a retry count could be useful but what do you think of maybe
> using an event / timeout?
> 
does it have relation with this patch?

> 
> 

_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k

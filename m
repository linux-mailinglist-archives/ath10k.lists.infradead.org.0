Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 15887C31E1
	for <lists+ath10k@lfdr.de>; Tue,  1 Oct 2019 12:59:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:Subject:To:From:
	Date:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=xdtdTrIeDBrTQa0G1/Q/edg3FBiZVpC8mSDTEJ9Mjxg=; b=fvO1qr049K2sWPIpJGPVQRF/r
	GF7TZafN3ZR/fOq44ZbvPNGfFFXt9N0BEZdERc6SDfGaRrGng8i46oUbnjW8Ur8H7wk+vsh8U6b20
	AfEbHbezZcfglz6Up+gJmwJ9+FMp/oivANrcD2Dxg2KjVguP/YS7fP1F999v0VMpbdVbbbKFs+Pmb
	n+Zuz8XzrFDMEFkGgbXnufPWw+1F2Q+B0SKEf6NyFvsifcSnXtaxMg1Xpn+xjDCYW5Mv5I1hFb/S6
	2aer252P/csSS1pJnvdVJ3T3sZMjD7M2+Pmye8ihL4tAWtruSLa+ayr1g9kFS96I0CzRM0UDeJ0Lf
	KJMSaD8Nw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iFFsH-0007WZ-Rh; Tue, 01 Oct 2019 10:59:21 +0000
Received: from smtp.codeaurora.org ([198.145.29.96])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iFFsE-0007Vc-Q5
 for ath10k@lists.infradead.org; Tue, 01 Oct 2019 10:59:20 +0000
Received: by smtp.codeaurora.org (Postfix, from userid 1000)
 id 0D800608CE; Tue,  1 Oct 2019 10:59:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=codeaurora.org;
 s=default; t=1569927557;
 bh=iH+bHk9YNb+SDR51Y0QiL2vVXFJFJVavPQIC/mQurFw=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=o6dR18Mdu/W8qaH17dL/VAkoObWjWEo0f1J6ApZBj5iimLL6VfUezvH/k5mVy5msg
 LQ/pTpdKFc08YuPKJ382+NbcnkJMNQrRelYePjQ4/rVIbSOr5HgzY8Tsry2+r14YLl
 Si1i5Tu8UDXWMWAbrLW0JnmEOWJwsqhyWtuT45iY=
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
 pdx-caf-mail.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=2.0 tests=ALL_TRUSTED,BAYES_00,
 DKIM_INVALID,DKIM_SIGNED autolearn=no autolearn_force=no version=3.4.0
Received: from mail.codeaurora.org (localhost.localdomain [127.0.0.1])
 by smtp.codeaurora.org (Postfix) with ESMTP id BB5DC6016D;
 Tue,  1 Oct 2019 10:59:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=codeaurora.org;
 s=default; t=1569927556;
 bh=iH+bHk9YNb+SDR51Y0QiL2vVXFJFJVavPQIC/mQurFw=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=kNo3gg+2oDOUvpgKENR32dmJNKFUBzpq3371JrhvZNDfUFESgkaOkz1Ke+O00oMf5
 ZUruhwOnuJjDytDDHkLE7GxM4n4qosMh/KPEoOWipPNbt/OW6bPTuDUp9SfKmglTcn
 FPDVNHaaNmeY/8FdyAcnTdL0mAJ+QxRPz46DZYt4=
MIME-Version: 1.0
Date: Tue, 01 Oct 2019 18:59:16 +0800
From: Yibo Zhao <yiboz@codeaurora.org>
To: Johannes Berg <johannes@sipsolutions.net>
Subject: Re: [PATCH V3 0/4] Enable virtual time-based airtime scheduler
 support on ath10k
In-Reply-To: <20985660fd0872db1511948bd42cd925cef13cee.camel@sipsolutions.net>
References: <1569223201-1490-1-git-send-email-yiboz@codeaurora.org>
 (sfid-20190923_092024_747005_B4B11EDF)
 <20985660fd0872db1511948bd42cd925cef13cee.camel@sipsolutions.net>
Message-ID: <e710a18d65ecaf2168a27556c85dada8@codeaurora.org>
X-Sender: yiboz@codeaurora.org
User-Agent: Roundcube Webmail/1.2.5
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191001_035918_870155_5E6FC1B1 
X-CRM114-Status: UNSURE (   5.90  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.145.29.96 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: linux-wireless-owner@vger.kernel.org, linux-wireless@vger.kernel.org,
 ath10k@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "ath10k" <ath10k-bounces@lists.infradead.org>
Errors-To: ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org

On 2019-10-01 18:19, Johannes Berg wrote:
> On Mon, 2019-09-23 at 15:19 +0800, Yibo Zhao wrote:
>> This series fix some issues when enabling virtual time-based airtime 
>> scheduler on ath10k.
>> 
> Given the lengthy discussion here and also over in the related thread
> about AQL, I'm assuming you're going to repost this eventually.

Yes, will repost once Toke have updated "mac80211: Switch to a virtual 
time-based airtime scheduler" with his new ideas.
> 
> johannes

-- 
Yibo

_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k

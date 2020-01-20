Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E59A61421DC
	for <lists+ath10k@lfdr.de>; Mon, 20 Jan 2020 04:05:46 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:Subject:To:From:
	Date:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=lXzXX9Sc+Wc8yTZ1a6Gv232EJF/4+Y4S8OxFOOhKjwU=; b=feQ1xK+Sevv++KmBhA9k7lAkw
	H17ljuBaPudfVSmMpuZr4RAxtufZYtcIs0Nb7sUgWaF8kTxhFDq0QDEjuSXwce+DZKFjNhp1C7KKU
	VsRZTvKqXWNQsr0n0DKmZZ5DSTddZDlCUF/twLG9ctGIhFh0lrXl2n+PKwjG4zuFa7rGpwoNb0gyk
	hdPubzGYB9sqmTvIj/SAVa/Ja7Ya1l0Dz88rXpsQ8wsg59C7bLT0oth6r3IAH+EsT7xYl0j3N4KbQ
	u0/20S/NRTIX3zH45IVkR4URW/o5m++0FqPoIpvnTCDWIayMIVcFtNRbV5Vvgxqodkr54/kMObrHN
	qfWjWkOPQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1itNNo-00013U-CC; Mon, 20 Jan 2020 03:05:44 +0000
Received: from mail26.static.mailgun.info ([104.130.122.26])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1itNNk-000139-Fi
 for ath10k@lists.infradead.org; Mon, 20 Jan 2020 03:05:42 +0000
DKIM-Signature: a=rsa-sha256; v=1; c=relaxed/relaxed; d=mg.codeaurora.org;
 q=dns/txt; 
 s=smtp; t=1579489541; h=Message-ID: References: In-Reply-To: Subject:
 Cc: To: From: Date: Content-Transfer-Encoding: Content-Type:
 MIME-Version: Sender; bh=pDKlWN1fmSHr5fcj3YZdXdbjNkmSj+SU5juSWWTVnxc=;
 b=oaUQF9mA03OIxj1Zn0rE/iXtZnSoYYU0JuAp3NFaR5e8puy6O+++OWeP8rFpbk6Z9vrBgP2i
 cjuo3s4I9/GGgAelTTa4obBGsVVsy6x4ifZ8MF6vn05KzeMieOqKcMIIFkLxLWFrqLrXscgO
 n+2p55jYXKwspBjjPNree5yUD9s=
X-Mailgun-Sending-Ip: 104.130.122.26
X-Mailgun-Sid: WyJiZDQ3OSIsICJhdGgxMGtAbGlzdHMuaW5mcmFkZWFkLm9yZyIsICJiZTllNGEiXQ==
Received: from smtp.codeaurora.org
 (ec2-35-166-182-171.us-west-2.compute.amazonaws.com [35.166.182.171])
 by mxa.mailgun.org with ESMTP id 5e251901.7efb27a69d18-smtp-out-n02;
 Mon, 20 Jan 2020 03:05:37 -0000 (UTC)
Received: by smtp.codeaurora.org (Postfix, from userid 1001)
 id CED61C433A2; Mon, 20 Jan 2020 03:05:37 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
 aws-us-west-2-caf-mail-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.0 required=2.0 tests=ALL_TRUSTED
 autolearn=unavailable autolearn_force=no version=3.4.0
Received: from mail.codeaurora.org (localhost.localdomain [127.0.0.1])
 (using TLSv1 with cipher ECDHE-RSA-AES256-SHA (256/256 bits))
 (No client certificate requested) (Authenticated sender: wgong)
 by smtp.codeaurora.org (Postfix) with ESMTPSA id 7B90EC43383;
 Mon, 20 Jan 2020 03:05:36 +0000 (UTC)
MIME-Version: 1.0
Date: Sun, 19 Jan 2020 19:05:36 -0800
From: Wen Gong <wgong@codeaurora.org>
To: Justin Capella <justincapella@gmail.com>
Subject: Re: [PATCH] ath10k: add retry mechanism for ath10k_start
In-Reply-To: <CAMrEMU-57qrCP3Kh_cna-QNCBfGu6G3e0Y_0-wg6axq_EuoCcw@mail.gmail.com>
References: <20200117083605.392-1-wgong@codeaurora.org>
 <CAMrEMU-57qrCP3Kh_cna-QNCBfGu6G3e0Y_0-wg6axq_EuoCcw@mail.gmail.com>
Message-ID: <cf38fc446f5228d904bd993cac9cc332@codeaurora.org>
X-Sender: wgong@codeaurora.org
User-Agent: Roundcube Webmail/1.3.9
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200119_190541_236262_F466FE86 
X-CRM114-Status: UNSURE (   9.48  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [104.130.122.26 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: linux-wireless@vger.kernel.org, ath10k <ath10k@lists.infradead.org>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "ath10k" <ath10k-bounces@lists.infradead.org>
Errors-To: ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org

On 2020-01-19 17:17, Justin Capella wrote:
> Is the same address always used for "struct ath10k *ar = hw->priv" --
> even when driver is stopped / bus errors are encountered? If not this
> could potentially be use after free scenario?
"struct ath10k *ar = hw->priv" will changed only if rmmod 
ath10k_sdio/ath10k_pci/ath10k_ahb...
it will not changed for "ifconfig wlan0 down"
> 
> Most code tries to protect the ->state with the config mutex, might
> need to do that here too
yes, I added conf_mutex to protected the ar->state change in
v2:https://patchwork.kernel.org/patch/11340881/

_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k

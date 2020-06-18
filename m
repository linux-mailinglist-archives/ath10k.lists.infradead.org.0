Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E850C1FEE1E
	for <lists+ath10k@lfdr.de>; Thu, 18 Jun 2020 10:53:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:Subject:To:From:
	Date:MIME-Version:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=fr3a4Fw63Oyr8X47F9u12gljYYgMpZR8puCE+wxTZuo=; b=oNW71oqrKR1vPVYqtWvkJleSu
	FsngzEH6FWsBMB3Dh7HTYOwpvv7v6i7c2JQtbBn+MbbOE17++qPdwV1OZ5AyPTFWPcHhYxUgf2C9v
	M6HG9aYzNrczAezQaStcKERaP5jo8Y6wO6hCxrSuNL75cRd0z6gcyDl3wYfxv4IQv+6cbVTiTj9Ox
	onb4zrnrrQkwnW/7KIgMubvrbewAFp95BNxpKOjkGBiU6yFpixtQYoMFjqqIqhynzl2/lCDCtbpUU
	jPDXfUNAtk4b+RZqU7C/H3i5b533t1vPYdQCEUGFtAkWUW296TDFLtmgcO+rYKPlAAnDhJ87o/ERD
	PTx+0YFcA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jlqIg-0006s3-9I; Thu, 18 Jun 2020 08:53:34 +0000
Received: from mail29.static.mailgun.info ([104.130.122.29])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jlqIZ-0006kH-8O
 for ath10k@lists.infradead.org; Thu, 18 Jun 2020 08:53:31 +0000
DKIM-Signature: a=rsa-sha256; v=1; c=relaxed/relaxed; d=mg.codeaurora.org;
 q=dns/txt; 
 s=smtp; t=1592470409; h=Message-ID: References: In-Reply-To: Subject:
 To: From: Date: Content-Transfer-Encoding: Content-Type: MIME-Version:
 Sender; bh=cI2DgYJkh3QrhMF6WmCHMvawW09DLoDizc/jlO3Tcgs=;
 b=pxW0n419+0YPRG0j7ZtPdFsPUIYMt29rj8zz0tklSIsEU1X39atfePsznoRDA+KumisftbBS
 c14mwar6TI+y7rK2lWWUdjElmna+E1E4XMfdi3CHyX7P3AG+Dwu7EFDELSrhqO+8mGqz2CTN
 z4acuWhpFZbGSy0wEYz/WIoXSvQ=
X-Mailgun-Sending-Ip: 104.130.122.29
X-Mailgun-Sid: WyJiZDQ3OSIsICJhdGgxMGtAbGlzdHMuaW5mcmFkZWFkLm9yZyIsICJiZTllNGEiXQ==
Received: from smtp.codeaurora.org
 (ec2-35-166-182-171.us-west-2.compute.amazonaws.com [35.166.182.171]) by
 smtp-out-n07.prod.us-west-2.postgun.com with SMTP id
 5eeb2b79fe1db4db898ae6f6 (version=TLS1.2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256); Thu, 18 Jun 2020 08:53:13
 GMT
Received: by smtp.codeaurora.org (Postfix, from userid 1001)
 id E644EC43387; Thu, 18 Jun 2020 08:53:12 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
 aws-us-west-2-caf-mail-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.0 required=2.0 tests=ALL_TRUSTED autolearn=ham
 autolearn_force=no version=3.4.0
Received: from mail.codeaurora.org (localhost.localdomain [127.0.0.1])
 (using TLSv1 with cipher ECDHE-RSA-AES256-SHA (256/256 bits))
 (No client certificate requested) (Authenticated sender: wgong)
 by smtp.codeaurora.org (Postfix) with ESMTPSA id AFF0FC433CA;
 Thu, 18 Jun 2020 08:53:12 +0000 (UTC)
MIME-Version: 1.0
Date: Thu, 18 Jun 2020 16:53:12 +0800
From: Wen Gong <wgong@codeaurora.org>
To: bartosz.markowski@tieto.com, ath10k@lists.infradead.org
Subject: Re: [v2,08/13] ath10k: bring back the WMI path for mgmt frames
In-Reply-To: <12d316171b15203f0242a13d5c690687@codeaurora.org>
References: <88b587e85324b50a23a20676c7088d0c@codeaurora.org>
 <12d316171b15203f0242a13d5c690687@codeaurora.org>
Message-ID: <5f4d61bf9447826178a7f3f554e1e9d3@codeaurora.org>
X-Sender: wgong@codeaurora.org
User-Agent: Roundcube Webmail/1.3.9
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200618_015329_523707_A04E9F8C 
X-CRM114-Status: UNSURE (   7.77  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [104.130.122.29 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 RCVD_IN_MSPIKE_H4      RBL: Very Good reputation (+4)
 [104.130.122.29 listed in wl.mailspike.net]
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "ath10k" <ath10k-bounces@lists.infradead.org>
Errors-To: ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org

On 2020-06-18 12:09, Wen Gong wrote:
> On 2020-06-17 16:25, Wen Gong wrote:
>>> +
>>> +			skb_queue_tail(&ar->wmi_mgmt_tx_queue, skb);
>>> +			ieee80211_queue_work(ar->hw, &ar->wmi_mgmt_tx_work);
>> https://patchwork.kernel.org/patch/2947291/
>> (https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/commit/?id=5e00d31a0fb74c36f3b174ff0d4914cf09016e6f)
>> 
>> Do you know why this patch used ieee80211_queue_work, not use "struct
>> workqueue_struct *workqueue" of ath10k?
> No one know it?
ieee80211_queue_work is use local->workqueue of ieee80211_hw, if it is 
blocked by some function of
mac80211 which is wait some mutex, then the pending worker of the queue 
from ath10k will not be
executed again, this is a risk of not using workqueue of ath10k.

I have hit issue about this:
cfg80211_leave called wdev_lock(wdev) to occupy lock, then 
ieee80211_sta_rx_queued_mgmt which is running in
local->workqueue of ieee80211_hw acquire the same lock by function 
sdata_lock(sdata), then it entered wait state
and the workqueue of ieee80211_hw blocked and all pending worker of it 
can not executed.

_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k

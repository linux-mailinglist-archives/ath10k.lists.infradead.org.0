Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 596B31FC882
	for <lists+ath10k@lfdr.de>; Wed, 17 Jun 2020 10:25:39 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:Subject:To:From:Date:MIME-Version:
	Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=nu4YFW7crYMP52NaX+RC9yn3MPJH9QkUiU+jJxdjuLc=; b=Ul+D7wfyfMMFQM
	hs96/pkS1s78nXORGWFhvRjmB2Q3emp6BAiYbpXU4BOXA1euCbT+26k358iNCsP+6QSh9Im8I81uM
	CnAw8VvpaWVOaQ8qL39LDdwbONOwJ+TrI1bV+G1tkoJGG6nfcSDcqzbA+lrmaHFKzM6iWAwOvkfir
	PZSvJ0ZEYqOhA9G7ohLGFGiBlmaEYxWIn9bfyUB6J/pxjbksa+37PL79VKATmBviwYO/HqpddoRaF
	rYeKiNpCdoe4SnXOS4svbQhiSYkGu7jXpSqZC1r/awPYGn+cmOZTjQfPOFI6cnFdJzhUg+hyunxgx
	28jehSMkUBqWQQ+ZMhgA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jlTO3-0002zH-RC; Wed, 17 Jun 2020 08:25:35 +0000
Received: from mail29.static.mailgun.info ([104.130.122.29])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jlTNs-0002x3-8c
 for ath10k@lists.infradead.org; Wed, 17 Jun 2020 08:25:27 +0000
DKIM-Signature: a=rsa-sha256; v=1; c=relaxed/relaxed; d=mg.codeaurora.org;
 q=dns/txt; 
 s=smtp; t=1592382325; h=Message-ID: Subject: To: From: Date:
 Content-Transfer-Encoding: Content-Type: MIME-Version: Sender;
 bh=x9QOfShwxNicoo1T7b4or6aG5iVex3WyFOYxfnTNxfg=;
 b=qG1m2GU0AOx860G5JcE61SKdEIAPgxX143RMe9k88azd07DJXBg1Vwn8Wm7DizR/qriwtF7z
 mipvVnRbM41Jd/OzNNVUYAoMluzLwJ4lnsLWBbvEbE3xqXcrKcL1X/OZeG6PwKMS8Qj3C0CQ
 Yx/6bdy3dNjzo+q3QOHlZ5syeT8=
X-Mailgun-Sending-Ip: 104.130.122.29
X-Mailgun-Sid: WyJiZDQ3OSIsICJhdGgxMGtAbGlzdHMuaW5mcmFkZWFkLm9yZyIsICJiZTllNGEiXQ==
Received: from smtp.codeaurora.org
 (ec2-35-166-182-171.us-west-2.compute.amazonaws.com [35.166.182.171]) by
 smtp-out-n05.prod.us-east-1.postgun.com with SMTP id
 5ee9d36e86de6ccd44d47f6b (version=TLS1.2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256); Wed, 17 Jun 2020 08:25:18
 GMT
Received: by smtp.codeaurora.org (Postfix, from userid 1001)
 id 782CEC43387; Wed, 17 Jun 2020 08:25:17 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
 aws-us-west-2-caf-mail-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.0 required=2.0 tests=ALL_TRUSTED autolearn=ham
 autolearn_force=no version=3.4.0
Received: from mail.codeaurora.org (localhost.localdomain [127.0.0.1])
 (using TLSv1 with cipher ECDHE-RSA-AES256-SHA (256/256 bits))
 (No client certificate requested) (Authenticated sender: wgong)
 by smtp.codeaurora.org (Postfix) with ESMTPSA id 4D405C433CB;
 Wed, 17 Jun 2020 08:25:17 +0000 (UTC)
MIME-Version: 1.0
Date: Wed, 17 Jun 2020 16:25:17 +0800
From: Wen Gong <wgong@codeaurora.org>
To: bartosz.markowski@tieto.com, ath10k@lists.infradead.org
Subject: Re: [v2,08/13] ath10k: bring back the WMI path for mgmt frames
Message-ID: <88b587e85324b50a23a20676c7088d0c@codeaurora.org>
X-Sender: wgong@codeaurora.org
User-Agent: Roundcube Webmail/1.3.9
X-Bad-Reply: 'Re:' in Subject but no References or In-Reply-To headers
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200617_012525_718044_10783AA9 
X-CRM114-Status: UNSURE (   4.64  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [104.130.122.29 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.0 RCVD_IN_MSPIKE_H4      RBL: Very Good reputation (+4)
 [104.130.122.29 listed in wl.mailspike.net]
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

> +
> +			skb_queue_tail(&ar->wmi_mgmt_tx_queue, skb);
> +			ieee80211_queue_work(ar->hw, &ar->wmi_mgmt_tx_work);
https://patchwork.kernel.org/patch/2947291/
(https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/commit/?id=5e00d31a0fb74c36f3b174ff0d4914cf09016e6f)

Do you know why this patch used ieee80211_queue_work, not use "struct 
workqueue_struct *workqueue" of ath10k?

_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k

Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9FCDC1A3755
	for <lists+ath10k@lfdr.de>; Thu,  9 Apr 2020 17:40:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:Subject:To:From:
	Date:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=0b5Cukc87HxELdvJY225bus18lGhHF2Vb74t0Tunzfk=; b=MywgO/8Gp42bE6EWZA+6aqt12
	XH42fxsnNfhAJS85DYMGs2uufiP7/hAaFWNdMChzfEsJd+8VS6/+fdcMBobf4/949KV/4oD8PInBz
	ZDKCkh92g8Vk5ihph2Vyc0fZ07PqZGMrYJl1Z/1CY1NLZJ55MNS8DTgR8wKBU/3GvS10owFagUuJP
	dO084HGOE1vxjGYFGQ6IYeGCZ4MQtsIdmA3PKwAtM93kIpkL81few3hoVFH0DpovtB4zzbBV2aK1k
	07SPwOOxImEwqoz8oc15O6PQzUhyXnhweDuCK/68uPkz4GmbHI2/SYe4V1UNL6ACmjF9/35tu+BVb
	fzodb+P3A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jMZIW-00078d-Nu; Thu, 09 Apr 2020 15:40:56 +0000
Received: from mail26.static.mailgun.info ([104.130.122.26])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jMZIS-00078J-QX
 for ath10k@lists.infradead.org; Thu, 09 Apr 2020 15:40:54 +0000
DKIM-Signature: a=rsa-sha256; v=1; c=relaxed/relaxed; d=mg.codeaurora.org;
 q=dns/txt; 
 s=smtp; t=1586446852; h=Message-ID: References: In-Reply-To: Subject:
 Cc: To: From: Date: Content-Transfer-Encoding: Content-Type:
 MIME-Version: Sender; bh=JrY+N5OWsykGVuGT2zTyq6XfRigYdFNjytDlDSHFDUw=;
 b=EwDNpk3V6UwdlPmqo+MoUZcHjMthM9CaE6ZmBBtwy6Pwuczyftck42yzlvVvl7hV1dR4djpQ
 qa+tc4VgWGEIgAkZ4/twxOErCTcMDajXf7BPn5kjufCciC7FFHugTeS8teV9Xdvt0VGhTrGG
 Wt+GwOS7GcVWK8jKBsbFfU5GhuE=
X-Mailgun-Sending-Ip: 104.130.122.26
X-Mailgun-Sid: WyJiZDQ3OSIsICJhdGgxMGtAbGlzdHMuaW5mcmFkZWFkLm9yZyIsICJiZTllNGEiXQ==
Received: from smtp.codeaurora.org
 (ec2-35-166-182-171.us-west-2.compute.amazonaws.com [35.166.182.171])
 by mxa.mailgun.org with ESMTP id 5e8f4202.7f78029d3d50-smtp-out-n01;
 Thu, 09 Apr 2020 15:40:50 -0000 (UTC)
Received: by smtp.codeaurora.org (Postfix, from userid 1001)
 id 7055FC433CB; Thu,  9 Apr 2020 15:40:42 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
 aws-us-west-2-caf-mail-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.0 required=2.0 tests=ALL_TRUSTED
 autolearn=unavailable autolearn_force=no version=3.4.0
Received: from mail.codeaurora.org (localhost.localdomain [127.0.0.1])
 (using TLSv1 with cipher ECDHE-RSA-AES256-SHA (256/256 bits))
 (No client certificate requested) (Authenticated sender: wgong)
 by smtp.codeaurora.org (Postfix) with ESMTPSA id 5210CC432C2;
 Thu,  9 Apr 2020 15:40:41 +0000 (UTC)
MIME-Version: 1.0
Date: Thu, 09 Apr 2020 23:40:41 +0800
From: Wen Gong <wgong@codeaurora.org>
To: Kalle Valo <kvalo@codeaurora.org>
Subject: Re: [PATCH v9 3/4] ath10k: add htt TX bundle for sdio
In-Reply-To: <87tv1su2vq.fsf@kamboji.qca.qualcomm.com>
References: <20200212080415.31265-1-wgong@codeaurora.org>
 <20200212080415.31265-4-wgong@codeaurora.org>
 <87tv1su2vq.fsf@kamboji.qca.qualcomm.com>
Message-ID: <185d31c2e6f8792beb240f2c74d26463@codeaurora.org>
X-Sender: wgong@codeaurora.org
User-Agent: Roundcube Webmail/1.3.9
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200409_084052_940665_D98A8EBD 
X-CRM114-Status: UNSURE (   7.79  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
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
Cc: linux-wireless@vger.kernel.org, ath10k@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "ath10k" <ath10k-bounces@lists.infradead.org>
Errors-To: ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org

On 2020-04-09 22:53, Kalle Valo wrote:
> Wen Gong <wgong@codeaurora.org> writes:
> 
>> +	ar->workqueue_tx_complete =
>> +		create_singlethread_workqueue("ath10k_tx_complete_wq");
>> +	if (!ar->workqueue_tx_complete)
>> +		goto err_free_aux_wq;
> 
> We already have three threads:
> 
> ath/ath10k/core.c:      ar->workqueue =
> create_singlethread_workqueue("ath10k_wq");
> ath/ath10k/core.c:      ar->workqueue_aux =
> create_singlethread_workqueue("ath10k_aux_wq");
> ath/ath10k/sdio.c:      ar_sdio->workqueue =
> create_singlethread_workqueue("ath10k_sdio_wq");
> 
> Do we really need a fourth one? For example, why can't we use
> ar->workqueue_aux?

For tcp test, it has 4 thread work meanwhile:
tx_bundle_skbs(ar->workqueue),
rx_indication(ar->workqueue_aux),
sdio_async_tx_request(ar_sdio->workqueue),
tx_bundle_complete(ar->workqueue_tx_complete)

It has 4+ cpu/core in system, if reduced to 3 threads, then tcp 
throughput will drop.
only when it only has 1/2/3 cpu/core in system, then reduced to 3 
threads will not drop.

_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k

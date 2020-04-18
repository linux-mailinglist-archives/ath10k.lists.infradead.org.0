Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BF86D1AEDBE
	for <lists+ath10k@lfdr.de>; Sat, 18 Apr 2020 16:02:42 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:Subject:To:From:
	Date:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=L31nAoqUI0We7mXNL1Ciu8LMUhM8++8upTL36d7bpKo=; b=K4wDztJ+1gGP4VtRPCHQ8FKM0
	EyBvH/1UHPwpsyfj7e7fgGLwUqxeO/K/zDJrHYDxBtG/WdhBNvnjZHMPpUVONcGhIerwuWgO7hReI
	uxQnvl7ICqZX0e7BehkpMlKca4iwVDaTJs5eqPJlQiFgCAlGYwgjn6nbDj7EtoWsnQpck959N1tkA
	+Gbz8sPtZr3Hvk7AU6uovBOmyjPB4jYumlb5IJGLbf8fkri8fQ01ogxuJkwLJXaNExqVezJ4rdtEP
	kDc3n7OiDwm35RdTPQV0xUzjnCGO0/geEfFCcYqn8YYUbOG5kQ1Ol9DemjMkz3tCWOTNG+OzuTQm7
	rWsKAKNMw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jPo3H-00064d-N1; Sat, 18 Apr 2020 14:02:35 +0000
Received: from mail27.static.mailgun.info ([104.130.122.27])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jPo3C-00063p-BD
 for ath10k@lists.infradead.org; Sat, 18 Apr 2020 14:02:33 +0000
DKIM-Signature: a=rsa-sha256; v=1; c=relaxed/relaxed; d=mg.codeaurora.org;
 q=dns/txt; 
 s=smtp; t=1587218551; h=Message-ID: References: In-Reply-To: Subject:
 Cc: To: From: Date: Content-Transfer-Encoding: Content-Type:
 MIME-Version: Sender; bh=PtPOrt07EzuEgYcXSDgkKyOC29cvpcuzM7IRgCX/a6A=;
 b=qLXDQ0HeIaoqPzIGtAa/SqfMTjjT1VOw64gYjNaR/E3M8/OfoaKtNuRej44jiL5ZO8Na25eD
 K0B2+O9SrZ60se8IK2EsYiz0xzmxedSAIBZHeiEC0CxrPuGe80Qz4gnqEwSJdWmaLkaGGOVC
 z6MVDwe/OqLVQ+hZAHELgCIxvog=
X-Mailgun-Sending-Ip: 104.130.122.27
X-Mailgun-Sid: WyJiZDQ3OSIsICJhdGgxMGtAbGlzdHMuaW5mcmFkZWFkLm9yZyIsICJiZTllNGEiXQ==
Received: from smtp.codeaurora.org
 (ec2-35-166-182-171.us-west-2.compute.amazonaws.com [35.166.182.171])
 by mxa.mailgun.org with ESMTP id 5e9b0871.7fdf83a0b6c0-smtp-out-n01;
 Sat, 18 Apr 2020 14:02:25 -0000 (UTC)
Received: by smtp.codeaurora.org (Postfix, from userid 1001)
 id E3F95C433F2; Sat, 18 Apr 2020 14:02:24 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
 aws-us-west-2-caf-mail-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.0 required=2.0 tests=ALL_TRUSTED,URIBL_BLOCKED
 autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.codeaurora.org (localhost.localdomain [127.0.0.1])
 (using TLSv1 with cipher ECDHE-RSA-AES256-SHA (256/256 bits))
 (No client certificate requested) (Authenticated sender: wgong)
 by smtp.codeaurora.org (Postfix) with ESMTPSA id 947F9C433CB;
 Sat, 18 Apr 2020 14:02:24 +0000 (UTC)
MIME-Version: 1.0
Date: Sat, 18 Apr 2020 22:02:24 +0800
From: Wen Gong <wgong@codeaurora.org>
To: Kalle Valo <kvalo@codeaurora.org>
Subject: Re: [PATCH v9 3/4] ath10k: add htt TX bundle for sdio
In-Reply-To: <87o8rrr4y5.fsf@kamboji.qca.qualcomm.com>
References: <20200212080415.31265-1-wgong@codeaurora.org>
 <20200212080415.31265-4-wgong@codeaurora.org>
 <87tv1su2vq.fsf@kamboji.qca.qualcomm.com>
 <185d31c2e6f8792beb240f2c74d26463@codeaurora.org>
 <87h7xmtrmv.fsf@kamboji.qca.qualcomm.com>
 <87o8rrr4y5.fsf@kamboji.qca.qualcomm.com>
Message-ID: <27ca9f2bf63807d501cfb29d8f55f904@codeaurora.org>
X-Sender: wgong@codeaurora.org
User-Agent: Roundcube Webmail/1.3.9
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200418_070231_664150_CD23456E 
X-CRM114-Status: UNSURE (   9.30  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [104.130.122.27 listed in list.dnswl.org]
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

On 2020-04-16 20:27, Kalle Valo wrote:
> Kalle Valo <kvalo@codeaurora.org> writes:
> 

>> How much does it drop? Please add the justification (with numbers) for
>> the new thread to the commit log, so that the reason is properly
>> documented.
> 
> I see that you already submitted v10. If you can give the numbers I can
> add them to the commit log.

I tested for VHT80 mode for 3 thread config:
result:
                                      TCP-RX    TCP-TX    UDP-RX    
UDP-TX
use workqueue_tx_complete(Mbps)        423       357       448       412
change it to ar->workqueue(Mbps)       410       360       449       414
change it to ar->workqueue_aux(Mbps)   405       339       446       401

each thread role:
tx_bundle_skbs(ar->workqueue),
rx_indication(ar->workqueue_aux),
sdio_async_tx_request(ar_sdio->workqueue),
tx_bundle_complete(ar->workqueue_tx_complete)

_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k

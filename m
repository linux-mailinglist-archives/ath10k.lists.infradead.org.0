Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DB0D51C8252
	for <lists+ath10k@lfdr.de>; Thu,  7 May 2020 08:15:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:
	In-Reply-To:References:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=yWIyq6xl993PnjuOy7jGAWLgkEFGc1SDIj76yCE5KLs=; b=kBQXICQUUify03
	fpCLEON2lXE47gZsh+/h117SAJePPtlF50q5Ejh0VUw6zTP4Yxqz+DKiPTTQLEXYguV4ynisBQ2nz
	IAyfyy2EXFcYKehAwhk/2N9G4+pQnJDkxQzcgmcT6VQxOTio2fSWw1ehH5O0O+3euAXgH9tSo1KOE
	gX66+Bzq6vTRIYcnlmNffq/wjfgWurUglKKKB0ULgP8rNOrbZtnenj58KbBDwYVFlKK6BwwAugoqm
	rlYWiGk0M+hDQQqYV9On6vMCzVqxT1QC1JCIuGGTsMOLy9AGhesWamrKE0aBgZGXwB+oXDWg2M0ug
	5uBgMxgpg1aDa/JAbPRg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jWZp7-0005EJ-4W; Thu, 07 May 2020 06:15:57 +0000
Received: from mail26.static.mailgun.info ([104.130.122.26])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jWZp2-0005De-7H
 for ath10k@lists.infradead.org; Thu, 07 May 2020 06:15:55 +0000
DKIM-Signature: a=rsa-sha256; v=1; c=relaxed/relaxed; d=mg.codeaurora.org;
 q=dns/txt; 
 s=smtp; t=1588832153; h=Content-Transfer-Encoding: Content-Type:
 MIME-Version: Message-ID: Date: Subject: In-Reply-To: References: Cc:
 To: From: Sender; bh=8tdYvc/Ysg+HCDbSIsv9tXxZGN5x8N74gSEsCb6EWiw=;
 b=h8w7EBI7PHzSs/cbfbxi47UVRFK9beL2cCKcZzmtlFG2U5ZDXoQLImp0x1nl5aPBhUKVVcDr
 APkyjSsvwtIQTri1bi0Et5sLkMJtyovcWXgbPjl5zr1bZGOKFgBG7ue10NDQ/tG8iImoVhzl
 nNPGrUL/sw5bcljKEqSdfTLa4zc=
X-Mailgun-Sending-Ip: 104.130.122.26
X-Mailgun-Sid: WyJiZDQ3OSIsICJhdGgxMGtAbGlzdHMuaW5mcmFkZWFkLm9yZyIsICJiZTllNGEiXQ==
Received: from smtp.codeaurora.org
 (ec2-35-166-182-171.us-west-2.compute.amazonaws.com [35.166.182.171])
 by mxa.mailgun.org with ESMTP id 5eb3a793.7f82d35abb58-smtp-out-n05;
 Thu, 07 May 2020 06:15:47 -0000 (UTC)
Received: by smtp.codeaurora.org (Postfix, from userid 1001)
 id 6128EC433D2; Thu,  7 May 2020 06:15:47 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
 aws-us-west-2-caf-mail-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.0 required=2.0 tests=ALL_TRUSTED,SPF_NONE,
 URIBL_BLOCKED autolearn=ham autolearn_force=no version=3.4.0
Received: from Pillair (unknown [183.83.68.41])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested) (Authenticated sender: pillair)
 by smtp.codeaurora.org (Postfix) with ESMTPSA id 6CE2AC433F2;
 Thu,  7 May 2020 06:15:45 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 smtp.codeaurora.org 6CE2AC433F2
Authentication-Results: aws-us-west-2-caf-mail-1.web.codeaurora.org;
 dmarc=none (p=none dis=none) header.from=codeaurora.org
Authentication-Results: aws-us-west-2-caf-mail-1.web.codeaurora.org;
 spf=none smtp.mailfrom=pillair@codeaurora.org
From: <pillair@codeaurora.org>
To: "'Kalle Valo'" <kvalo@codeaurora.org>
References: <1588667015-25490-1-git-send-email-pillair@codeaurora.org>
 <875zd88ei8.fsf@kamboji.qca.qualcomm.com>
In-Reply-To: <875zd88ei8.fsf@kamboji.qca.qualcomm.com>
Subject: RE: [PATCH v2] ath10k: Remove msdu from idr when management pkt send
 fails
Date: Thu, 7 May 2020 11:45:42 +0530
Message-ID: <000001d62436$f253f230$d6fbd690$@codeaurora.org>
MIME-Version: 1.0
X-Mailer: Microsoft Outlook 16.0
Thread-Index: AQJNqVSadgw8XSq3avDEjUfHwl9lpQGgpyrrp6AVlFA=
Content-Language: en-us
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200506_231553_862849_61349C60 
X-CRM114-Status: GOOD (  21.82  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [104.130.122.26 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 RCVD_IN_MSPIKE_H4      RBL: Very Good reputation (+4)
 [104.130.122.26 listed in wl.mailspike.net]
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: linux-wireless@vger.kernel.org, linux-kernel@vger.kernel.org,
 ath10k@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "ath10k" <ath10k-bounces@lists.infradead.org>
Errors-To: ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org

Hi Kalle,
Yes, The change you did is correct and better.
So should I be sending a v3 for this patch ?

Thanks,
Rakesh Pillai.

> -----Original Message-----
> From: Kalle Valo <kvalo@codeaurora.org>
> Sent: Thursday, May 7, 2020 11:37 AM
> To: Rakesh Pillai <pillair@codeaurora.org>
> Cc: ath10k@lists.infradead.org; linux-wireless@vger.kernel.org; linux-
> kernel@vger.kernel.org
> Subject: Re: [PATCH v2] ath10k: Remove msdu from idr when management
> pkt send fails
> 
> Rakesh Pillai <pillair@codeaurora.org> writes:
> 
> > Currently when the sending of any management pkt
> > via wmi command fails, the packet is being unmapped
> > freed in the error handling. But the idr entry added,
> > which is used to track these packet is not getting removed.
> >
> > Hence, during unload, in wmi cleanup, all the entries
> > in IDR are removed and the corresponding buffer is
> > attempted to be freed. This can cause a situation where
> > one packet is attempted to be freed twice.
> >
> > Fix this error by rmeoving the msdu from the idr
> > list when the sending of a management packet over
> > wmi fails.
> >
> > Tested HW: WCN3990
> > Tested FW: WLAN.HL.3.1-01040-QCAHLSWMTPLZ-1
> >
> > Fixes: 1807da49733e ("ath10k: wmi: add management tx by reference
> support over wmi")
> > Signed-off-by: Rakesh Pillai <pillair@codeaurora.org>
> 
> [...]
> 
> > --- a/drivers/net/wireless/ath/ath10k/wmi-ops.h
> > +++ b/drivers/net/wireless/ath/ath10k/wmi-ops.h
> > @@ -133,6 +133,7 @@ struct wmi_ops {
> >  	struct sk_buff *(*gen_mgmt_tx_send)(struct ath10k *ar,
> >  					    struct sk_buff *skb,
> >  					    dma_addr_t paddr);
> > +	int (*cleanup_mgmt_tx_send)(struct ath10k *ar, struct sk_buff
> *msdu);
> >  	struct sk_buff *(*gen_dbglog_cfg)(struct ath10k *ar, u64
> module_enable,
> >  					  u32 log_level);
> >  	struct sk_buff *(*gen_pktlog_enable)(struct ath10k *ar, u32 filter);
> > @@ -442,6 +443,15 @@ ath10k_wmi_get_txbf_conf_scheme(struct ath10k
> *ar)
> >  }
> >
> >  static inline int
> > +ath10k_wmi_cleanup_mgmt_tx_send(struct ath10k *ar, struct sk_buff
> *msdu)
> > +{
> > +	if (!ar->wmi.ops->cleanup_mgmt_tx_send)
> > +		return -EOPNOTSUPP;
> > +
> > +	return ar->wmi.ops->cleanup_mgmt_tx_send(ar, msdu);
> > +}
> > +
> > +static inline int
> >  ath10k_wmi_mgmt_tx_send(struct ath10k *ar, struct sk_buff *msdu,
> >  			dma_addr_t paddr)
> >  {
> > @@ -457,8 +467,11 @@ ath10k_wmi_mgmt_tx_send(struct ath10k *ar,
> struct sk_buff *msdu,
> >
> >  	ret = ath10k_wmi_cmd_send(ar, skb,
> >  				  ar->wmi.cmd->mgmt_tx_send_cmdid);
> > -	if (ret)
> > +	if (ret) {
> > +		/* remove this msdu from idr tracking */
> > +		ath10k_wmi_cleanup_mgmt_tx_send(ar, msdu);
> >  		return ret;
> > +	}
> 
> I missed that this call was in wmi-ops.h, but the idea is that file
> should be just a dumb wrapper and not have any logic. So I moved this to
> mac.c, the functionality should be the same but please do check my
> changes:
> 
> https://git.kernel.org/pub/scm/linux/kernel/git/kvalo/ath.git/commit/?h=m
> aster-pending&id=71195d2244ed812c73dc617f7536566400f7ce87
> 
> --
> https://wireless.wiki.kernel.org/en/developers/documentation/submittingp
> atches

_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k

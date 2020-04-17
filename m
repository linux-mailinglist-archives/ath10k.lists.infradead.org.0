Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D5A571AD753
	for <lists+ath10k@lfdr.de>; Fri, 17 Apr 2020 09:24:12 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:Subject:To:From:
	Date:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=lOcMyhI/OBetHOJwdrMgWV8YcsuOwMyBJFdV68SNS0M=; b=Z4ZSyYlq0uyzX11Px2B0rHgCH
	E/wTfFVHIeCXrKUXEmfI6VCVo2psQS42tDWMNle5z/iy242rjViC9UVQ46TnTiRUq1jOvsIL2QRqV
	s0P4llMyys4kMBkg5eKn0Q4H27CE1v2hmEsVFzadZXKDkyW4Wb7cvutwiFhXEAy20C+mNBldi1cN8
	DZpXoomB+awzvGW4UBUAD84JAn0RDTVj+yWiy6BbPuwmMyGhGWaGp9NBEjVXe1M2XfkWNopDZH+Kq
	cwIK7OoA81/eYGwOsT08D7WxOltTaSC6DlGL7QWiIhNeeaSD5euNr2JKIpvQa4w2ZhFg1N9XeYSBX
	BC12BPTEw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jPLM9-00057e-Nn; Fri, 17 Apr 2020 07:24:09 +0000
Received: from mail26.static.mailgun.info ([104.130.122.26])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jPLM3-00056z-He
 for ath10k@lists.infradead.org; Fri, 17 Apr 2020 07:24:07 +0000
DKIM-Signature: a=rsa-sha256; v=1; c=relaxed/relaxed; d=mg.codeaurora.org;
 q=dns/txt; 
 s=smtp; t=1587108245; h=Message-ID: References: In-Reply-To: Subject:
 Cc: To: From: Date: Content-Transfer-Encoding: Content-Type:
 MIME-Version: Sender; bh=rA7iAexd4wP+UbyJuh7JwfZi1usnt0xjffk5Mpiz7Yk=;
 b=KVrFVED9IAq7hxU59/jMV21j5qkdHSbvKHWebmeImbSKkOAuQhOmomNNaEgiX5DOPlrODpHc
 v75WW33aXtxb8yX1gEo3hgpaiRX4WGalVTymAzKxjnq9R1XjsDPScBzkDt0ULwRvycTL1x0u
 l5k+yiyTJNVUfp2scxE7XtXAfCw=
X-Mailgun-Sending-Ip: 104.130.122.26
X-Mailgun-Sid: WyJiZDQ3OSIsICJhdGgxMGtAbGlzdHMuaW5mcmFkZWFkLm9yZyIsICJiZTllNGEiXQ==
Received: from smtp.codeaurora.org
 (ec2-35-166-182-171.us-west-2.compute.amazonaws.com [35.166.182.171])
 by mxa.mailgun.org with ESMTP id 5e995982.7f1faff8c0d8-smtp-out-n04;
 Fri, 17 Apr 2020 07:23:46 -0000 (UTC)
Received: by smtp.codeaurora.org (Postfix, from userid 1001)
 id 67EA9C433BA; Fri, 17 Apr 2020 07:23:45 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
 aws-us-west-2-caf-mail-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.0 required=2.0 tests=ALL_TRUSTED
 autolearn=unavailable autolearn_force=no version=3.4.0
Received: from mail.codeaurora.org (localhost.localdomain [127.0.0.1])
 (using TLSv1 with cipher ECDHE-RSA-AES256-SHA (256/256 bits))
 (No client certificate requested) (Authenticated sender: wgong)
 by smtp.codeaurora.org (Postfix) with ESMTPSA id A55EFC433F2;
 Fri, 17 Apr 2020 07:23:44 +0000 (UTC)
MIME-Version: 1.0
Date: Fri, 17 Apr 2020 15:23:44 +0800
From: Wen Gong <wgong@codeaurora.org>
To: Kalle Valo <kvalo@codeaurora.org>
Subject: Re: [PATCH] ath10k: improve power save performance for sdio
In-Reply-To: <87y2quponn.fsf@kamboji.qca.qualcomm.com>
References: <0101016ed9241282-73dd8b35-e2e5-4f37-9b50-cf2fb6524dfc-000000@us-west-2.amazonses.com>
 <877dyfr4fb.fsf@kamboji.qca.qualcomm.com>
 <b9f680d57a6fbc9ac59dc5fc281d0af3@codeaurora.org>
 <87y2quponn.fsf@kamboji.qca.qualcomm.com>
Message-ID: <ffdecd6a9db5b96d6c791fc04108b163@codeaurora.org>
X-Sender: wgong@codeaurora.org
User-Agent: Roundcube Webmail/1.3.9
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200417_002406_005090_6E64B22A 
X-CRM114-Status: GOOD (  11.25  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [104.130.122.26 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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

On 2020-04-17 15:17, Kalle Valo wrote:
> Wen Gong <wgong@codeaurora.org> writes:
> 
>> On 2020-04-16 20:38, Kalle Valo wrote:
>>> Wen Gong <wgong@codeaurora.org> writes:
>>> 
>> 
>>> 
>>>> +static inline int ath10k_hif_set_mbox_sleep(struct ath10k *ar,
>>>> bool enable_sleep)
>>>> +{
>>>> +	if (ar->hif.ops->set_mbox_sleep)
>>>> +		return ar->hif.ops->set_mbox_sleep(ar, enable_sleep);
>>>> +	return 0;
>>>> +}
>>> 
>>> I don't think we need to add another hif op for this. I sent v2 which
>>> uses existing op.
>> 
>> Yes, I see it. but I see it removed ath10k_hif_set_mbox_sleep in
>> ath10k_core_start, expected it will not effect the patch's power save.
> 
> So the idea is that the same functionality is still there as with your
> version, the callpath is just a bit different:
> 
> ath10k_core_start()
>     -> ath10k_hif_start_post()
>         -> ath10k_sdio_hif_start_post()
>             -> ath10k_sdio_set_mbox_sleep()
> 
> But please do double check that I didn't miss anything.
yes, I see this now, so it not miss in v2.
@@ -1749,6 +1819,8 @@  static int ath10k_sdio_hif_start_post(struct 
ath10k *ar)
  		ar_sdio->swap_mbox = false;
  	}

+	ath10k_sdio_hif_set_mbox_sleep(ar, true);
+
  	return 0;
  }

_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k

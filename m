Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6A23288B68
	for <lists+ath10k@lfdr.de>; Sat, 10 Aug 2019 14:40:28 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:Subject:To:From:
	Date:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=pwKl3iQCD2O35RWinowZ9Y596SmFxVjY3OaNmBNIUsQ=; b=OyFHWkVZc9luL97FEZ4gWOuBG
	Fxx2WzwBYCsdgdwdeB76RaB7ugV0dyx6JTFFvcRgH5d+rtD8lZeBpcXn927Zvd2szdVCGhLRms9R3
	0zapQ7jLZmOF/l5YFzbK0C/p8/9VtNTnBa9KCskXHwVJPgooXykodikG9JcRBVavquNF5ASrdnJOZ
	+LZqptZwvXlg1Fc51XGZK9SXzBR4ON1LS742QlcmBPdaoajw21dIZFknSeHImbamLbJG4lhzdwcX5
	xBPb8GKy90OSw8G1Jw1tNhdD7q1QwajAp55dP1bCvlmf6IzIH1pxNI2p3wE2d8EdlDISFreQBEnsE
	rqvC8psCA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hwQfV-0003df-RZ; Sat, 10 Aug 2019 12:40:21 +0000
Received: from smtp.codeaurora.org ([198.145.29.96])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hwQfR-0003dN-TL
 for ath10k@lists.infradead.org; Sat, 10 Aug 2019 12:40:19 +0000
Received: by smtp.codeaurora.org (Postfix, from userid 1000)
 id 84087602B7; Sat, 10 Aug 2019 12:40:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=codeaurora.org;
 s=default; t=1565440817;
 bh=bq2a9ifN2qcimVadgjGb2ULkBUInwogFiCmBKE8khQQ=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=V4Vh8mrCDGwy09RRcOqjVRWZs9sQgrLXElgE24Ww422K+rE0Gi4j5VMPoPMQv+CgH
 uQ8kjQOyUB8CssLXM99IwrniwjsqXONvPweTCbFLOB2XN3tNdBvFP/Ujw74fdpOZmN
 OtRxvw/aW/I/lATlo7HIaIe5Ej6dtF64NoWNnbBg=
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
 pdx-caf-mail.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=2.0 tests=ALL_TRUSTED,BAYES_00,
 DKIM_INVALID,DKIM_SIGNED autolearn=no autolearn_force=no version=3.4.0
Received: from mail.codeaurora.org (localhost.localdomain [127.0.0.1])
 by smtp.codeaurora.org (Postfix) with ESMTP id 38BB1602ED;
 Sat, 10 Aug 2019 12:40:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=codeaurora.org;
 s=default; t=1565440817;
 bh=bq2a9ifN2qcimVadgjGb2ULkBUInwogFiCmBKE8khQQ=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=V4Vh8mrCDGwy09RRcOqjVRWZs9sQgrLXElgE24Ww422K+rE0Gi4j5VMPoPMQv+CgH
 uQ8kjQOyUB8CssLXM99IwrniwjsqXONvPweTCbFLOB2XN3tNdBvFP/Ujw74fdpOZmN
 OtRxvw/aW/I/lATlo7HIaIe5Ej6dtF64NoWNnbBg=
MIME-Version: 1.0
Date: Sat, 10 Aug 2019 18:10:17 +0530
From: Tamizh chelvam <tamizhr@codeaurora.org>
To: Johannes Berg <johannes@sipsolutions.net>
Subject: Re: [PATCHv6 1/9] nl80211: New netlink command for TID specific
 configuration
In-Reply-To: <ea1f9969b52fed2da8b0e88ed8b06527bfc272aa.camel@sipsolutions.net>
References: <1560835632-17405-1-git-send-email-tamizhr@codeaurora.org>
 <1560835632-17405-2-git-send-email-tamizhr@codeaurora.org>
 <ea1f9969b52fed2da8b0e88ed8b06527bfc272aa.camel@sipsolutions.net>
Message-ID: <be096df17632b1a71441a23a373682bf@codeaurora.org>
X-Sender: tamizhr@codeaurora.org
User-Agent: Roundcube Webmail/1.2.5
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190810_054017_972395_CDAC0463 
X-CRM114-Status: UNSURE (   6.49  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.145.29.96 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: linux-wireless@vger.kernel.org, ath10k@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "ath10k" <ath10k-bounces@lists.infradead.org>
Errors-To: ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org

On 2019-07-31 14:55, Johannes Berg wrote:
> On Tue, 2019-06-18 at 10:57 +0530, Tamizh chelvam wrote:
>> 
>>  /**
>> + * enum nl80211_tid_config - TID config state
>> + * @NL80211_TID_CONFIG_DEFAULT: Default config for the TID
>> + * @NL80211_TID_CONFIG_ENABLE: Enable config for the TID
>> + * NL80211_TID_CONFIG_DISABLE: Disable config for the TID
>> + */
>> +enum nl80211_tid_config {
>> +	NL80211_TID_CONFIG_DEFAULT,
>> +	NL80211_TID_CONFIG_ENABLE,
>> +	NL80211_TID_CONFIG_DISABLE,
>> +};
> 
> Hmm. Looking at this in more detail in patch 3, I don't understand.
> 
> How is DEFAULT different from "attribute not present", i.e. "no
> changes"?
> 
This DEFAULT is used to notify the driver to use default configuration 
value of driver/vif.
This will be used when the attribute is not present.

_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k

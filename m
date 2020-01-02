Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5FC6612E26E
	for <lists+ath10k@lfdr.de>; Thu,  2 Jan 2020 05:51:06 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:Subject:To:From:
	Date:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=V07CIcPTPFUfLUwtkRjS7vY31Oe9Zr3srq1TsPZFq30=; b=Z6wVKKBbyxYZqhF/LUWMx+F2p
	j5ytmPchCSGwEwcyX3UFpm53UntuMMhTzzu6SWEVrITQjhk1PXay1/snSj/duYAIOX3XxK5z2BITA
	9m3euWb2Gc6cpPIvbKhXh5xepONzAcdHGgyXGwKmloY4nkBpZn/M4Iuzp1KCtkAvjqmCAP8qfhdIl
	uVwqJ6WA/kRWtUaevbynPOi9qnuBaTCtnHZ1LuGIiNG6qmL5cyjo6y9dIwH2RJF9FU8b92lI9yeXJ
	QOCdGe9SFsHTuJ7CF1A6eancgnwXF9oja8zn18PioavS/h9YkwUQ/ixknsDELclihF6HD2iXUCohe
	UD+9s6fTQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1imsRs-0007Ma-Pk; Thu, 02 Jan 2020 04:51:04 +0000
Received: from mail26.static.mailgun.info ([104.130.122.26])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1imsRn-0007M7-64
 for ath10k@lists.infradead.org; Thu, 02 Jan 2020 04:51:02 +0000
DKIM-Signature: a=rsa-sha256; v=1; c=relaxed/relaxed; d=mg.codeaurora.org;
 q=dns/txt; 
 s=smtp; t=1577940660; h=Message-ID: References: In-Reply-To: Subject:
 Cc: To: From: Date: Content-Transfer-Encoding: Content-Type:
 MIME-Version: Sender; bh=Vl2TJjve/ZNE8M6Hh/rQdJBS0YSOBXXynVTBeeNsyjU=;
 b=W+k/lINg3y0ygDKFkJncapZXlOgaNUT3Sk+2JasITD4CyMiDgZvu1lPTmE8r24bOgCVkgIYT
 O4MNZhGPZp0bPXFgWwU9jjWdoDdl59uwudJgIlW4S7Elb2r1sAweneMqF3rHN5S4WxAFoqZX
 BVMZaMInrGbhWOBZ0FbHaA8ECdI=
X-Mailgun-Sending-Ip: 104.130.122.26
X-Mailgun-Sid: WyJiZDQ3OSIsICJhdGgxMGtAbGlzdHMuaW5mcmFkZWFkLm9yZyIsICJiZTllNGEiXQ==
Received: from smtp.codeaurora.org
 (ec2-35-166-182-171.us-west-2.compute.amazonaws.com [35.166.182.171])
 by mxa.mailgun.org with ESMTP id 5e0d76aa.7fe0150c63b0-smtp-out-n03;
 Thu, 02 Jan 2020 04:50:50 -0000 (UTC)
Received: by smtp.codeaurora.org (Postfix, from userid 1001)
 id A80ECC447A4; Thu,  2 Jan 2020 04:50:49 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
 aws-us-west-2-caf-mail-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.0 required=2.0 tests=ALL_TRUSTED
 autolearn=unavailable autolearn_force=no version=3.4.0
Received: from mail.codeaurora.org (localhost.localdomain [127.0.0.1])
 (using TLSv1 with cipher ECDHE-RSA-AES256-SHA (256/256 bits))
 (No client certificate requested) (Authenticated sender: wgong)
 by smtp.codeaurora.org (Postfix) with ESMTPSA id 57766C4479F;
 Thu,  2 Jan 2020 04:50:49 +0000 (UTC)
MIME-Version: 1.0
Date: Wed, 01 Jan 2020 20:50:49 -0800
From: wgong@codeaurora.org
To: Justin Capella <justincapella@gmail.com>
Subject: Re: [PATCH v2 2/2] ath10k: start recovery process when payload length
 exceeds max htc length for sdio
In-Reply-To: <CAMrEMU9ZVV-yotvH2Odn+sb1HiiL_tN_GASSeSnhAOzCUjLZ7Q@mail.gmail.com>
References: <20191225120002.11163-1-wgong@codeaurora.org>
 <20191225120002.11163-3-wgong@codeaurora.org>
 <CAMrEMU9ZVV-yotvH2Odn+sb1HiiL_tN_GASSeSnhAOzCUjLZ7Q@mail.gmail.com>
Message-ID: <8ad12580aae4ed23778693dd483144db@codeaurora.org>
X-Sender: wgong@codeaurora.org
User-Agent: Roundcube Webmail/1.3.9
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200101_205100_213782_C2F7AA1D 
X-CRM114-Status: GOOD (  10.92  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
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
Cc: linux-wireless@vger.kernel.org, ath10k <ath10k@lists.infradead.org>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "ath10k" <ath10k-bounces@lists.infradead.org>
Errors-To: ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org

On 2019-12-25 14:56, Justin Capella wrote:
> Does the SDIO bus require addresses to be word aligned like the PCI
> bus does? I'm thinking of how netdev alloc uses skb_push to ensure
> that the payload is aligned.
> 
> 
>>> if (ar->state == ATH10K_STATE_ON)
> 
> What about the other STATEs: RESTARTED/ING
> 
> The value you mentioned 57005, is 0xDEAD is that a special case?
> Perhaps a result of fw crash? Maybe a lookahead gone wong? I see its
> the WMI PEER ALIVE/DEAD indicator but I'm not sure why it would be
> trailer of the other
> 
i have removed "if (ar->state == ATH10K_STATE_ON)"
and v3 sent:
patch v3:
https://patchwork.kernel.org/patch/11313853/
https://patchwork.kernel.org/patch/11313859/

>> 2.23.0

_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k

Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D927DDFF8B
	for <lists+ath10k@lfdr.de>; Tue, 22 Oct 2019 10:37:57 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Date:Message-Id:To:References:
	In-Reply-To:From:Subject:MIME-Version:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=VbgewRBWywkOqQ4Jkdye3bxtSIdWXqAnLyKQAnaes7M=; b=DHCFuz3wLciU1a
	3ci6UQMrCHTzA/fJ0EP6zUnIy+y2TCxKRBShOzpNindqRDz1SBHZfKjRBwLDWIspEuG6zsvlAC1ZW
	9wlsE3mtWTlsR6UPiGN9NHSVrOyZwXhVxIDu9KbZJIM5oJI1Pi1RDF78oUR8BXUdP6REvHzH0UUT8
	T2+ajmg5vOdc8Y3HIRPpzVqi+9Wor4ubzwsV+8D4WR18X7MIkRMsnTAEJv/XLg4enIlsGp0zYMNNe
	7syVTq2EOLLziJ6TKr7bHzB1ifO+V8vxH4WepTgpuJ0sbc6tMfnNUPxxdp0QFGrgBVAT3yhuVH61s
	JjGd5pv+LJNyhEsSXEcA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iMpfw-0002VJ-1W; Tue, 22 Oct 2019 08:37:56 +0000
Received: from smtp.codeaurora.org ([198.145.29.96])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iMpfs-0002Us-83
 for ath10k@lists.infradead.org; Tue, 22 Oct 2019 08:37:53 +0000
Received: by smtp.codeaurora.org (Postfix, from userid 1000)
 id 85496608CC; Tue, 22 Oct 2019 08:37:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=codeaurora.org;
 s=default; t=1571733471;
 bh=Po5RtiTU4/a1PjWYIFhSvt3ysgdj+uj3Q97l1tGoGno=;
 h=Subject:From:In-Reply-To:References:To:Cc:Date:From;
 b=XLqAh2H7bIpPBK8PMN0OZAYAE+NTl1b8O58ZvT/VoVtJ/RfR3Epis+udj2mmIbCHE
 EIDf7+lXop9FGdYe+6d8oqey97/A4uyhMBK2+JNCdpz9JFkgBX85tba2j7u7OaJiMC
 C2QKZJ5tAgjr4a684UXbBzCXuidNGOwdOaF/MdMU=
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
 pdx-caf-mail.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-0.8 required=2.0 tests=ALL_TRUSTED,BAYES_00,
 DKIM_INVALID,DKIM_SIGNED,MISSING_DATE,MISSING_MID,SPF_NONE autolearn=no
 autolearn_force=no version=3.4.0
Received: from potku.adurom.net (88-114-240-156.elisa-laajakaista.fi
 [88.114.240.156])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 (Authenticated sender: kvalo@smtp.codeaurora.org)
 by smtp.codeaurora.org (Postfix) with ESMTPSA id 8C0B66081E;
 Tue, 22 Oct 2019 08:37:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=codeaurora.org;
 s=default; t=1571733468;
 bh=Po5RtiTU4/a1PjWYIFhSvt3ysgdj+uj3Q97l1tGoGno=;
 h=Subject:From:In-Reply-To:References:To:Cc:From;
 b=S+TEhuqHHOLxBvvFbhB4Fg/0nbgR8jLvULtLxz34XMRYJ1ZrEH2uoixCBf1BT0aGQ
 XapuA4XFkIkgBxjEYlBHtuvpoqnD7+SjujRhfeQsiwkRsMrsjjtpwpvFAV3J5KXW6/
 b9XS1mAnHnbxutmCYP5i6EHXsjV6fCyS/gOcQgFo=
DMARC-Filter: OpenDMARC Filter v1.3.2 smtp.codeaurora.org 8C0B66081E
Authentication-Results: pdx-caf-mail.web.codeaurora.org;
 dmarc=none (p=none dis=none) header.from=codeaurora.org
Authentication-Results: pdx-caf-mail.web.codeaurora.org;
 spf=none smtp.mailfrom=kvalo@codeaurora.org
MIME-Version: 1.0
Subject: Re: [PATCH v2] ath10k: Fix a NULL-ptr-deref bug in
 ath10k_usb_alloc_urb_from_pipe
From: Kalle Valo <kvalo@codeaurora.org>
In-Reply-To: <20191018133516.12606-1-linux@roeck-us.net>
References: <20191018133516.12606-1-linux@roeck-us.net>
To: Guenter Roeck <linux@roeck-us.net>
User-Agent: pwcli/0.0.0-git (https://github.com/kvalo/pwcli/) Python/2.7.12
Message-Id: <20191022083751.85496608CC@smtp.codeaurora.org>
Date: Tue, 22 Oct 2019 08:37:51 +0000 (UTC)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191022_013752_329105_BCC41F41 
X-CRM114-Status: GOOD (  13.40  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.145.29.96 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: netdev@vger.kernel.org, linux-wireless@vger.kernel.org,
 linux-kernel@vger.kernel.org, ath10k@lists.infradead.org,
 Hui Peng <benquike@gmail.com>, Guenter Roeck <linux@roeck-us.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "ath10k" <ath10k-bounces@lists.infradead.org>
Errors-To: ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org

Guenter Roeck <linux@roeck-us.net> wrote:

> The `ar_usb` field of `ath10k_usb_pipe_usb_pipe` objects
> are initialized to point to the containing `ath10k_usb` object
> according to endpoint descriptors read from the device side, as shown
> below in `ath10k_usb_setup_pipe_resources`:
> 
> for (i = 0; i < iface_desc->desc.bNumEndpoints; ++i) {
>         endpoint = &iface_desc->endpoint[i].desc;
> 
>         // get the address from endpoint descriptor
>         pipe_num = ath10k_usb_get_logical_pipe_num(ar_usb,
>                                                 endpoint->bEndpointAddress,
>                                                 &urbcount);
>         ......
>         // select the pipe object
>         pipe = &ar_usb->pipes[pipe_num];
> 
>         // initialize the ar_usb field
>         pipe->ar_usb = ar_usb;
> }
> 
> The driver assumes that the addresses reported in endpoint
> descriptors from device side  to be complete. If a device is
> malicious and does not report complete addresses, it may trigger
> NULL-ptr-deref `ath10k_usb_alloc_urb_from_pipe` and
> `ath10k_usb_free_urb_to_pipe`.
> 
> This patch fixes the bug by preventing potential NULL-ptr-deref.
> 
> Signed-off-by: Hui Peng <benquike@gmail.com>
> Reported-by: Hui Peng <benquike@gmail.com>
> Reported-by: Mathias Payer <mathias.payer@nebelwelt.net>
> Reviewed-by: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
> [groeck: Add driver tag to subject, fix build warning]
> Signed-off-by: Guenter Roeck <linux@roeck-us.net>
> Signed-off-by: Kalle Valo <kvalo@codeaurora.org>

Patch applied to ath-next branch of ath.git, thanks.

bfd6e6e6c5d2 ath10k: Fix a NULL-ptr-deref bug in ath10k_usb_alloc_urb_from_pipe

-- 
https://patchwork.kernel.org/patch/11198433/

https://wireless.wiki.kernel.org/en/developers/documentation/submittingpatches


_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k

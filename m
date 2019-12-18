Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6478812579F
	for <lists+ath10k@lfdr.de>; Thu, 19 Dec 2019 00:18:48 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=41FmHUNslAy4MDdQm2Jr78AEDSvksrnB3g1JRaeHnNE=; b=T12GHqnxJ4zDyQDaLk28/4CJj
	FWEZ4YqWYn5MXlrabkQSCPWQlJwZMr13+Pp+aGsJ/bEZKazzGzALFyIy4gvwYNn+/NCCQbgwBMAlD
	h8sv0SbtmGcAr/6/ogFl4x1Q3yW79b5HeHdf61HV2ZxhgIPMCNpvA8rWa9KuCBzeBVc4vTCQuuesO
	8lspK0528nr5/STbJbV0uI0mnnCMo+T5afwUXsw0S+ZZgsRtG6kqIx4uNdUepcjjPxZvJut6yCDhx
	wB/iVcU8ku/WhBoyo1jyvH70sGrXzNSno+p7lzx15JZKh8m3qpxZssuZsa6CV6WZqfztacFQu7Apr
	Gf8DLVb7w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ihiab-0006zm-Rb; Wed, 18 Dec 2019 23:18:45 +0000
Received: from nbd.name ([2a01:4f8:221:3d45::2])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ihiaX-0006zR-7d
 for ath10k@lists.infradead.org; Wed, 18 Dec 2019 23:18:42 +0000
Received: from pd95fd447.dip0.t-ipconnect.de ([217.95.212.71]
 helo=[192.168.45.104])
 by ds12 with esmtpsa (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128)
 (Exim 4.89) (envelope-from <john@phrozen.org>)
 id 1ihiaQ-0003nv-5u; Thu, 19 Dec 2019 00:18:34 +0100
Subject: Re: [RESEND] ath10k: add tx hw 802.11 encapusaltion offloading support
To: Tom Psyborg <pozega.tomislav@gmail.com>, Kalle Valo <kvalo@codeaurora.org>
References: <20191216092207.31032-1-john@phrozen.org>
 <20191217153000.76AB1C4479C@smtp.codeaurora.org>
 <CAKR_QVJVfqid8i5PXj3Yg8VJjht=MF2fZg+twkLgEkKuMB2bbQ@mail.gmail.com>
 <CAKR_QVJ1PhCHfAO5Rp6pm-wjAO-HcZiq-9Lw67FzBFO5jjYtbA@mail.gmail.com>
From: John Crispin <john@phrozen.org>
Message-ID: <d2e4207c-1cd6-198e-84df-21496f0be378@phrozen.org>
Date: Thu, 19 Dec 2019 00:18:32 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.2
MIME-Version: 1.0
In-Reply-To: <CAKR_QVJ1PhCHfAO5Rp6pm-wjAO-HcZiq-9Lw67FzBFO5jjYtbA@mail.gmail.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191218_151841_445534_330C314A 
X-CRM114-Status: GOOD (  10.82  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Vasanthakumar Thiagarajan <vthiagar@qti.qualcomm.com>,
 Johannes Berg <johannes@sipsolutions.net>, linux-wireless@vger.kernel.org,
 ath10k@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "ath10k" <ath10k-bounces@lists.infradead.org>
Errors-To: ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org

On 18/12/2019 23:45, Tom Psyborg wrote:
> ccing Johannes Berg since upstream change (mac80211-next) breaks build:
> 
> In the commit log its written: remove SUPPORTS_80211_ENCAP HW flag
> 
> Any sane reasons for doing that? mac80211 fails to build because of
> removed flags, this is on backports-5.3-rc4
> 
> Other than that the feature delivers the promised:
> QCA9880 iperf between wired and wireless machine
> native mode 449Mbps
> ethernet mode 522Mbps
> 

superseded due to johill's fixup of the patch, new version coming up
	John

_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k

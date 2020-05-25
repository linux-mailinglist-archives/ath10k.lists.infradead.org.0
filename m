Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C1ADE1E0BFB
	for <lists+ath10k@lfdr.de>; Mon, 25 May 2020 12:39:13 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:In-Reply-To:
	Date:References:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=pfudEAJGOoljG4qQJicenK1nrOce0aYhm+hnVMPALOo=; b=JGKItiTcQFmYxS
	K02PFgdMgCu3oKZRs1EfQaFpVk9lDe//lp3O3pr0EIKGBRQEwCVw5SGMAg748RdJOlyQFQkTnfw8d
	kLZWQFnZuAxBbGzAiTw7yfHVSmLMHBoGPFdy7DiJE1hlajodA1k6xi697bqyKsKy0CZRtgeaWB+jo
	60iRzNEqImFeMgsFFYVPNkd4IBZ2CzM00Xoz2FjAvKw9rtc37xl37oiphvARz4C1YRGypBYKOXLqD
	gaUvl9gnwOeObrweVa4hLd//Q759d4WCBZmZbZd6r5zdOydRM7Dz8a0js/BJPkjt3sHey/kl3XjH9
	mXSL3faN67VisUEYnmDw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jdAVj-0008BZ-U8; Mon, 25 May 2020 10:39:11 +0000
Received: from mail27.static.mailgun.info ([104.130.122.27])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jdAVd-0007AI-20
 for ath10k@lists.infradead.org; Mon, 25 May 2020 10:39:09 +0000
DKIM-Signature: a=rsa-sha256; v=1; c=relaxed/relaxed; d=mg.codeaurora.org;
 q=dns/txt; 
 s=smtp; t=1590403147; h=Content-Transfer-Encoding: Content-Type:
 MIME-Version: Message-ID: In-Reply-To: Date: References: Subject: Cc:
 To: From: Sender; bh=lFsr8nIACUM6UgmDa1xekMARHxnlRL7EhwzL3mtLwqY=;
 b=Q4VwVyAmViaw95YAoODM5dGdMojZoEErIx0Q73ltGthNEMTOrH2ymJKKdON05x9ONPMfND44
 u+ztjhptOQsPs0JXyR6jmc402cK8Qc0HuD8omF3k4YvEjv/Ii6EkITN2NqS8+4X7GFIeFEcd
 LT56ckRiBHLiaMBqT/uOaa0D+p4=
X-Mailgun-Sending-Ip: 104.130.122.27
X-Mailgun-Sid: WyJiZDQ3OSIsICJhdGgxMGtAbGlzdHMuaW5mcmFkZWFkLm9yZyIsICJiZTllNGEiXQ==
Received: from smtp.codeaurora.org
 (ec2-35-166-182-171.us-west-2.compute.amazonaws.com [35.166.182.171]) by
 smtp-out-n03.prod.us-west-2.postgun.com with SMTP id
 5ecba03d9d4cf4d3ef43d76a (version=TLS1.2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256); Mon, 25 May 2020 10:38:53
 GMT
Received: by smtp.codeaurora.org (Postfix, from userid 1001)
 id DB00EC433CB; Mon, 25 May 2020 10:38:52 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
 aws-us-west-2-caf-mail-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.0 required=2.0 tests=ALL_TRUSTED,SPF_NONE
 autolearn=unavailable autolearn_force=no version=3.4.0
Received: from potku.adurom.net (88-114-240-156.elisa-laajakaista.fi
 [88.114.240.156])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested) (Authenticated sender: kvalo)
 by smtp.codeaurora.org (Postfix) with ESMTPSA id 27801C433C9;
 Mon, 25 May 2020 10:38:47 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 smtp.codeaurora.org 27801C433C9
Authentication-Results: aws-us-west-2-caf-mail-1.web.codeaurora.org;
 dmarc=none (p=none dis=none) header.from=codeaurora.org
Authentication-Results: aws-us-west-2-caf-mail-1.web.codeaurora.org;
 spf=none smtp.mailfrom=kvalo@codeaurora.org
From: Kalle Valo <kvalo@codeaurora.org>
To: Pali =?utf-8?Q?Roh=C3=A1r?= <pali@kernel.org>
Subject: Re: [PATCH 07/11] mmc: sdio: Move SDIO IDs from ath6kl driver to
 common include file
References: <20200522144412.19712-1-pali@kernel.org>
 <20200522144412.19712-8-pali@kernel.org>
Date: Mon, 25 May 2020 13:38:46 +0300
In-Reply-To: <20200522144412.19712-8-pali@kernel.org> ("Pali
 \=\?utf-8\?Q\?Roh\?\= \=\?utf-8\?Q\?\=C3\=A1r\=22's\?\= message
 of "Fri, 22 May 2020 16:44:08 +0200")
Message-ID: <87blmc9u4p.fsf@codeaurora.org>
User-Agent: Gnus/5.13 (Gnus v5.13) Emacs/24.5 (gnu/linux)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200525_033908_140700_1B2156B4 
X-CRM114-Status: UNSURE (   9.29  )
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
 0.0 RCVD_IN_MSPIKE_H4      RBL: Very Good reputation (+4)
 [104.130.122.27 listed in wl.mailspike.net]
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
Cc: brcm80211-dev-list.pdl@broadcom.com, Ulf Hansson <ulf.hansson@linaro.org>,
 libertas-dev@lists.infradead.org, Xinming Hu <huxinming820@gmail.com>,
 linux-wireless@vger.kernel.org, linux-mmc@vger.kernel.org,
 linux-kernel@vger.kernel.org, Amitkumar Karwar <amitkarwar@gmail.com>,
 Marek =?utf-8?Q?Beh=C3=BAn?= <marek.behun@nic.cz>,
 Ganapathi Bhat <ganapathi.bhat@nxp.com>, ath10k@lists.infradead.org,
 Matthias Brugger <matthias.bgg@gmail.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>, brcm80211-dev-list@cypress.com,
 b43-dev@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "ath10k" <ath10k-bounces@lists.infradead.org>
Errors-To: ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org

UGFsaSBSb2jDoXIgPHBhbGlAa2VybmVsLm9yZz4gd3JpdGVzOgoKPiBBbHNvIHJlcGxhY2UgZ2Vu
ZXJpYyBNQU5VRkFDVFVSRVIgbWFjcm9zIGJ5IHByb3BlciBTRElPIElEcyBtYWNyb3MuCj4KPiBD
aGVjayBmb3IgIkFSNjAwMyBvciBsYXRlciIgaXMgc2xpZ2h0bHkgbW9kaWZpZWQgdG8gdXNlIFNE
SU8gZGV2aWNlIElEcy4KPiBUaGlzIGFsbG93cyByZW1vdmFsIG9mIGFsbCBjdXN0b20gTUFOVUZB
Q1RVUkVSIG1hY3JvcyBmcm9tIGF0aDZrbC4KPgo+IFNpZ25lZC1vZmYtYnk6IFBhbGkgUm9ow6Fy
IDxwYWxpQGtlcm5lbC5vcmc+CgpBY2tlZC1ieTogS2FsbGUgVmFsbyA8a3ZhbG9AY29kZWF1cm9y
YS5vcmc+CgotLSAKaHR0cHM6Ly93aXJlbGVzcy53aWtpLmtlcm5lbC5vcmcvZW4vZGV2ZWxvcGVy
cy9kb2N1bWVudGF0aW9uL3N1Ym1pdHRpbmdwYXRjaGVzCgpfX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fXwphdGgxMGsgbWFpbGluZyBsaXN0CmF0aDEwa0BsaXN0
cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGlu
Zm8vYXRoMTBrCg==

Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9834D1BF569
	for <lists+ath10k@lfdr.de>; Thu, 30 Apr 2020 12:29:53 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:In-Reply-To:
	Date:References:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=OcQ3RcogNVfyBTjvsvv97/TxR+mSDDM+tls3xB4hxQc=; b=t7lhqzzuEwbQER
	/MGpND+LClrMnoJdOSQyECi1POgGU/630x+xuHJ9FUSPnFRzBimf8oW6l3Ut3XC/32NKfb189WNdU
	CkAhgWifdGWX0dWCoOvNFMIt+TE83zLDsspVS21/Y01+4xA4kzMv0SEg1HY9ZqAUEk43e48B+KzKr
	kcfOMyPMBgMn10yqF0/UmBhrKbmbqw+P4NNvfkxuYru4JZCKpdzgNabkSI2C06CzsYwumJ75JVIAS
	KsEafZpQnCLN8eVttphg5YJnfOSOUrsirB3xSh7guSfiXatRqMjcui6xxbfH9WSz0uad51dhtb7Eu
	zQKUWll5xfdE2LRblIqg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jU6Ry-0007ra-6u; Thu, 30 Apr 2020 10:29:50 +0000
Received: from mail27.static.mailgun.info ([104.130.122.27])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jU6Ql-0007jl-3A
 for ath10k@lists.infradead.org; Thu, 30 Apr 2020 10:28:45 +0000
DKIM-Signature: a=rsa-sha256; v=1; c=relaxed/relaxed; d=mg.codeaurora.org;
 q=dns/txt; 
 s=smtp; t=1588242517; h=Content-Type: MIME-Version: Message-ID:
 In-Reply-To: Date: References: Subject: Cc: To: From: Sender;
 bh=ew8udpGDAkHocxxuhHcGgd84+8lKJaZgs+toIZRs+M4=;
 b=IgZSlkyd2hIQqku6wNPAEEYoTCUyunDSQU3Aqdl6gMM9tu0wOCJq2A9m+9aqeyBn5BRjCPxw
 EBjg9SMbUVDlJFaovDpC2h6/FVyL7190bDwlLo6YlNaeb1/E+SyhxK/yZk3iyRnSE+8BVCi0
 sGWAa4ifEKZTdbV5mK/pcukwVnE=
X-Mailgun-Sending-Ip: 104.130.122.27
X-Mailgun-Sid: WyJiZDQ3OSIsICJhdGgxMGtAbGlzdHMuaW5mcmFkZWFkLm9yZyIsICJiZTllNGEiXQ==
Received: from smtp.codeaurora.org
 (ec2-35-166-182-171.us-west-2.compute.amazonaws.com [35.166.182.171])
 by mxa.mailgun.org with ESMTP id 5eaaa843.7fa23b5a9fb8-smtp-out-n03;
 Thu, 30 Apr 2020 10:28:19 -0000 (UTC)
Received: by smtp.codeaurora.org (Postfix, from userid 1001)
 id 213B5C433F2; Thu, 30 Apr 2020 10:28:19 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
 aws-us-west-2-caf-mail-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.0 required=2.0 tests=ALL_TRUSTED,SPF_NONE
 autolearn=ham autolearn_force=no version=3.4.0
Received: from potku.adurom.net (88-114-240-156.elisa-laajakaista.fi
 [88.114.240.156])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested) (Authenticated sender: kvalo)
 by smtp.codeaurora.org (Postfix) with ESMTPSA id 188E5C433CB;
 Thu, 30 Apr 2020 10:28:17 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 smtp.codeaurora.org 188E5C433CB
Authentication-Results: aws-us-west-2-caf-mail-1.web.codeaurora.org;
 dmarc=none (p=none dis=none) header.from=codeaurora.org
Authentication-Results: aws-us-west-2-caf-mail-1.web.codeaurora.org;
 spf=none smtp.mailfrom=kvalo@codeaurora.org
From: Kalle Valo <kvalo@codeaurora.org>
To: John Deere <24601deerej@gmail.com>
Subject: Re: [PATCH] Allow qca988x family to support ack rssi of tx data
 packets.
References: <20200312082047.487DAC433D2@smtp.codeaurora.org>
 <9827dda3-7a4a-5e10-071a-c7b4e4044572@gmail.com>
Date: Thu, 30 Apr 2020 13:28:15 +0300
In-Reply-To: <9827dda3-7a4a-5e10-071a-c7b4e4044572@gmail.com> (John Deere's
 message of "Thu, 30 Apr 2020 04:38:24 +0800")
Message-ID: <87y2qde08w.fsf@kamboji.qca.qualcomm.com>
User-Agent: Gnus/5.13 (Gnus v5.13) Emacs/24.5 (gnu/linux)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200430_032841_701224_66453C6B 
X-CRM114-Status: UNSURE (   9.14  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [104.130.122.27 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [104.130.122.27 listed in wl.mailspike.net]
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
Cc: ath10k@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "ath10k" <ath10k-bounces@lists.infradead.org>
Errors-To: ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org

John Deere <24601deerej@gmail.com> writes:

> Hello,
>
>> Firmwares tested : 10.4-3.9.0.1-00036
>
> The firmware above is unavailable anywhere.

It's here:

https://github.com/kvalo/ath10k-firmware/blob/master/QCA9984/hw1.0/3.9.0.1/firmware-5.bin_10.4-3.9.0.1-00036

-- 
https://wireless.wiki.kernel.org/en/developers/documentation/submittingpatches

_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k

Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 06177193C85
	for <lists+ath10k@lfdr.de>; Thu, 26 Mar 2020 11:05:48 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:In-Reply-To:
	Date:References:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=YSRGKqIbuYg5C37RtAA3Px1fuunzROEx1M6a14v3Efw=; b=J+x3V7yap0sjyG
	hRWDFq08jHNW0i3n7qT5zRJSPMbpAGkxG5XWp5Q7ZknXWRoYopIELqbm1ukc+EWvUSzp/KNFLX8Ek
	dzPB7OrQ/qJE9YBIDLEh/liWo4l2HEMDuaQxZk9jkmfe2ClK4SUCoby+11LHW+MDcHGZlR7FFRAAB
	tAOuuIMXVT6l7EkJ0ryaJxHJlar9yBZ5sKBNHrs97xXiiHeVlxzrOv5vzZfGNZTOODquNzx9Cfe2s
	FZQ7kCbxCYRlGMKtGw0BxW45tEUOM88aoSW4oY2rdD4W0fhxBx1O61QSPzj+Vf5rn9CyNEmITNSci
	QnHrbT4dwg5a3WmngoHw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jHPOU-0000Cd-8J; Thu, 26 Mar 2020 10:05:46 +0000
Received: from mail27.static.mailgun.info ([104.130.122.27])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jHPOO-0000Bn-0v
 for ath10k@lists.infradead.org; Thu, 26 Mar 2020 10:05:43 +0000
DKIM-Signature: a=rsa-sha256; v=1; c=relaxed/relaxed; d=mg.codeaurora.org;
 q=dns/txt; 
 s=smtp; t=1585217142; h=Content-Type: MIME-Version: Message-ID:
 In-Reply-To: Date: References: Subject: Cc: To: From: Sender;
 bh=q0tsrzXNx8b/Oywl7qHNKZnIPGOi3BuhuuZno+mUCwo=;
 b=GlWQQImNOddwieX/akOurgXT8l/3xD3OPN6JNE3Mg6sBDZBhuzGzbc8IhJegZCDqRKaMFLQq
 vxtHs8/d6ci3Hxo3EO1YkBpnvjAhThgt8chjveCT3u3uLK+UUAoRVz6I0SzcmBXNJQS/ZwXr
 DTeTxOgWF/isdZKhrsdoQwwumzc=
X-Mailgun-Sending-Ip: 104.130.122.27
X-Mailgun-Sid: WyJiZDQ3OSIsICJhdGgxMGtAbGlzdHMuaW5mcmFkZWFkLm9yZyIsICJiZTllNGEiXQ==
Received: from smtp.codeaurora.org
 (ec2-35-166-182-171.us-west-2.compute.amazonaws.com [35.166.182.171])
 by mxa.mailgun.org with ESMTP id 5e7c7e63.7f980744cf80-smtp-out-n01;
 Thu, 26 Mar 2020 10:05:23 -0000 (UTC)
Received: by smtp.codeaurora.org (Postfix, from userid 1001)
 id 61CA3C433F2; Thu, 26 Mar 2020 10:05:23 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
 aws-us-west-2-caf-mail-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.0 required=2.0 tests=ALL_TRUSTED,SPF_NONE
 autolearn=ham autolearn_force=no version=3.4.0
Received: from potku.adurom.net (88-114-240-156.elisa-laajakaista.fi
 [88.114.240.156])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested) (Authenticated sender: kvalo)
 by smtp.codeaurora.org (Postfix) with ESMTPSA id 8CBEBC433BA;
 Thu, 26 Mar 2020 10:05:19 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 smtp.codeaurora.org 8CBEBC433BA
Authentication-Results: aws-us-west-2-caf-mail-1.web.codeaurora.org;
 dmarc=none (p=none dis=none) header.from=codeaurora.org
Authentication-Results: aws-us-west-2-caf-mail-1.web.codeaurora.org;
 spf=none smtp.mailfrom=kvalo@codeaurora.org
From: Kalle Valo <kvalo@codeaurora.org>
To: Sowmiya Sree Elavalagan <ssreeela@codeaurora.org>
Subject: Re: [PATCH] ath10k: enable radar detection in secondary segment
References: <1585158041-11740-1-git-send-email-ssreeela@codeaurora.org>
 <20200326100139.5BC86C433BA@smtp.codeaurora.org>
Date: Thu, 26 Mar 2020 12:05:16 +0200
In-Reply-To: <20200326100139.5BC86C433BA@smtp.codeaurora.org> (Kalle Valo's
 message of "Thu, 26 Mar 2020 10:01:39 +0000 (UTC)")
Message-ID: <87o8sj2zz7.fsf@kamboji.qca.qualcomm.com>
User-Agent: Gnus/5.13 (Gnus v5.13) Emacs/24.5 (gnu/linux)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200326_030542_237739_C6C3A1E7 
X-CRM114-Status: GOOD (  12.29  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [104.130.122.27 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Lei Wang <leiwa@codeaurora.org>, linux-wireless@vger.kernel.org,
 ath10k@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "ath10k" <ath10k-bounces@lists.infradead.org>
Errors-To: ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org

Kalle Valo <kvalo@codeaurora.org> writes:

> Sowmiya Sree Elavalagan <ssreeela@codeaurora.org> wrote:
>
>> From: Lei Wang <leiwa@codeaurora.org>
>> 
>> Enable radar detection in secondary segment for VHT160 and VHT80+80 mode
>> on DFS channels. Otherwise, when injecting radar pulse in the secondary
>> segment, the DUT can't detect radar pulse.
>> 
>> Tested: qca9984 with firmware ver 10.4-3.10-00047
>> 
>> Signed-off-by: Lei Wang <leiwa@codeaurora.org>
>> Signed-off-by: Sowmiya Sree Elavalagan <ssreeela@codeaurora.org>
>
> Failed to apply:
>
> error: patch failed: drivers/net/wireless/ath/ath10k/wmi.c:1717
> error: drivers/net/wireless/ath/ath10k/wmi.c: patch does not apply
> stg import: Diff does not apply cleanly
>
> Patch set to Changes Requested.

I guess this depends on "ath10k: enable VHT160 and VHT80+80 modes"? If
that's the case then you should submit them in the same patchset to make
the dependency clear.

-- 
https://wireless.wiki.kernel.org/en/developers/documentation/submittingpatches

_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k

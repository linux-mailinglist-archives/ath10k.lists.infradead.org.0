Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C878AE9662
	for <lists+ath10k@lfdr.de>; Wed, 30 Oct 2019 07:28:50 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:Subject:To:From:
	Date:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=53FIsGn2YYfQY6FazboDIYUtrffNwPGXDjQyuHxVB2w=; b=ET0DsLeg1kkU+f1Y6Xs4tVJR/
	Fq4HmkRD0tG9hj2gfiOJrdvy2ifWbrJRYxNiF27rfzJmOvuwdhCwqJfHQpQDupRlQrAWGQ3AqQr4k
	RRUIsOSDYBtVPtWAMI/GLox2D0LPQ0CTPwhP/Zwco6+/cXP6VzcZ5XYzCN022nSaLivw90la6oz9E
	ucDJLOjhfSFS2tDJUhpX9E5mpin7E+uJWehyhHTRculsHwoH51TymJVy3L/z2a4CEdT3+a229KUVM
	KjaoKZnlJ5LnEoNDddsVLqYre7Z+zzfllhenn24/PIJUTvX2l1hMDtPDNPUn4Lwg/+t5X8PFCkNvf
	3nhYF2dQA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iPhTM-0000vp-U5; Wed, 30 Oct 2019 06:28:48 +0000
Received: from smtp.codeaurora.org ([198.145.29.96])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iPhTJ-0000vE-4e
 for ath10k@lists.infradead.org; Wed, 30 Oct 2019 06:28:46 +0000
Received: by smtp.codeaurora.org (Postfix, from userid 1000)
 id BB53D60F7A; Wed, 30 Oct 2019 06:28:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=codeaurora.org;
 s=default; t=1572416924;
 bh=3EtR8jh7t7c6zO5KJFSNoxdrq9KxP2FUsVIMb+Yz9uc=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=Pqe9OmYj9dfyln7Jp8Z9c/SlgYDgDZGo/mBLESPRJ/LB1qCUw86SYHrt+GGckzNiB
 i9VX7s9QZKqhlJOVbUXChb9C60z4RtcUydytRoiIBRWb8ESbOrLD6pAXOcRz087M3V
 OiChyuCNL9OBnMwwrRSqvOBPCrXo4tx8p01puPOw=
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
 pdx-caf-mail.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=2.0 tests=ALL_TRUSTED,BAYES_00,
 DKIM_INVALID,DKIM_SIGNED autolearn=no autolearn_force=no version=3.4.0
Received: from mail.codeaurora.org (localhost.localdomain [127.0.0.1])
 by smtp.codeaurora.org (Postfix) with ESMTP id AF3DE60610;
 Wed, 30 Oct 2019 06:28:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=codeaurora.org;
 s=default; t=1572416921;
 bh=3EtR8jh7t7c6zO5KJFSNoxdrq9KxP2FUsVIMb+Yz9uc=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=aAV3QxGbeXqzA+vpyBpDIszwnFDyFYb56JNgs1eiAaU8TLy9lj1f3LIhMBSpcKHbh
 TZ2JEeURLzv6rhRtI63zjY2RNWaytxqDZI1ehwN/6RV2/Bz2VxmZifhyDmW7S5c0E4
 9GNYx1bmiKjrbWiYYp8aflw4wUppuACnTkd84T3U=
MIME-Version: 1.0
Date: Wed, 30 Oct 2019 14:28:41 +0800
From: zhichen@codeaurora.org
To: Adrian Chadd <adrian@freebsd.org>
Subject: Re: [PATCH RFC] Revert "ath10k: fix DMA related firmware crashes on
 multiple devices"
In-Reply-To: <CAJ-VmonXbUQ=Gv9fBbpN+ez25c3Pz+xxLoL67etMdC0Q+bwyXg@mail.gmail.com>
References: <1571734629-18028-1-git-send-email-zhichen@codeaurora.org>
 <d6cfd945-7bab-a01d-0157-e0e1802f66e3@eero.com>
 <CAJ-VmonXbUQ=Gv9fBbpN+ez25c3Pz+xxLoL67etMdC0Q+bwyXg@mail.gmail.com>
Message-ID: <fb2b3b1fc5b3fd00a23e97413777a21e@codeaurora.org>
X-Sender: zhichen@codeaurora.org
User-Agent: Roundcube Webmail/1.2.5
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191029_232845_204687_5F7D8817 
X-CRM114-Status: GOOD (  10.56  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.145.29.96 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: linux-wireless@vger.kernel.org, Peter Oh <peter.oh@eero.com>,
 ath10k <ath10k@lists.infradead.org>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "ath10k" <ath10k-bounces@lists.infradead.org>
Errors-To: ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org

On 2019-10-23 02:24, Adrian Chadd wrote:
> On Tue, 22 Oct 2019 at 10:17, Peter Oh <peter.oh@eero.com> wrote:
>> 
>> 
>> On 10/22/19 1:57 AM, Zhi Chen wrote:
>> > This reverts commit 76d164f582150fd0259ec0fcbc485470bcd8033e.
>> > PCIe hung issue was observed on multiple platforms. The issue was reproduced
>> > when DUT was configured as AP and associated with 50+ STAs.
>> >
>> > With PCIe protocol analyzer, we can see DMA Read crossing 4KB boundary when
>> > issue happened. It broke PCIe spec and caused PCIe stuck.
>> 
>> How can you say value 0 (I believe it's 64 bytes) DMA burst size 
>> causes
>> the symptom and 1 fixes it?
> 
> 
> +1 to this question.
> 
> Also, shouldn't the DMA engine be doing what the firmware says? Is the
> firmware/copy engine actually somehow bursting / prefetching across a
> 4K page boundary?
> 
> Surely this is something that can be fixed in software/firmware by
> correctly configuring up buffer size/offsets?
> 
> 
> 
> -Adrian

DMA engine is working as expected as the configuration. It's copy engine 
which actually
splits the RD/WR requests and accesses host memory.
And yes it's platform related configuration. We have never hit this 
issue on x86 platform.


Zhi

_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k

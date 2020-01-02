Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6740112E269
	for <lists+ath10k@lfdr.de>; Thu,  2 Jan 2020 05:46:53 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:Subject:To:From:
	Date:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=bv2AjJISjx5G7O5NfMnWh5NJBbGIj7fXPy/bWiPzqXQ=; b=qTAy8P6Xl8Jbow1LPVHLE7L/n
	gTWmH+FQTNhucWdsipO6QtS6K/B4+GSYw3cdD9xkrPahlq4iA4lZDaLuihMZpqP21QaZRzwIe7rV1
	FWKyOqWfEK3oNUtLS8VayRFmrfiFXNxWYrS7wcvDLtWK/bygvugAFfM42g9NaP+TlWVXjFRDTR/xy
	J9rC39LlR3pGLhiSaxUYz/CaUelkFJCs9hlgLnFl9K8ogte3VY3RPA4qKHq+qK5X46AZ7mO8pFZWh
	Cp/CnyjNmQiB44kg13SjY+jeeOMwNdyHk8ipM7kjRJe0Mbxzrvyo09A8zSNyVfGCPHqtkRux02lW9
	Dnbo0OoDw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1imsNk-0005fS-Fd; Thu, 02 Jan 2020 04:46:48 +0000
Received: from mail26.static.mailgun.info ([104.130.122.26])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1imsNg-0005eg-LO
 for ath10k@lists.infradead.org; Thu, 02 Jan 2020 04:46:46 +0000
DKIM-Signature: a=rsa-sha256; v=1; c=relaxed/relaxed; d=mg.codeaurora.org;
 q=dns/txt; 
 s=smtp; t=1577940402; h=Message-ID: References: In-Reply-To: Subject:
 Cc: To: From: Date: Content-Transfer-Encoding: Content-Type:
 MIME-Version: Sender; bh=nIcW/PK0m8U9tBMl8GYbhKzVPmBAZUIKE8raJFatUnc=;
 b=UA4YjE6PZiu3vB5SikLflT4g/Vnvl0WSGNQ6CqV0y2AAuBuCwZnpRkrxsxJOTcOIKCOyjxKK
 mmXRkIy35kFRLJ+3330eVFSS+Vcbtp2ov+jOrto6UGbrTfXARDvzBkTY4jz7znI/Ao5QQTL+
 VyGVgT+EAn1HxCJpDh7jUJZpD9g=
X-Mailgun-Sending-Ip: 104.130.122.26
X-Mailgun-Sid: WyJiZDQ3OSIsICJhdGgxMGtAbGlzdHMuaW5mcmFkZWFkLm9yZyIsICJiZTllNGEiXQ==
Received: from smtp.codeaurora.org
 (ec2-35-166-182-171.us-west-2.compute.amazonaws.com [35.166.182.171])
 by mxa.mailgun.org with ESMTP id 5e0d75b1.7f8b123604c8-smtp-out-n02;
 Thu, 02 Jan 2020 04:46:41 -0000 (UTC)
Received: by smtp.codeaurora.org (Postfix, from userid 1001)
 id DF597C43383; Thu,  2 Jan 2020 04:46:40 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
 aws-us-west-2-caf-mail-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.0 required=2.0 tests=ALL_TRUSTED autolearn=ham
 autolearn_force=no version=3.4.0
Received: from mail.codeaurora.org (localhost.localdomain [127.0.0.1])
 (using TLSv1 with cipher ECDHE-RSA-AES256-SHA (256/256 bits))
 (No client certificate requested) (Authenticated sender: wgong)
 by smtp.codeaurora.org (Postfix) with ESMTPSA id 91CA6C433CB;
 Thu,  2 Jan 2020 04:46:40 +0000 (UTC)
MIME-Version: 1.0
Date: Wed, 01 Jan 2020 20:46:40 -0800
From: wgong@codeaurora.org
To: Justin Capella <justincapella@gmail.com>
Subject: Re: [PATCH v2 1/2] ath10k: add refcount for ath10k_core_restart
In-Reply-To: <CAMrEMU_eLfD6=7esrYJA4GnU=CcWgBey1QZL+-=RVoRUUcfZKw@mail.gmail.com>
References: <20191225120002.11163-1-wgong@codeaurora.org>
 <20191225120002.11163-2-wgong@codeaurora.org>
 <CAMrEMU-p3+HRZYW6TzXwZSwhxj9oJ9JW1Rg=ZysJ3fr0rm45Ng@mail.gmail.com>
 <5f6eb95de0f877b86b90d0c32d458d43@codeaurora.org>
 <CAMrEMU_eLfD6=7esrYJA4GnU=CcWgBey1QZL+-=RVoRUUcfZKw@mail.gmail.com>
Message-ID: <37eab887aaa350be0489f7e19f17d024@codeaurora.org>
X-Sender: wgong@codeaurora.org
User-Agent: Roundcube Webmail/1.3.9
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200101_204644_767777_4890088D 
X-CRM114-Status: GOOD (  15.34  )
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

On 2020-01-01 19:10, Justin Capella wrote:
> Instead of the atomic restart count, can the state be updated to
> ATH10K_STATE_RESTARTING while holding
>      mutex_unlock(&ar->conf_mutex);
> 
the recovery process is begin with ath10k_core_restart, and end with 
ath10k_reconfig_complete.
I already see it has mutex_lock(&ar->conf_mutex) and 
mutex_unlock(&ar->conf_mutex) in ath10k_core_restart,
but it is not enough, for example:
1st recovery has finished ath10k_core_restart, but not arrive 
ath10k_reconfig_complete, then the 2nd recovery
begin to enter ath10k_core_restart, it will destroy the 1st recovery and 
let 1st recovery fail.
After apply this patch, after recovery about 18000+ times, and still can 
connect/scan/ping success.

> I don't understand the bundles, but I wonder about the case when there
> are multiple packets (n_rx_pkts) and if pkt_bundle_len might be the
> one to check. Also if there needs to be a check that the len > sizeof
> HTC HDR.
> 
the htc_hdr->len is len of payload, so it allow < sizeof HTC HDR, but 
not allow > ATH10K_HTC_MBOX_MAX_PAYLOAD_LENGTH.
pkt_bundle is only used when it has many packet in rx side, otherwise it 
is not bundled in rx.

patch v3:
https://patchwork.kernel.org/patch/11313853/
https://patchwork.kernel.org/patch/11313859/

> On Tue, Dec 31, 2019 at 1:37 AM <wgong@codeaurora.org> wrote:
>> 
>> On 2019-12-25 23:14, Justin Capella wrote:
>> > This does not only effect SDIO.
>> >
>> > Why a semaphore / count? Could the conf_mutex be held earlier, or
>> > perhaps change the state to ATH10K_STATE_RESTARTING first?
>> > ath10k_reconfig_complete is also called in mac.c when channel is
>> > changed so
>> patch v2:
>> https://patchwork.kernel.org/patch/11313853/
>> https://patchwork.kernel.org/patch/11313859/

_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k

Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3161A124407
	for <lists+ath10k@lfdr.de>; Wed, 18 Dec 2019 11:12:48 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:Subject:To:From:
	Date:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=7R18JJJzF7bPTvb8W8co74xNR86SHoLY8OyO51JPCSI=; b=C3CCuwuBmwlKbj4nBtwEOJMKY
	Y6xy9wBDJOITV2DgAHfV4fX5miGBLvs/bXtlGw+FmBKFw9Lm5La3uOyOndHyMcY55s6Y0LkvSMtZ1
	w+RWopcULqMwD0zDg+OQsG9XqwR2T1pHWS3IqftdI3qML0EjLmDwvr0jNQGr0n43e8u20WhbwKzKj
	SwZfM39eJbHPnb8KT06wgYbH75Uqf6ima2EnNtyK53ls9yhHI/BWY3MoLKd5pUOdTzi45zKLnUOYl
	yruc2LjO39cdiBaQV5RIpr30QTVniGVlI8zdE9s92NQ/EONggk58PwoekKeAALPnDuX/oSuaWgPds
	O/sCi3GWw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ihWJx-0002mt-6A; Wed, 18 Dec 2019 10:12:45 +0000
Received: from mail26.static.mailgun.info ([104.130.122.26])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ihWJp-0002mJ-43
 for ath10k@lists.infradead.org; Wed, 18 Dec 2019 10:12:41 +0000
DKIM-Signature: a=rsa-sha256; v=1; c=relaxed/relaxed; d=mg.codeaurora.org;
 q=dns/txt; 
 s=smtp; t=1576663957; h=Message-ID: References: In-Reply-To: Subject:
 Cc: To: From: Date: Content-Transfer-Encoding: Content-Type:
 MIME-Version: Sender; bh=MYBjK0EB6uxWlrDf2EdJWdB3BIabJ0S3eRvn7HHYhLA=;
 b=rwWNojjGYrRkaJnQwYJ92hu8hgs/0NYrFxmio0I6aTqxNHwzWqlT+WYavgO/ao1BkUOC8dk9
 Ef7EpSh+ny5L6+2H5sM3c5ern+UKwObfsf6yMhWpomelQ4RWzCzrnvBPxsSJcIhbNuJ5Gl8y
 G5YRawZ1KcC8wU9UktUldYI08xw=
X-Mailgun-Sending-Ip: 104.130.122.26
X-Mailgun-Sid: WyJiZDQ3OSIsICJhdGgxMGtAbGlzdHMuaW5mcmFkZWFkLm9yZyIsICJiZTllNGEiXQ==
Received: from smtp.codeaurora.org
 (ec2-35-166-182-171.us-west-2.compute.amazonaws.com [35.166.182.171])
 by mxa.mailgun.org with ESMTP id 5df9fb91.7f9d93fa7960-smtp-out-n03;
 Wed, 18 Dec 2019 10:12:33 -0000 (UTC)
Received: by smtp.codeaurora.org (Postfix, from userid 1001)
 id 94A0EC4479D; Wed, 18 Dec 2019 10:12:32 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
 aws-us-west-2-caf-mail-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.0 required=2.0 tests=ALL_TRUSTED autolearn=ham
 autolearn_force=no version=3.4.0
Received: from mail.codeaurora.org (localhost.localdomain [127.0.0.1])
 (using TLSv1 with cipher ECDHE-RSA-AES256-SHA (256/256 bits))
 (No client certificate requested) (Authenticated sender: yiboz)
 by smtp.codeaurora.org (Postfix) with ESMTPSA id 60A4FC4479C;
 Wed, 18 Dec 2019 10:12:32 +0000 (UTC)
MIME-Version: 1.0
Date: Wed, 18 Dec 2019 18:12:32 +0800
From: yiboz@codeaurora.org
To: Johannes Berg <johannes@sipsolutions.net>
Subject: Re: [PATCH 2/4] mac80211: fix issue in loop scenario
In-Reply-To: <94471b2381bee394f9708eae8ba47129f3facd03.camel@sipsolutions.net>
References: <1576221593-1086-1-git-send-email-yiboz@codeaurora.org>
 <1576221593-1086-3-git-send-email-yiboz@codeaurora.org>
 (sfid-20191213_082426_564220_0827923D)
 <94471b2381bee394f9708eae8ba47129f3facd03.camel@sipsolutions.net>
Message-ID: <6f092bd44cfc581a219bd0f0506cc636@codeaurora.org>
X-Sender: yiboz@codeaurora.org
User-Agent: Roundcube Webmail/1.3.9
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191218_021240_495906_D279FE50 
X-CRM114-Status: GOOD (  10.62  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [104.130.122.26 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [104.130.122.26 listed in wl.mailspike.net]
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
Cc: linux-wireless@vger.kernel.org, ath10k@lists.infradead.org
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "ath10k" <ath10k-bounces@lists.infradead.org>
Errors-To: ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org

5ZyoIDIwMTktMTItMTMgMTc6NTbvvIxKb2hhbm5lcyBCZXJnIOWGmemBk++8mgo+IE9uIEZyaSwg
MjAxOS0xMi0xMyBhdCAxNToxOSArMDgwMCwgWWlibyBaaGFvIHdyb3RlOgo+PiBJbiBhIGxvb3Ag
dHhxcyBkZXF1ZXVlIHNjZW5hcmlvLCBpZiB0aGUgZmlyc3QgdHhxIGluIHRoZSByYnRyZWUgZ2V0
cwo+PiByZW1vdmVkIGZyb20gcmJ0cmVlIGltbWVkaWF0ZWx5IGluIHRoZSBpZWVlODAyMTFfcmV0
dXJuX3R4cSgpLCB0aGUKPj4gbG9vcCB3aWxsIGJyZWFrIHNvb24gaW4gdGhlIGllZWU4MDIxMV9u
ZXh0X3R4cSgpIGR1ZSB0byBzY2hlZHVsZV9wb3MKPj4gbm90IGxlYWRpbmcgdG8gdGhlIHNlY29u
ZCB0eHEgaW4gdGhlIHJidHJlZS4gVGh1cyB1cGRhdGUgc2NoZWR1bGVfcG9zCj4+IHRvIHByZXZp
b3VzIG5vZGUgb25jZSB0aGUgbm9kZSBvZiBzY2hlZHVsZV9wb3MgaXMgZWl0aGVyIHJlbW92ZWQg
ZnJvbQo+PiByYnRyZWUgb3IgbW92ZSB0byBvdGhlciBsb2NhdGlvbiBpbiByYnRyZWUgZHVlIHRv
IGFpcnRpbWUgdXBkYXRlLgo+IAo+IEZvciBteSB1bmRlcnN0YW5kaW5nIC0gdGhpcyBpcyBhIGZp
eCB0byB0aGUgZmlyc3QgcGF0Y2ggaW4gdGhlIHNlcmllcz8KPiAKPiBJIGd1ZXNzIHlvdSBkaWRu
J3Qgc3F1YXNoIGl0IGJlY2F1c2UgdGhhdCdzIFRva2UncyBwYXRjaCBvciBzb21ldGhpbmc/Cj4g
Cj4gSSB0ZW5kIHRvIHRoaW5rIHlvdSBzdGlsbCBzaG91bGQsIGFuZCBhbm5vdGF0ZSB0aGUgY2hh
bmdlcywgYnV0IEkgCj4gd2FudGVkCj4gdG8gdW5kZXJzdGFuZCBpdCBmaXJzdC4KCkhpIEpvaGFu
bmVzLAoKWWVzLCB0aGlzIGlzIGEgZml4IHRvIHRoZSBmaXJzdCBwYXRjaC4gQWN0dWFsbHksIHRo
ZSByZXN0IG9mIHR3byBwYXRjaGVzIAphcmUgYWxzbyBzZXJ2ZSB0aGUgc2FtZS4gU28sIGFyZSB5
b3Ugc3VnZ2VzdGluZyB0byBtZXJnZSB0aGVtIHRvIHRoZSAKZmlyc3QgcGF0Y2g/CgpQcmV2aW91
bHksIEkgaGFkIGFkZGVkIFRva2UncyBzaWduYXR1cmUgaW4gdGhpcyBwYXRjaCBidXQgVG9rZSBh
ZHZpc2VkIAp0byBkZWxldGUgaXQuIEkgZmVlbCBhIGxpdHRsZSBiaXQgY29uZnVzZWQgYWJvdXQg
aG93IHRvIGhhbmRsZSBpdC4gCkFwcHJlY2lhdGUgYW55IGRldGFpbCBndWlkZS4KPiAKPiBqb2hh
bm5lcwoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KYXRo
MTBrIG1haWxpbmcgbGlzdAphdGgxMGtAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMu
aW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2F0aDEwawo=

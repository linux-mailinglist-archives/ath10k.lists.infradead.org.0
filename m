Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C857B12D77D
	for <lists+ath10k@lfdr.de>; Tue, 31 Dec 2019 10:36:18 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:Subject:To:From:
	Date:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=gW7ykm7zU4vWJgUqKUjXAo15MChv4Q3PG7Lv24kP7rw=; b=jo5KhBZhbYkWs5PoPEwzWKAzv
	B+CduQ/3k4ZWU+CnS1NT8lgi6v6Vxj+wrs6dkBz28xgdBtoGQS9Ecjy2m/JUkI1iJNUkYqwbrEnpS
	xGkTP++cFBj+p+QjwZ3KJuFTgjU6doimWm6wZqQZCMxGx4PhDUnQJKY2iOL5qgKVODXT/qTS7WCGJ
	U4X3A/91bS0YzlKFcX1MjFHHVCjuaPmrKuPVRxX5Pyj1fK6huUmwP2WGeNyAKzAeM9e6vtBQeoLgm
	0Khivcr+xI9VqSLXkN6orzY6q7n/5iqOkk9cNhUP+F4fam1CNeB4+ORm/HfVBpinoZ5e+jyJSnoRa
	h3cmG3yVg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1imDwm-000266-5l; Tue, 31 Dec 2019 09:36:16 +0000
Received: from mail26.static.mailgun.info ([104.130.122.26])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1imDwi-00025o-CD
 for ath10k@lists.infradead.org; Tue, 31 Dec 2019 09:36:13 +0000
DKIM-Signature: a=rsa-sha256; v=1; c=relaxed/relaxed; d=mg.codeaurora.org;
 q=dns/txt; 
 s=smtp; t=1577784971; h=Message-ID: References: In-Reply-To: Subject:
 Cc: To: From: Date: Content-Transfer-Encoding: Content-Type:
 MIME-Version: Sender; bh=PgBVetFV5i/BVN9CTKkEURi7vaEtzmcR53n7QM3V48k=;
 b=qs0iM9oQSVajG92aneWqcG+tznY79/JuWIwxf2HdlNOwDEx0MWwVFQJr/J+M/b2qm9RtBChY
 36paxrTDnP4iNQoyjKHiSNNpH5Kv0fDvEogYnNu6ci1KEs1lrMIidliO29Z/kSYiWCEu0jb2
 lr2mS9Wb8Nps+kA5/HNJHsh+P4s=
X-Mailgun-Sending-Ip: 104.130.122.26
X-Mailgun-Sid: WyJiZDQ3OSIsICJhdGgxMGtAbGlzdHMuaW5mcmFkZWFkLm9yZyIsICJiZTllNGEiXQ==
Received: from smtp.codeaurora.org
 (ec2-35-166-182-171.us-west-2.compute.amazonaws.com [35.166.182.171])
 by mxa.mailgun.org with ESMTP id 5e0b168b.7fc28cfc0490-smtp-out-n01;
 Tue, 31 Dec 2019 09:36:11 -0000 (UTC)
Received: by smtp.codeaurora.org (Postfix, from userid 1001)
 id 2780AC433A2; Tue, 31 Dec 2019 09:36:11 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
 aws-us-west-2-caf-mail-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.0 required=2.0 tests=ALL_TRUSTED autolearn=ham
 autolearn_force=no version=3.4.0
Received: from mail.codeaurora.org (localhost.localdomain [127.0.0.1])
 (using TLSv1 with cipher ECDHE-RSA-AES256-SHA (256/256 bits))
 (No client certificate requested) (Authenticated sender: wgong)
 by smtp.codeaurora.org (Postfix) with ESMTPSA id EDD0DC43383;
 Tue, 31 Dec 2019 09:36:10 +0000 (UTC)
MIME-Version: 1.0
Date: Tue, 31 Dec 2019 17:36:10 +0800
From: wgong@codeaurora.org
To: Justin Capella <justincapella@gmail.com>
Subject: Re: [PATCH] ath10k: select the min len of RX skb for sdio
In-Reply-To: <CAMrEMU94SDEP24XfFL-2R2KoK4NehwDY8p=MsNx1P7PBi111JQ@mail.gmail.com>
References: <20191220063829.11873-1-wgong@codeaurora.org>
 <CAMrEMU9cfYqgC_MvAuhJh5-pjqb_+WamHEkHf-t2ZW=nOR-8+w@mail.gmail.com>
 <c962d9a7401c4a3bbad71b01190fdce9@codeaurora.org>
 <CAMrEMU94SDEP24XfFL-2R2KoK4NehwDY8p=MsNx1P7PBi111JQ@mail.gmail.com>
Message-ID: <a57a6803397c5f5a97c64e7fc33de98c@codeaurora.org>
X-Sender: wgong@codeaurora.org
User-Agent: Roundcube Webmail/1.3.9
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191231_013612_475036_FBFDE968 
X-CRM114-Status: UNSURE (   8.99  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [104.130.122.26 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [104.130.122.26 listed in wl.mailspike.net]
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

On 2019-12-20 20:11, Justin Capella wrote:
> If the data is invalid I think it should be discarded and a warning
> displayed, it is just as bad to pass too little data isn't it? Then
> you potentially have uninitialized data? Or pointers to nonsense?
> There is a good chance I am misunderstanding though, I just wanted to
> make sure you had considered those cases and the word alignment if
> that applies to this type of bus?
yes,
patch v2: https://patchwork.kernel.org/patch/11313849/

_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k

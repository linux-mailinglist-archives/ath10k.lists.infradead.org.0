Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F1DAB1244C9
	for <lists+ath10k@lfdr.de>; Wed, 18 Dec 2019 11:37:45 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:References
	:In-Reply-To:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=H8xAgi1jtWZd/GzepuHIsP5fVADWad6TtMPHnf5+xUk=; b=evfbJrF49kXkKt
	hUjrqs3f5YQKA0VeBoT8sU7SVRnbyMF6wozc2I9+8R5SNJkBPrGZPIQbsZrilIJovtNUTy6WfsDFC
	bhcD6lL6JrCBGBewKUq+581Q8igs37YpMazgTpLb6ZF/+jSFDjHpjKNU2DnrtlTnEF5jEtGX+5/O9
	gS66L0kkgQNRY2n6efhtQKsJDEdVrI1zVk3SQ7Pp4GJaCblNjxSXKiuU9Amscx6aukWswtzzMrwqs
	IaaK9ofnar1lOnMRRR9hpW1/ytvy/L1Idnyo5RrJnAaCDnsWPtaSjcEc+DnbK2j6oGjAZ6rgCmDmQ
	S+8jyzBgKIuZ8hM0RlnQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ihWi8-0002of-CQ; Wed, 18 Dec 2019 10:37:44 +0000
Received: from us-smtp-delivery-1.mimecast.com ([207.211.31.120]
 helo=us-smtp-1.mimecast.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ihWi4-0002o3-WB
 for ath10k@lists.infradead.org; Wed, 18 Dec 2019 10:37:42 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1576665459;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=5po4pW0zjg0lSh6mZ38h3w9bLeyqwyZKVpfKytmOV/s=;
 b=h2kEV5UNh6/AQfwXO1FYCYrJz+30f1wY/3tkhopyjZKUkLFnajBdCjC2Pp0YuQO6DmsFXP
 DiL/PO/5mkWcHXx6231fSBX2FrjWNFuygTJRXW7dCfJznEBY34cE6Z98lVC1noHoLC0+XN
 q0a8Wgnyw4BvZK3QIParUBSKguDn0a0=
Received: from mail-lj1-f198.google.com (mail-lj1-f198.google.com
 [209.85.208.198]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-339-JW610wHXPISotJETNNUjHQ-1; Wed, 18 Dec 2019 05:37:37 -0500
Received: by mail-lj1-f198.google.com with SMTP id z18so542085ljm.22
 for <ath10k@lists.infradead.org>; Wed, 18 Dec 2019 02:37:37 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:in-reply-to:references:date
 :message-id:mime-version;
 bh=8SktKQZsXLkZz8tbp2+l3lCaDvOYc6OBmZ+sYSZcMbc=;
 b=RukIW2I291UVOMpVWBxlQBXvm+QObZhwsgeRmySqybAFFcEYXF2HQF1aErc2u4d84d
 lcyMYDxWvsZrilFb9Oq/a+kPIoTWteb9r/INWAfqC3NtcLLdK/FcEAeUGS9ad/0MIu/j
 9gZVOFlBmyY1ePp1nfUUSseKYOS6+gpb+71+nAH7SdcyzNUUf9wICsqsTyeP8FCvkvb0
 sfxGN1MgtqD7Qx6uMu0yymMqvU/AzpoHZVpLMmti+2/db3Q3WpQgKLITyWPtDoY2QTjW
 gp+SKvqLhML82oTX3zVnTZcsOrW7dvCyBF9cmfSdlP1gabhL3ndqojQaH8wZ3OtjdTij
 MIYA==
X-Gm-Message-State: APjAAAUC/zTHyMqyDGAYqAkHdCmYB+88BTVNfW8PdWV/BdFoj2mnKbdA
 etnOczOICMWyd4pRf+LsZEgvT15tKFnHBkZachvhMDk6yJeEocAcPeDQRh6ISiOAA8mV6kq53p8
 ARrPDtqCqkZjuPLUs+KEjew==
X-Received: by 2002:a19:c3cc:: with SMTP id t195mr1320743lff.144.1576665456044; 
 Wed, 18 Dec 2019 02:37:36 -0800 (PST)
X-Google-Smtp-Source: APXvYqzsm4BEwtdXYCE4SXm+dNHdcNZ7fckwOwHfd7+0KfcV46AHBqkzkspUmpyIyo2eN2s5LOIVnQ==
X-Received: by 2002:a19:c3cc:: with SMTP id t195mr1320733lff.144.1576665455819; 
 Wed, 18 Dec 2019 02:37:35 -0800 (PST)
Received: from alrua-x1.borgediget.toke.dk ([45.145.92.2])
 by smtp.gmail.com with ESMTPSA id r26sm881937lfm.82.2019.12.18.02.37.34
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 18 Dec 2019 02:37:35 -0800 (PST)
Received: by alrua-x1.borgediget.toke.dk (Postfix, from userid 1000)
 id 148F3180969; Wed, 18 Dec 2019 11:37:34 +0100 (CET)
From: Toke =?utf-8?Q?H=C3=B8iland-J=C3=B8rgensen?= <toke@redhat.com>
To: Johannes Berg <johannes@sipsolutions.net>, yiboz@codeaurora.org
Subject: Re: [PATCH 2/4] mac80211: fix issue in loop scenario
In-Reply-To: <c126d2ff0866faf9ac50b12920f0497b03b031f7.camel@sipsolutions.net>
References: <1576221593-1086-1-git-send-email-yiboz@codeaurora.org>
 <1576221593-1086-3-git-send-email-yiboz@codeaurora.org>
 <94471b2381bee394f9708eae8ba47129f3facd03.camel@sipsolutions.net>
 <6f092bd44cfc581a219bd0f0506cc636@codeaurora.org>
 <c126d2ff0866faf9ac50b12920f0497b03b031f7.camel@sipsolutions.net>
X-Clacks-Overhead: GNU Terry Pratchett
Date: Wed, 18 Dec 2019 11:37:34 +0100
Message-ID: <87h81x7wcx.fsf@toke.dk>
MIME-Version: 1.0
X-MC-Unique: JW610wHXPISotJETNNUjHQ-1
X-Mimecast-Spam-Score: 0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191218_023741_115640_8F18C094 
X-CRM114-Status: UNSURE (   9.11  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [207.211.31.120 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "ath10k" <ath10k-bounces@lists.infradead.org>
Errors-To: ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org

Johannes Berg <johannes@sipsolutions.net> writes:

> On Wed, 2019-12-18 at 18:12 +0800, yiboz@codeaurora.org wrote:
>> 
>> Yes, this is a fix to the first patch. Actually, the rest of two patches 
>> are also serve the same. So, are you suggesting to merge them to the 
>> first patch?
>
> Yes.
>
>> Previouly, I had added Toke's signature in this patch but Toke advised 
>> to delete it. I feel a little bit confused about how to handle it. 
>> Appreciate any detail guide.
>
> I guess that you have to discuss that with Toke, how he wants to handle
> it ... If he gave you a patch with his signed-off-by, then you should
> probably keep it? There's also "Co-developed-by" tag to give some sort
> of non-author developer credits.

I'll do some squashing and send a new version; in which case I think it
makes sense to have both our s-o-b tags, and maybe a co-developed-by.

I'm hoping to get this done before the holidays (i.e., this week).
Already got everything rebased to current mac80211-next, just need to do
the squashing and fix up the other outstanding issues from last time.

-Toke


_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k

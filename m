Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 24827C31F9
	for <lists+ath10k@lfdr.de>; Tue,  1 Oct 2019 13:05:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:References
	:In-Reply-To:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=AhtaUl1TmS6wynbY6bdWYnlGIkaNSNv8DfC9TwwoevQ=; b=TgTQ30fVmyWkG0
	S4NlZNCWH0znoD+6c0p/LlZ1xupDBQpGh0fQ0TvMqIKRU84d/Xr4HSY3WljzAWAmTdlXCjsAZeXEf
	KJgpRYs5rI/waI82rLmthaTEQe/NFGm+UIo3SgaJB4TQvVSlmoX3gluAcAPTBeS6sx1BVkQJeDIfC
	iBhJOJOG2Na1d2z2cXUbfeqcZrcq8yUd2hnqAYgJh++7NkYfjUsBjltKvVLmDSJBLbZ1JtGdM3R1U
	bdwhHLLv1HpF5RYdapB6Lz+FbdLpjEvq/tMXJZ6RAoP4XgngmYAI8kIhdwZVztgA4iVd7tzEvPZkn
	0O9dEpeZ3+JstT1w2fZw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iFFyQ-0002Ga-1d; Tue, 01 Oct 2019 11:05:42 +0000
Received: from us-smtp-2.mimecast.com ([207.211.31.81]
 helo=us-smtp-delivery-1.mimecast.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iFFyL-0002FI-H3
 for ath10k@lists.infradead.org; Tue, 01 Oct 2019 11:05:39 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1569927932;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=AVsvHTUiJXZiUPgFBdi2gYHsvhhqAGRgG/FQ9DspGVA=;
 b=gLCi5EFg36bgnoCOrshXsZ1L5XCUhUW87kUOIxbgsyJcTYi93VUUbLZCWyYoPED962RMtt
 LUjRYFmBPjVURclDsJrke0V9tDfPQAEZfycqbFrolYZLBdeZfBfcJyZCGjy3A9B4dO7UrF
 Ax7lKamsfClH6dSdNC1SWOJdQ3Q63Vk=
Received: from mail-lf1-f72.google.com (mail-lf1-f72.google.com
 [209.85.167.72]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-341-ePrC-dlwMGiqUfhNZGd67w-1; Tue, 01 Oct 2019 07:05:29 -0400
Received: by mail-lf1-f72.google.com with SMTP id c83so2680360lfg.8
 for <ath10k@lists.infradead.org>; Tue, 01 Oct 2019 04:05:29 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:in-reply-to:references:date
 :message-id:mime-version;
 bh=wZ8bNOH9jek4T+XHr/OU+DDOP2RzN2cpsfXiL6JbaUI=;
 b=ogKFGZmMM+WRVJNwszm+92Uru3atwelGneBrPE2z5vq6L1G0gc3RrkfuZWwnKjdP+e
 3kdJWCEVz6Vi9skJp0jv6T3t7CLhsLK4uTAbknc+9QEdJ5qGETi2G0lYe6+0+AIEPvUx
 32IjytclVNvAnfPn44+QEFm8ZdorXxJZl1zgm6eHdzRv1pT6mW1TUhAv4T55uOOcbdtL
 /DVV5qc9gkTnmYLlAL7FSDmeAX6dCHNfVxZxQac/U/LNWdugBBj1ZblGa8xLTn1Ru6ZS
 YUTV8aQa04+TX6e4CriJS5MnPI+bJLuun8fBmPlSarOTn4awDmRY2F65QhcxrPe7Q/zF
 XgMw==
X-Gm-Message-State: APjAAAUDciHR/GayPJVyjKHKz+PouzwQ5R1cl8XGFiJROnvlosn8/DXP
 FOgpU1qR9NafTCH9BdHjQopYWMYxQqvp/RIZpvwpRlSyJcTe7jIkp6JsJ4/Tkt1IAKRDN7GH3nv
 hvWYuF4yGm69g9mmSTIaJKA==
X-Received: by 2002:a19:c709:: with SMTP id x9mr14963896lff.20.1569927928264; 
 Tue, 01 Oct 2019 04:05:28 -0700 (PDT)
X-Google-Smtp-Source: APXvYqzBVgLKZr5yvTXsALkox4es6JwSriEe1mdilE3hADu18nrdz6KA4qon5+J0W04TXCIDLoMOMw==
X-Received: by 2002:a19:c709:: with SMTP id x9mr14963892lff.20.1569927928115; 
 Tue, 01 Oct 2019 04:05:28 -0700 (PDT)
Received: from alrua-x1.borgediget.toke.dk ([2a00:7660:6da:443::2])
 by smtp.gmail.com with ESMTPSA id s1sm3842557lfd.14.2019.10.01.04.05.27
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 01 Oct 2019 04:05:27 -0700 (PDT)
Received: by alrua-x1.borgediget.toke.dk (Postfix, from userid 1000)
 id 99A4018063D; Tue,  1 Oct 2019 13:05:26 +0200 (CEST)
From: Toke =?utf-8?Q?H=C3=B8iland-J=C3=B8rgensen?= <toke@redhat.com>
To: Yibo Zhao <yiboz@codeaurora.org>, Johannes Berg <johannes@sipsolutions.net>
Subject: Re: [PATCH V3 0/4] Enable virtual time-based airtime scheduler
 support on ath10k
In-Reply-To: <e710a18d65ecaf2168a27556c85dada8@codeaurora.org>
References: <1569223201-1490-1-git-send-email-yiboz@codeaurora.org>
 <20985660fd0872db1511948bd42cd925cef13cee.camel@sipsolutions.net>
 <e710a18d65ecaf2168a27556c85dada8@codeaurora.org>
X-Clacks-Overhead: GNU Terry Pratchett
Date: Tue, 01 Oct 2019 13:05:26 +0200
Message-ID: <8736gcvi89.fsf@toke.dk>
MIME-Version: 1.0
X-MC-Unique: ePrC-dlwMGiqUfhNZGd67w-1
X-Mimecast-Spam-Score: 0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191001_040537_808491_A16F2065 
X-CRM114-Status: UNSURE (   6.82  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [207.211.31.81 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [207.211.31.81 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: linux-wireless-owner@vger.kernel.org, linux-wireless@vger.kernel.org,
 ath10k@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "ath10k" <ath10k-bounces@lists.infradead.org>
Errors-To: ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org

Yibo Zhao <yiboz@codeaurora.org> writes:

> On 2019-10-01 18:19, Johannes Berg wrote:
>> On Mon, 2019-09-23 at 15:19 +0800, Yibo Zhao wrote:
>>> This series fix some issues when enabling virtual time-based airtime 
>>> scheduler on ath10k.
>>> 
>> Given the lengthy discussion here and also over in the related thread
>> about AQL, I'm assuming you're going to repost this eventually.
>
> Yes, will repost once Toke have updated "mac80211: Switch to a virtual 
> time-based airtime scheduler" with his new ideas.

Which in turn is waiting for the AQL stuff... :)

-Toke


_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k

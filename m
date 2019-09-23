Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 23BC9BB27E
	for <lists+ath10k@lfdr.de>; Mon, 23 Sep 2019 12:56:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:References
	:In-Reply-To:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=q/8b+3TtA8v4XynWzeZSLvpyHKyXKSbraaPlmPHk7Nc=; b=YATMzqzqHbvmC8
	/7nJ04y4AmPCy0XnzTqR1hlPBuoSgjJWboaFJBbecIQ2w3zG89MjXr5N/B3TrN2ntWf29qZ+JkPAu
	bIInjLtSsUBsexhL/BIyZME0rvkzWkH/8tuAUv4wd5cnWjrg409xR7I3rvRTgImKu1RwlKqgj3plP
	pOF3HNogxqEgt1M30lYUJz4vKDU4xrQT0HzbxLMLcEB9HsYKJrVThHwErAhvTz/tv8bUwfMlqBjIQ
	Bjk04/CStXXO6oIPWGoWaqh+2feBZd9B8EiVK5ZVo+xuOB9v3kG6OmDSOo1QNnod7eaenzlyrPQTM
	pYtUaJX95ls18OeOVJfw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iCM0z-0003rF-Cu; Mon, 23 Sep 2019 10:56:21 +0000
Received: from us-smtp-delivery-1.mimecast.com ([205.139.110.120]
 helo=us-smtp-1.mimecast.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iCM0v-0003qv-Ix
 for ath10k@lists.infradead.org; Mon, 23 Sep 2019 10:56:18 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1569236175;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=dd0DRRuSK1KZajbDnec+HOdMYMvRrU+KMiQr1eyYspI=;
 b=IkTH4hMINpokvn7JZJvjIoQ1XGL/7itqMRyQkHdgTE5qlU8Mcrc2tYPKiZPPACZLcwsBWz
 gT2kJG7DPpnQ5DB9RG5s5Q4pi0+Z5bpCxdSkhRcVDng1sGgzl179nGgWsi1u1+cosX2G1e
 POmHuMQsZc3pvbdt4tEhHu48ty9/RfA=
Received: from mail-lf1-f72.google.com (mail-lf1-f72.google.com
 [209.85.167.72]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-252-xA6mPNIEP0-xhA216Hc4ag-1; Mon, 23 Sep 2019 06:56:14 -0400
Received: by mail-lf1-f72.google.com with SMTP id m24so2314465lfh.22
 for <ath10k@lists.infradead.org>; Mon, 23 Sep 2019 03:56:13 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:in-reply-to:references:date
 :message-id:mime-version;
 bh=dd0DRRuSK1KZajbDnec+HOdMYMvRrU+KMiQr1eyYspI=;
 b=dHWr9KpTdsHYHcxxkG9bSx8LuC7VvnMAGveE3O6EbxwhFnUtF8a3YwJtNV0ghDw8E0
 viFsTHZQy4RE63p+QKBZ900lQg/GD5eqmVs/lKOMChGkZH62wpTz4rFrR6Agh2E3t3de
 z3vXBzs4nVugYGQOeGF2yrXhxWRkoKc0+kfoYPtvyfkEe2BUwfM+aGzjsg8JhNi7JBqe
 Mz5yoAkw0BmqBXJL47P560kJqBKYUEmBCBnq9br8KwbeaWFnCiRjSGwbt52zFE5qLeSr
 u5QN6eM7FqNNxivdC1b0q46XxmfQcmrLkjcSOfY0S6QgRT+REhI5kVV9rFBZ9Bce4So8
 Cp6g==
X-Gm-Message-State: APjAAAXuffFPP8nR0m6zjn4Rrc3A/xdWnawf/OeNaS9dIuXXVVjUAJHj
 ZKIIF3Qg+wo/5dCgdfJn42y0/BJBbKDrzZY4gX7ASQZaoqV8f5ECmYquEwijQuwifSzRwOPmiPl
 EoApbj33NpzzU6ikih2sofw==
X-Received: by 2002:a2e:8558:: with SMTP id u24mr17189188ljj.191.1569236172595; 
 Mon, 23 Sep 2019 03:56:12 -0700 (PDT)
X-Google-Smtp-Source: APXvYqwWtGd+z4ZvrIlXFR1MjZzxJf6lCR4c3SqpHXhBocMr4ZVUh1j+TDaXTghcEpGSOG6uPk/9eQ==
X-Received: by 2002:a2e:8558:: with SMTP id u24mr17189180ljj.191.1569236172489; 
 Mon, 23 Sep 2019 03:56:12 -0700 (PDT)
Received: from alrua-x1.borgediget.toke.dk (borgediget.toke.dk.
 [85.204.121.218])
 by smtp.gmail.com with ESMTPSA id h9sm2139336lfp.40.2019.09.23.03.56.11
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 23 Sep 2019 03:56:11 -0700 (PDT)
Received: by alrua-x1.borgediget.toke.dk (Postfix, from userid 1000)
 id EC7EF1804C8; Mon, 23 Sep 2019 12:56:10 +0200 (CEST)
From: Toke =?utf-8?Q?H=C3=B8iland-J=C3=B8rgensen?= <toke@redhat.com>
To: Yibo Zhao <yiboz@codeaurora.org>, linux-wireless@vger.kernel.org
Subject: Re: [PATCH V3 2/4] mac80211: defer txqs removal from rbtree
In-Reply-To: <1569223201-1490-3-git-send-email-yiboz@codeaurora.org>
References: <1569223201-1490-1-git-send-email-yiboz@codeaurora.org>
 <1569223201-1490-3-git-send-email-yiboz@codeaurora.org>
X-Clacks-Overhead: GNU Terry Pratchett
Date: Mon, 23 Sep 2019 12:56:10 +0200
Message-ID: <87ef075lit.fsf@toke.dk>
MIME-Version: 1.0
X-MC-Unique: xA6mPNIEP0-xhA216Hc4ag-1
X-Mimecast-Spam-Score: 0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190923_035617_690829_2F0065AF 
X-CRM114-Status: UNSURE (   4.40  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [205.139.110.120 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [205.139.110.120 listed in wl.mailspike.net]
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Yibo Zhao <yiboz@codeaurora.org>, ath10k@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "ath10k" <ath10k-bounces@lists.infradead.org>
Errors-To: ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org

Yibo Zhao <yiboz@codeaurora.org> writes:

> In a loop txqs dequeue scenario, if the first txq in the rbtree gets
> removed from rbtree immediately in the ieee80211_return_txq(), the
> loop will break soon in the ieee80211_next_txq() due to schedule_pos
> not leading to the second txq in the rbtree. Thus, defering the
> removal right before the end of this schedule round.

Didn't we agree that we could fix this by making __unschedule_txq()
aware of schedule_pos instead of this deferred removal mechanism?

-Toke


_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k

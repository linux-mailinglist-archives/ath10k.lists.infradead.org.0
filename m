Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 39F83133F93
	for <lists+ath10k@lfdr.de>; Wed,  8 Jan 2020 11:46:00 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=SKDTiABPPQCUBBhGYXee1/+T1hN5as2tT3hXmAwZ/yg=; b=J6QLmUA5e5uwud
	sihzQ689m/SLb8GS5uIQn0Hb7TQheMlmgzNA7hV5NSkj7YlD0xF7PEfCDzWgqlgvv7ir95p/KtYym
	eNUvI05rcsXXEccZiKNI3zrucvdUyKbNiVhQI3bpvca/QJxJlBP7WTZNVnIm+AcKZVCU8HFD9B0kw
	GhwO/36rXXNKWHvPULqQ6Hc01KoRrxgs4T5GMH/jgCTr9PB2jPMvSP6seaVAjmOHboFm2wfXobJ63
	JRph82vE9b29MhdNaWHzf2hL72v5b0Mhcn1q6Zz+1JTMK4yeYagDGLENcOhUPycdyr9UANr674PoI
	cF9ZxJnfrcA2OMOY/agg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ip8qa-0003xS-TW; Wed, 08 Jan 2020 10:45:56 +0000
Received: from mail-oi1-x242.google.com ([2607:f8b0:4864:20::242])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ip8qX-0003wn-JX
 for ath10k@lists.infradead.org; Wed, 08 Jan 2020 10:45:54 +0000
Received: by mail-oi1-x242.google.com with SMTP id c77so2212980oib.7
 for <ath10k@lists.infradead.org>; Wed, 08 Jan 2020 02:45:52 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=+By7NrQmfZQ1g4MO8d3R+M35m5DiMvl+xvSs0kwnPOI=;
 b=NWl3x2DYvSBgy5NDRthkQvCaenEBWaEm7RotpNt9i/1NvZNu8kJJjnJ1RMWqKSRH1K
 cJ6XC0obsKrdXP48BtgeGy1PoiEfTb9xLy3519Ag8aWMv+1PHR5ei8cFhLaFPqSRFjJf
 kkVSHy3jcCOz2TBVJgSS8rgkF+8tcgXt+XetnmdQ4JlBw8656D+qaqegPGXeH5GO4YzO
 JVKv9xDV/ir83SQXeQQlpAqfezpHTYyJbt5stazu/SSBiN2DKyg+GvLVVWNQ1/Kv6lXM
 mWURwqrKT9k3Jn/7Vrm0iBwruA8Jqy0P7rGljm+ZlK/9BYvQj/jsuh4MJsS7SwB0wBZV
 D3jw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=+By7NrQmfZQ1g4MO8d3R+M35m5DiMvl+xvSs0kwnPOI=;
 b=QIXYzibUOJj90qgy1B9+q8u9HDe8Oy+ui4L5CSc2bSs3J+Ka7m5kGUHM1GmoClAl5+
 8PVRJcK3QVkcseBtVpFudEDlqC8tzq65vl9VYPwaxTUfFz6uMbLdXlsV0GlTb6lG5u2X
 //tMmRgSf7E0E7U+SPGRDAOMhklDfoKBSZHN1jzlokKteX1CKvQtu7Ik/Yik980Ia0tC
 Zw+oWOpuM6ocFBftTrjJs6t54ezDDzglF9i/YKm3rEvajzECxI5CBiiltfb9iaEt+j65
 Gq4mXcm7ChfVDMarJls1oqQrdfYou7lZ53j58ZC9ZpzWZ6VfTvzgzv7/pxWyxXLLT5Ql
 TJaQ==
X-Gm-Message-State: APjAAAVjYbJBKSbrtF0HOokJXs/2HbWpjIEJvUVGBL+lfgQOn1FpHh9V
 PXLpZrCkWzwGK+cWuEvLi1uKq1DwRyY1+N0HCSE=
X-Google-Smtp-Source: APXvYqyC/jdXGiAwmN3rQfXpYQyMduWDRiIll0FjRnKpRze2P7PxsYYd7ykx97UZCgeXjza5Cc8Tqoy9DYNCQfORFug=
X-Received: by 2002:aca:ec4f:: with SMTP id k76mr2405337oih.156.1578480352223; 
 Wed, 08 Jan 2020 02:45:52 -0800 (PST)
MIME-Version: 1.0
References: <1576221593-1086-1-git-send-email-yiboz@codeaurora.org>
 <1576221593-1086-4-git-send-email-yiboz@codeaurora.org>
In-Reply-To: <1576221593-1086-4-git-send-email-yiboz@codeaurora.org>
From: Justin Capella <justincapella@gmail.com>
Date: Wed, 8 Jan 2020 02:46:31 -0800
Message-ID: <CAMrEMU8qoD=-45sePbp+W+F+5mQmviMQaZjzXe_Ph2cNjan+OA@mail.gmail.com>
Subject: Re: [PATCH 3/4] mac80211: fix low throughput in multi-clients
 situation
To: Yibo Zhao <yiboz@codeaurora.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200108_024553_664472_3DE2FF19 
X-CRM114-Status: UNSURE (   4.65  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:242 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (justincapella[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "ath10k" <ath10k-bounces@lists.infradead.org>
Errors-To: ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org

Is there a risk of division by zero?

I'm curious about IEEE80211_AIRTIME_QUANTUM in this multiple sta
scenario, should weight maybe be the depth of the queue or something
like that? Using real time delta I assume is not performant?

_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k

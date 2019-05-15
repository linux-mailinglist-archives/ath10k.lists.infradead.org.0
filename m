Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2A6B61E6F2
	for <lists+ath10k@lfdr.de>; Wed, 15 May 2019 04:53:03 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Xo3N2Xvz8Zyfyg1Q1ECu3bcPDGwMZDbKjOt4f5A8Vzs=; b=ckl4Gu9wvNRB/T
	Ru+NacMuUUIDSA3Sy3hL86deZbiavNgpBhrV8AMMvu+4sbXqtRnIEaPhbHwNg5fqVJ7hkc9AH374U
	8h+6YcHcjUsRNMMEh2QQNDA4An5Ei91t3TFftLVtdU7lpSOFaYkw4ykN+K0cif8N6ETOKcLW4CEQP
	tM3bQOo1YAAxTn9EveGkO7DvMxeFAex/YhM4RhPn60H6LNlyemi91BtslvYL7+UeiHGskHkWhxZSx
	GO8ZDZdIp3VSD5xZVzTlltrLQs+xFJhvw7Mo8UD4acGaPshFZQ+BxxW5vxUAiraE6CaR/fmFzoDTI
	q7vO+Sfwb73nQCwdOkEA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hQk2O-0007JA-M5; Wed, 15 May 2019 02:53:00 +0000
Received: from mail-qt1-x841.google.com ([2607:f8b0:4864:20::841])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hQk2K-0007IN-91
 for ath10k@lists.infradead.org; Wed, 15 May 2019 02:52:57 +0000
Received: by mail-qt1-x841.google.com with SMTP id d13so1619866qth.5
 for <ath10k@lists.infradead.org>; Tue, 14 May 2019 19:52:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=OcleYVt6hTdEREV6sXFakwa/d5DgpphuD5jXkPsQGZ8=;
 b=SVPhhLipkFrwz/Az+YlbUdbk6oFT9qRb8xuCQBmtzqHcFkEnDUt6YKVa6/6VlB0Q7Y
 qeTa+ticTAxUQVbmDL0NGP9qIN8BRE12cxj8+ymnDCR7RrHG9Cqn+JZ30cQo6O4grIwX
 gZXD+k+RHV/cSg3Sy6DZW9bYoXKJjCpqeADVtcixDjYc0LAWKj8h9Ui0MNKz2TYpBgUk
 pwAMxACVupsgqUMc+Fn7ZBTsxO12Q9kxtZskgv6JUgw7Gq9RHR17LwtTTaRKSVr4dRci
 hqLyfl2X2yY9Foimz6n+hVLB0fZDVFboMby/iuDNTMnkIuMbBJoMkLgaIY8MEsojGloX
 So3g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=OcleYVt6hTdEREV6sXFakwa/d5DgpphuD5jXkPsQGZ8=;
 b=k4VhgtIHH1WUy80KjR+4WJqdYw8icNPGnhUxel/lvsG2bCysi+aYhJZD4HdP+/p6Uo
 jwZQepP0dPkwWd6KiLBXTD+bYFNsUu8sBwV06LNfvK7evmh346fnOwFpPzt1q64ogukF
 MZUduyO2thXvyhfcYokKXNiI8/G/GqLqVE0FBl07rchJtZk5jcQk0jZ9P9ST6bnbBCqm
 9JGVzT6iwEZJz6JmtWMXbCmn1yVClWRw6pzywz6H2x3uISIaYeTUl5GJIv3bxlIEF52h
 Jmi0dFevwhj/2FHG/ygtF8CJkEE3i7Kgf6DfSMDe1epOFAMeiYaCIzeEo1FwOyiRyYAU
 cGWQ==
X-Gm-Message-State: APjAAAUSy1G1aetBfxsYVX9x7B1xnaMk5vDsJfZ6xbovksK86kyU7yEn
 jcO4VXzJYHzpaFEtwhY322lpT1oTqaYthak61j6o3RsR3HQ=
X-Google-Smtp-Source: APXvYqwrpLPbZVtglSltceUZH0uVDRPmm7OFqo7KTLK5sqDkLke+lBZBigmBY8akguydnCoInIrIytziyT/cEiWeKEQ=
X-Received: by 2002:ac8:60d4:: with SMTP id i20mr26446993qtm.376.1557888772194; 
 Tue, 14 May 2019 19:52:52 -0700 (PDT)
MIME-Version: 1.0
References: <1556524457-17469-1-git-send-email-wgong@codeaurora.org>
In-Reply-To: <1556524457-17469-1-git-send-email-wgong@codeaurora.org>
From: Claire Chang <tientzu@google.com>
Date: Wed, 15 May 2019 10:52:41 +0800
Message-ID: <CALiNf29_GwSEUJ_vdp+_1DeDyFZj0uuUY9kYh94w4P_eeDT=8g@mail.gmail.com>
Subject: Re: [PATCH v2] ath10k: add support for simulate crash on SDIO chip
To: Wen Gong <wgong@codeaurora.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190514_195256_336328_729CC7D6 
X-CRM114-Status: UNSURE (   5.20  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -15.7 (---------------)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-15.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:841 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 -7.5 USER_IN_DEF_SPF_WL     From: address is in the default SPF
 white-list
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.5 ENV_AND_HDR_SPF_MATCH  Env and Hdr From used in default SPF WL
 Match -0.0 DKIMWL_WL_MED          DKIMwl.org - Medium sender
X-BeenThere: ath10k@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <ath10k.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/ath10k>,
 <mailto:ath10k-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/ath10k/>
List-Post: <mailto:ath10k@lists.infradead.org>
List-Help: <mailto:ath10k-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/ath10k>,
 <mailto:ath10k-request@lists.infradead.org?subject=subscribe>
Cc: "open list:NETWORKING DRIVERS \(WIRELESS\)"
 <linux-wireless@vger.kernel.org>, ath10k@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "ath10k" <ath10k-bounces@lists.infradead.org>
Errors-To: ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org

Tested-by: Claire Chang <tientzu@chromium.org>

If this patch adds support for detecting the real firmware assert,
maybe the title should be "add support for _crash recovery_ on SDIO
chip"

_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k

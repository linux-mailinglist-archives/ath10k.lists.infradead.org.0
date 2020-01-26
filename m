Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 28D1C1498BA
	for <lists+ath10k@lfdr.de>; Sun, 26 Jan 2020 05:19:07 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=K6V131x7UOMjhyMGAgpCzaJXW39ZVCR/N5tUXKS/FvM=; b=hhFpok475Og9LH
	Msp9CrH8u52hnuRu/wVHv0eacum3hpV1wOlMF2rvuHORAevIPoi+074ABQS2WscpkB/CUXjR1e92C
	CSZxWzVKVcUkqowHj0LEvrdt21Etx5UYk7JOzQLB1ttHIVurbM374rTw7/WjxKlMoyaJvrW8S61UI
	MYSdzIR6bQWl6D6mEvMrxwy5aSqU/uZ/LMbFyrzHUQvSUiemihIXj/RBg7KtEGtQNGRoLdDepJNKo
	aqIupzHyh1YpOB18QNITLxP1P42Ox0Una3o7hXKN8IdATT6GGJVU32Z7+Js26MpY1xD97vMiXrPm1
	AJADSIXhuaefo0afCicw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ivZO1-0005sl-4U; Sun, 26 Jan 2020 04:19:01 +0000
Received: from mail-vs1-xe41.google.com ([2607:f8b0:4864:20::e41])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ivZNy-0005ry-0n
 for ath10k@lists.infradead.org; Sun, 26 Jan 2020 04:18:59 +0000
Received: by mail-vs1-xe41.google.com with SMTP id t12so3689887vso.13
 for <ath10k@lists.infradead.org>; Sat, 25 Jan 2020 20:18:53 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=lq3lIVfl7ApjZuiHmE6fiMLLbsA7AiogeQoH4ZIMHa8=;
 b=dPwwBpaPryuxcw1l4lbP4vYM1gqsLMCfn2pk9rnI+IhGSlyh81H5QfsAYJOblF9E0C
 l00HSeX59GqSds+G3pSY9GbpX/kL/UyvrGf2ol8vFsjvAepM3o+Fi0kr6WaPYyKLtr/O
 IHIxS9iSD9kaSUAP7FkaGOwriwtdXN8ePW1JaDmTx0hmutHo+8LWb9/j2Ezm1kE2KzPO
 EvH7GZPucbAAG+AJL3DTpJ7msovpYsyozZB+5J2hDuZ6mit8hgAhNMLeeL6BqoBhzBTl
 gqtS8pPa/o1/4Cr4EuqGR+oXKuCS1M17lMA+SlRkNJr4DHfrikt0U+DYMmD94lvAlJAg
 DUeA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=lq3lIVfl7ApjZuiHmE6fiMLLbsA7AiogeQoH4ZIMHa8=;
 b=AD/uBZKEGI7rQ3IqXFyNuWYyB+Y2zJYNupn4Z49bm2KGll5SlNdhsTLSd4vkUtVx9L
 CyynGQE7H0uN8W7kYqZguCM6iTD5VV+IDBYCdmiiZS5Aa4dGHkXaIwYyOLDZKaRcELqh
 IfpWIT+pWzwVhygIwFS0fwujHNX0oRkIwYk4p1c4TU8NCrnfisPk+jzqZPoI0YpDE+5w
 OX6o6E4i//a2QkIq9HhZ4xwUrgT9DXTQGXMJZTG6ReTMVPMhSY+BadBT5xq6y4RBHb4U
 LsGcmWdlyi0ZOY2OdrDf0ZDz5gpGvRTqDF2ggZ2DJ2R3Yo1BGnObIW4froCLqTc+X8g3
 LvDg==
X-Gm-Message-State: APjAAAWw4VD3uUB1SsVeUhZoASVwZp9DLxcel2n1I2AZQoVTjQqki6gt
 gr+orOEoXhZn4C/taxP8kY8KDb3JuhEAGwFV/yw=
X-Google-Smtp-Source: APXvYqy6dktF7WcxFxQFinwVQCe98+om3ALC3H32+yhVeALtJYLxCghljNOK0DC9d9HR8Xxnlikix+OwptuLKzGE7DA=
X-Received: by 2002:a67:f10c:: with SMTP id n12mr6652494vsk.208.1580012332237; 
 Sat, 25 Jan 2020 20:18:52 -0800 (PST)
MIME-Version: 1.0
References: <20200123232944.39247-1-swboyd@chromium.org>
In-Reply-To: <20200123232944.39247-1-swboyd@chromium.org>
From: Justin Capella <justincapella@gmail.com>
Date: Sat, 25 Jan 2020 20:18:40 -0800
Message-ID: <CAMrEMU-e55q7uvd220+1kuYJ4Xa-4ckz5CvYezCj2ahn_K8t9w@mail.gmail.com>
Subject: Re: [PATCH] ath10k: Use device_get_match_data() to simplify code
To: Stephen Boyd <swboyd@chromium.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200125_201858_064873_435D77D0 
X-CRM114-Status: UNSURE (   3.78  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:e41 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [justincapella[at]gmail.com]
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: netdev@vger.kernel.org, ath10k <ath10k@lists.infradead.org>,
 linux-wireless <linux-wireless@vger.kernel.org>,
 LKML <linux-kernel@vger.kernel.org>, Kalle Valo <kvalo@codeaurora.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "ath10k" <ath10k-bounces@lists.infradead.org>
Errors-To: ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org

Maybe use dev here as well?

>                 dev_err(&pdev->dev, "failed to find matching device tree id\n");

_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k

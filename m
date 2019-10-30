Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BE042E950E
	for <lists+ath10k@lfdr.de>; Wed, 30 Oct 2019 03:44:17 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:Subject:To:From:
	Date:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=qKC2cC2+0rdrgsWQvt4qtAu8Q2xuRTOlKaxioqyBW2U=; b=WYR06PgVz13HQlgCzte3nPVMc
	kx6RCvMyyLjlNO7OIBhtUftusL42FoCOQnEkc3/N7LG59HGbNGDgzLVvg69QRaFUXLhH+fudhxe4I
	okOW+/PyQzMcGZsJYpOybEfMSxpYa97Q9PBW3ATj4OsO3Iycj/+JKikGa2cq85mZPj9XA9TevA8c1
	N2v9l836HWMh/BzpchVcvAly0Qfnu8kfvrjefbSNCgca8u/R8Ws6A8JfRkzjk+yHccSt3vZ5/n96i
	pBRirc6qifOUR24J6WFXSW0vVPRJcOcBGLWcIk/+ypQWpcnDyWXpmfxdYauda4c9o3n79NvTEupao
	jEn8kCAJQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iPdxz-0003cS-I8; Wed, 30 Oct 2019 02:44:11 +0000
Received: from smtp.codeaurora.org ([198.145.29.96])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iPdxw-0003bo-AK
 for ath10k@lists.infradead.org; Wed, 30 Oct 2019 02:44:09 +0000
Received: by smtp.codeaurora.org (Postfix, from userid 1000)
 id CDC4660FB1; Wed, 30 Oct 2019 02:44:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=codeaurora.org;
 s=default; t=1572403445;
 bh=BHAxwq4hd0GNKQQn1DJMboluBUSn58IkgDvXlYOUIes=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=ovjdYRZydX5U8JWJh3Xd+BQxwUYdjmDAhQPFoz49C/anhLU9tLMbNQJ3bs+ZV7DZF
 Baf47mbvdl++Zf7humLlL1ZRAi1mw/q/5JCS07dzdBfTat1mXnZnhbiHnsckEMOnc2
 37kYGXsSyaJvVL3jd6DijrA6bzIe7DunKVeWM8ms=
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
 pdx-caf-mail.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=2.0 tests=ALL_TRUSTED,BAYES_00,
 DKIM_INVALID,DKIM_SIGNED autolearn=no autolearn_force=no version=3.4.0
Received: from mail.codeaurora.org (localhost.localdomain [127.0.0.1])
 by smtp.codeaurora.org (Postfix) with ESMTP id 8DEA960DD3;
 Wed, 30 Oct 2019 02:44:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=codeaurora.org;
 s=default; t=1572403445;
 bh=BHAxwq4hd0GNKQQn1DJMboluBUSn58IkgDvXlYOUIes=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=ovjdYRZydX5U8JWJh3Xd+BQxwUYdjmDAhQPFoz49C/anhLU9tLMbNQJ3bs+ZV7DZF
 Baf47mbvdl++Zf7humLlL1ZRAi1mw/q/5JCS07dzdBfTat1mXnZnhbiHnsckEMOnc2
 37kYGXsSyaJvVL3jd6DijrA6bzIe7DunKVeWM8ms=
MIME-Version: 1.0
Date: Wed, 30 Oct 2019 10:44:05 +0800
From: zhichen@codeaurora.org
To: Tom Psyborg <pozega.tomislav@gmail.com>
Subject: Re: [PATCH RFC] Revert "ath10k: fix DMA related firmware crashes on
 multiple devices"
In-Reply-To: <CAKR_QVLDFBVMDDP4mPYVNdpT9TA3podNeQMpVJQwE7A5eG=0kA@mail.gmail.com>
References: <1571734629-18028-1-git-send-email-zhichen@codeaurora.org>
 <CAKR_QVLDFBVMDDP4mPYVNdpT9TA3podNeQMpVJQwE7A5eG=0kA@mail.gmail.com>
Message-ID: <9bb484b94c43f7c9aa08345ad89d7b2c@codeaurora.org>
X-Sender: zhichen@codeaurora.org
User-Agent: Roundcube Webmail/1.2.5
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191029_194408_380338_C4935797 
X-CRM114-Status: UNSURE (   3.55  )
X-CRM114-Notice: Please train this message.
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
Cc: linux-wireless@vger.kernel.org, ath10k@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "ath10k" <ath10k-bounces@lists.infradead.org>
Errors-To: ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org

On 2019-10-22 18:07, Tom Psyborg wrote:

> What about main and 10x firmware branch?

There is no code changes in firmware. It's a configuration change of 
host memory access.

Zhi

_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k

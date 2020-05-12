Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3578F1CEE24
	for <lists+ath10k@lfdr.de>; Tue, 12 May 2020 09:35:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Date:Message-Id:To:References:
	In-Reply-To:From:Subject:MIME-Version:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=doYSJxjbMCS+89q3xYB7AjWuc2xi2+9byHwbSODjVKs=; b=o5oA99I/wzuCUG
	WHdsaztdQwBmtBPTeU1aVfzbqAMR2LFGsubJsFJy32Yx/68fGfTHptSTveUz2TekWma9PN1hpsXTa
	WBDo2kLJdqh6QB+eAZz7DJpRlm5DJqj2vg8Nip6yeE+6PpZvXZECGKx1TW0lHv2DWUXK3YYOTsYQt
	dZoZq93DjjYDkxI+IdlpO7yNvRDMqVJ3xy7Sq/nNn6uDeoaLSEvgQcJd/pZrkjAwi1PjsWfbEACf+
	0/6v3ZUn7NiSngdMb1xqiSQkXdq64GmAT1B8SmlqiG5NnLwiepdp7tbVJKnsAzeQ1bk3O8XRZvh3M
	thPg5kxJ7btJ2u6wXQNg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jYPRn-0000NG-Mm; Tue, 12 May 2020 07:35:27 +0000
Received: from mail26.static.mailgun.info ([104.130.122.26])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jYPQS-00056h-K5
 for ath10k@lists.infradead.org; Tue, 12 May 2020 07:34:10 +0000
DKIM-Signature: a=rsa-sha256; v=1; c=relaxed/relaxed; d=mg.codeaurora.org;
 q=dns/txt; 
 s=smtp; t=1589268848; h=Date: Message-Id: Cc: To: References:
 In-Reply-To: From: Subject: Content-Transfer-Encoding: MIME-Version:
 Content-Type: Sender; bh=/qP6S8+xrEXaQmMPK80tKynj9uy70EBGXOIBLdpDKLU=;
 b=UvIjr7Rf1A7g8nNBjLNQ2u6um0N2o/rKPh+Mm5TU1NXJpeb5FDdPQ4MfxPGV5EY47VoGQmbA
 /KWxrkCKzkOAi45N4zBTCjxNVNG5ZN/YAkBE/21bjs8wATBxVyRoZ2wmSvXsxr9bg0uqm1UC
 M6k4jqeOephZW6cxkBmI0Pj+tOA=
X-Mailgun-Sending-Ip: 104.130.122.26
X-Mailgun-Sid: WyJiZDQ3OSIsICJhdGgxMGtAbGlzdHMuaW5mcmFkZWFkLm9yZyIsICJiZTllNGEiXQ==
Received: from smtp.codeaurora.org
 (ec2-35-166-182-171.us-west-2.compute.amazonaws.com [35.166.182.171])
 by mxa.mailgun.org with ESMTP id 5eba5157.7f1cb3ecf228-smtp-out-n01;
 Tue, 12 May 2020 07:33:43 -0000 (UTC)
Received: by smtp.codeaurora.org (Postfix, from userid 1001)
 id A422DC44791; Tue, 12 May 2020 07:33:42 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
 aws-us-west-2-caf-mail-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=0.5 required=2.0 tests=ALL_TRUSTED,MISSING_DATE,
 MISSING_MID,SPF_NONE autolearn=no autolearn_force=no version=3.4.0
Received: from potku.adurom.net (88-114-240-156.elisa-laajakaista.fi
 [88.114.240.156])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested) (Authenticated sender: kvalo)
 by smtp.codeaurora.org (Postfix) with ESMTPSA id 6106AC4478F;
 Tue, 12 May 2020 07:33:39 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 smtp.codeaurora.org 6106AC4478F
Authentication-Results: aws-us-west-2-caf-mail-1.web.codeaurora.org;
 dmarc=none (p=none dis=none) header.from=codeaurora.org
Authentication-Results: aws-us-west-2-caf-mail-1.web.codeaurora.org;
 spf=none smtp.mailfrom=kvalo@codeaurora.org
MIME-Version: 1.0
Subject: Re: [PATCH net-next 1/2] ath10k: fix gcc-10 zero-length-bounds
 warnings
From: Kalle Valo <kvalo@codeaurora.org>
In-Reply-To: <20200509120707.188595-1-arnd@arndb.de>
References: <20200509120707.188595-1-arnd@arndb.de>
To: Arnd Bergmann <arnd@arndb.de>
User-Agent: pwcli/0.1.0-git (https://github.com/kvalo/pwcli/) Python/3.5.2
Message-Id: <20200512073342.A422DC44791@smtp.codeaurora.org>
Date: Tue, 12 May 2020 07:33:42 +0000 (UTC)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200512_003408_341921_BDB07D3E 
X-CRM114-Status: UNSURE (   9.92  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [104.130.122.26 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H4      RBL: Very Good reputation (+4)
 [104.130.122.26 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: Arnd Bergmann <arnd@arndb.de>,
 "Gustavo A. R. Silva" <gustavo@embeddedor.com>,
 Erik Stromdahl <erik.stromdahl@gmail.com>, netdev@vger.kernel.org,
 linux-wireless@vger.kernel.org, linux-kernel@vger.kernel.org,
 ath10k@lists.infradead.org, Kalle Valo <kvalo@qca.qualcomm.com>,
 Michal Kazior <michal.kazior@tieto.com>, Wen Gong <wgong@codeaurora.org>,
 "David S. Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "ath10k" <ath10k-bounces@lists.infradead.org>
Errors-To: ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org

Arnd Bergmann <arnd@arndb.de> wrote:

> gcc-10 started warning about out-of-bounds access for zero-length
> arrays:
> 
> In file included from drivers/net/wireless/ath/ath10k/core.h:18,
>                  from drivers/net/wireless/ath/ath10k/htt_rx.c:8:
> drivers/net/wireless/ath/ath10k/htt_rx.c: In function 'ath10k_htt_rx_tx_fetch_ind':
> drivers/net/wireless/ath/ath10k/htt.h:1683:17: warning: array subscript 65535 is outside the bounds of an interior zero-length array 'struct htt_tx_fetch_record[0]' [-Wzero-length-bounds]
>  1683 |  return (void *)&ind->records[le16_to_cpu(ind->num_records)];
>       |                 ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
> drivers/net/wireless/ath/ath10k/htt.h:1676:29: note: while referencing 'records'
>  1676 |  struct htt_tx_fetch_record records[0];
>       |                             ^~~~~~~
> 
> Make records[] a flexible array member to allow this, moving it behind
> the other zero-length member that is not accessed in a way that gcc
> warns about.
> 
> Fixes: 22e6b3bc5d96 ("ath10k: add new htt definitions")
> Signed-off-by: Arnd Bergmann <arnd@arndb.de>
> Signed-off-by: Kalle Valo <kvalo@codeaurora.org>

2 patches applied to ath-next branch of ath.git, thanks.

9f12bebd512c ath10k: fix gcc-10 zero-length-bounds warnings
32221df6765b ath10k: fix ath10k_pci struct layout

-- 
https://patchwork.kernel.org/patch/11538233/

https://wireless.wiki.kernel.org/en/developers/documentation/submittingpatches

_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k

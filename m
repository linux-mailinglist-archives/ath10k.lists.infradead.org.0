Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B27621CD945
	for <lists+ath10k@lfdr.de>; Mon, 11 May 2020 14:03:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:In-Reply-To:
	Date:References:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=najHp0uC2iCYcCfNsMI4vgNF3AXbO745SQYzDmd3LHc=; b=H6kKBpDt9+dEov
	D50CXKvt8Y2uXVffXwpHqccnSE9TVpQDmgXSHVLRaZNuIdTJVFY1PBlKLAJT5+tn+dNwiImg4i0Mh
	7AbDiepwJZ/EjrMoTZNmE9WHOKjINYgbFQ5F1Cm9XvEWJGzgRzR2jKyChnFqCIcc5QqPE6gqZ23zd
	lStstFyS67Wp/Zv9ASLCWuEe+ZbIZvkgvTMr2fcsweLgj8tGma6CvmsmoxU90eq+CZWTgrG/Hk9gJ
	Ovsalx8jEhjot2U9ZAdm915S/X5iuX+8ucEmFtUH6klbQ6xuUbwe2MaqDgM4Nj7qHyuQakEfUb2Fr
	57sx7DLYR2eDJAmPQElQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jY7A2-00037Y-0h; Mon, 11 May 2020 12:03:54 +0000
Received: from mail26.static.mailgun.info ([104.130.122.26])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jY79u-00036x-6y
 for ath10k@lists.infradead.org; Mon, 11 May 2020 12:03:51 +0000
DKIM-Signature: a=rsa-sha256; v=1; c=relaxed/relaxed; d=mg.codeaurora.org;
 q=dns/txt; 
 s=smtp; t=1589198629; h=Content-Type: MIME-Version: Message-ID:
 In-Reply-To: Date: References: Subject: Cc: To: From: Sender;
 bh=HLhZMaOCv1O1jz47tTVuggCyPQt8joEJFRzbgN2Z4oQ=;
 b=gXQ1eaSMATkNbdKHSxbSjxOHyVmUsypRh7K9EdijRh4axd0uQsISjvG2mQnQhk0aVVs347lA
 ejTXzPCkvU0y249O2yejdN97gPbdNFmBVcic1BSeN219xIJD/HO2z5X6S7xR7J6jK9uvCaTp
 OIzo0XiGX7K9CtXIPDYTcm/QsNs=
X-Mailgun-Sending-Ip: 104.130.122.26
X-Mailgun-Sid: WyJiZDQ3OSIsICJhdGgxMGtAbGlzdHMuaW5mcmFkZWFkLm9yZyIsICJiZTllNGEiXQ==
Received: from smtp.codeaurora.org
 (ec2-35-166-182-171.us-west-2.compute.amazonaws.com [35.166.182.171]) by
 smtp-out-n05.prod.us-east-1.postgun.com with SMTP id
 5eb93ee5a441a807e36e830f (version=TLS1.2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256); Mon, 11 May 2020 12:02:45
 GMT
Received: by smtp.codeaurora.org (Postfix, from userid 1001)
 id CF48AC432C2; Mon, 11 May 2020 12:02:44 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
 aws-us-west-2-caf-mail-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.0 required=2.0 tests=ALL_TRUSTED,SPF_NONE
 autolearn=unavailable autolearn_force=no version=3.4.0
Received: from potku.adurom.net (88-114-240-156.elisa-laajakaista.fi
 [88.114.240.156])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested) (Authenticated sender: kvalo)
 by smtp.codeaurora.org (Postfix) with ESMTPSA id 642A5C433F2;
 Mon, 11 May 2020 12:02:41 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 smtp.codeaurora.org 642A5C433F2
Authentication-Results: aws-us-west-2-caf-mail-1.web.codeaurora.org;
 dmarc=none (p=none dis=none) header.from=codeaurora.org
Authentication-Results: aws-us-west-2-caf-mail-1.web.codeaurora.org;
 spf=none smtp.mailfrom=kvalo@codeaurora.org
From: Kalle Valo <kvalo@codeaurora.org>
To: "Gustavo A. R. Silva" <gustavoars@kernel.org>
Subject: Re: [PATCH net-next 1/2] ath10k: fix gcc-10 zero-length-bounds
 warnings
References: <20200509120707.188595-1-arnd@arndb.de>
 <20200509154818.GB27779@embeddedor>
Date: Mon, 11 May 2020 15:02:38 +0300
In-Reply-To: <20200509154818.GB27779@embeddedor> (Gustavo A. R. Silva's
 message of "Sat, 9 May 2020 10:48:18 -0500")
Message-ID: <87zhae4r35.fsf@kamboji.qca.qualcomm.com>
User-Agent: Gnus/5.13 (Gnus v5.13) Emacs/24.5 (gnu/linux)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200511_050349_758439_96BFE762 
X-CRM114-Status: GOOD (  10.61  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [104.130.122.26 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 RCVD_IN_MSPIKE_H4      RBL: Very Good reputation (+4)
 [104.130.122.26 listed in wl.mailspike.net]
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
 ath10k@lists.infradead.org, Michal Kazior <michal.kazior@tieto.com>,
 Wen Gong <wgong@codeaurora.org>, "David S. Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "ath10k" <ath10k-bounces@lists.infradead.org>
Errors-To: ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org

"Gustavo A. R. Silva" <gustavoars@kernel.org> writes:

> Arnd,
>
> On Sat, May 09, 2020 at 02:06:32PM +0200, Arnd Bergmann wrote:
>> gcc-10 started warning about out-of-bounds access for zero-length
>> arrays:
>> 
>> In file included from drivers/net/wireless/ath/ath10k/core.h:18,
>>                  from drivers/net/wireless/ath/ath10k/htt_rx.c:8:
>> drivers/net/wireless/ath/ath10k/htt_rx.c: In function 'ath10k_htt_rx_tx_fetch_ind':
>> drivers/net/wireless/ath/ath10k/htt.h:1683:17: warning: array subscript 65535 is outside the bounds of an interior zero-length array 'struct htt_tx_fetch_record[0]' [-Wzero-length-bounds]
>>  1683 |  return (void *)&ind->records[le16_to_cpu(ind->num_records)];
>>       |                 ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
>> drivers/net/wireless/ath/ath10k/htt.h:1676:29: note: while referencing 'records'
>>  1676 |  struct htt_tx_fetch_record records[0];
>>       |                             ^~~~~~~
>> 
>> Make records[] a flexible array member to allow this, moving it behind
>> the other zero-length member that is not accessed in a way that gcc
>> warns about.
>> 
>> Fixes: 3ba225b506a2 ("treewide: Replace zero-length array with
>> flexible-array member")
>
> This treewide patch no longer contains changes for ath10k. I removed them
> since Monday (05/04/2020). So, this "Fixes" tag does not apply.

Ok, I'll remove it. Also I'll take these to my ath.git tree, not to
net-next.

-- 
https://wireless.wiki.kernel.org/en/developers/documentation/submittingpatches

_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k

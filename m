Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5C621BAEB7
	for <lists+ath10k@lfdr.de>; Mon, 23 Sep 2019 09:53:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:In-Reply-To:
	Date:References:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=gcyQ0VZsZ8o8LrNt3m1wRaIffgvitt1AxEy6ZlKBOq4=; b=NMUep8gahhVefq
	yMFXpTnng45tTY8wTJ1NzXTmw02IrntgzJ+wFitZlTVQbCRai1dmaN5O8m1RVT3aExuQ9IGY+s9xD
	voCkJHASZlSfZvjvEfbRmOnvbf4uaZ46lndF7v429vr1bX+YlzpJ7482q+fwrKPTt+VDTGqWST6Xv
	KOXzbMe7empFGi74RowkbvAHcTllKJeIdHsmq2WpbBo1qIYkxhPTZI9Odo+VXA7l/9do4+G2eKq3a
	E39BScxdODMmVsxbt7BIYGSakmLhEioe6mykSU+vj00OZhltewezf7fQFBAfHnBGuoI7fdbjMNoes
	gUOd6rfZ3KalXEFDODqw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iCJ9k-0006x6-Ou; Mon, 23 Sep 2019 07:53:13 +0000
Received: from smtp.codeaurora.org ([198.145.29.96])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iCJ9d-0006wn-CC
 for ath10k@lists.infradead.org; Mon, 23 Sep 2019 07:53:06 +0000
Received: by smtp.codeaurora.org (Postfix, from userid 1000)
 id EE5D26047C; Mon, 23 Sep 2019 07:53:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=codeaurora.org;
 s=default; t=1569225184;
 bh=I79m02xDyW5CliHu2Z1WS1pNrLeERSGoF4CKm+RP2Ng=;
 h=From:To:Cc:Subject:References:Date:In-Reply-To:From;
 b=GjaQOR5nMLJ64hNs6vi9NsWchbg3TP0MtT9ytE4ZwgSL6yuq94tG8MYCDcmr8pv3r
 jWQPx7aeT+AdD1cZAUQ9eSrGEb4ouq/BO1ISqNNvAfw/7IdgRQ+172u5tqZeMDI2sc
 1lQwIT5/1PKuByIAcGiun3wupAyUgS1phbGlCa7o=
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
 pdx-caf-mail.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=2.0 tests=ALL_TRUSTED,BAYES_00,
 DKIM_INVALID,DKIM_SIGNED,SPF_NONE autolearn=no autolearn_force=no
 version=3.4.0
Received: from x230.qca.qualcomm.com (37-136-106-186.rev.dnainternet.fi
 [37.136.106.186])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 (Authenticated sender: kvalo@smtp.codeaurora.org)
 by smtp.codeaurora.org (Postfix) with ESMTPSA id 820AC60740;
 Mon, 23 Sep 2019 07:53:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=codeaurora.org;
 s=default; t=1569225184;
 bh=I79m02xDyW5CliHu2Z1WS1pNrLeERSGoF4CKm+RP2Ng=;
 h=From:To:Cc:Subject:References:Date:In-Reply-To:From;
 b=GjaQOR5nMLJ64hNs6vi9NsWchbg3TP0MtT9ytE4ZwgSL6yuq94tG8MYCDcmr8pv3r
 jWQPx7aeT+AdD1cZAUQ9eSrGEb4ouq/BO1ISqNNvAfw/7IdgRQ+172u5tqZeMDI2sc
 1lQwIT5/1PKuByIAcGiun3wupAyUgS1phbGlCa7o=
DMARC-Filter: OpenDMARC Filter v1.3.2 smtp.codeaurora.org 820AC60740
Authentication-Results: pdx-caf-mail.web.codeaurora.org;
 dmarc=none (p=none dis=none) header.from=codeaurora.org
Authentication-Results: pdx-caf-mail.web.codeaurora.org;
 spf=none smtp.mailfrom=kvalo@codeaurora.org
From: Kalle Valo <kvalo@codeaurora.org>
To: Abhishek Ambure <aambure@codeaurora.org>
Subject: Re: [PATCH 2/2] ath10k: correct wmi_tlv command params to enable
 pktlog for WCN3990
References: <1558087516-666-3-git-send-email-aambure@codeaurora.org>
 <20190918134502.91240614C3@smtp.codeaurora.org>
Date: Mon, 23 Sep 2019 10:53:00 +0300
In-Reply-To: <20190918134502.91240614C3@smtp.codeaurora.org> (Kalle Valo's
 message of "Wed, 18 Sep 2019 13:45:02 +0000 (UTC)")
Message-ID: <87impja1pf.fsf@codeaurora.org>
User-Agent: Gnus/5.13 (Gnus v5.13) Emacs/24.5 (gnu/linux)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190923_005305_440956_F8904A5B 
X-CRM114-Status: UNSURE (   8.86  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.145.29.96 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: linux-wireless@vger.kernel.org, ath10k@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "ath10k" <ath10k-bounces@lists.infradead.org>
Errors-To: ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org

Kalle Valo <kvalo@codeaurora.org> writes:

> Abhishek Ambure <aambure@codeaurora.org> wrote:
>
>> PKT log enable command expects pdev id in enable params which is missing
>> in current configuration. Fill pdev id in pkt log enable wmi command for
>> correct configuration.
>> 
>> Fixes: ca996ec56608 ("ath10k: implement wmi-tlv backend")
>> Tested HW: WCN3990
>> Tested FW: WLAN.HL.3.1-00963-QCAHLSWMTPL-1
>> 
>> Signed-off-by: Abhishek Ambure <aambure@codeaurora.org>
>> Signed-off-by: Kalle Valo <kvalo@codeaurora.org>
>
> How do I know this doesn't break QCA6174/QCA9377?

Abhishek mentioned me privately that he is checking this.

-- 
Kalle Valo

_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k

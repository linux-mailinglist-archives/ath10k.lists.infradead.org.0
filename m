Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 13B29D5D8A
	for <lists+ath10k@lfdr.de>; Mon, 14 Oct 2019 10:32:42 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:In-Reply-To:
	Date:References:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=OYCcYoPovwW183y+2qNx+q/hAOzTEkMvf8RkFO38/pI=; b=Wc1JDkyOTbbhpK
	xzNOjvIXDl++nbm7yiVukQwgNy2C3QI6aATkj3Ot9sSkWE6Wk3egDzYbZaFbqPWWx5fPqTDt1JUmM
	Q+O5jy4ayyalefFkUexJ2fWIBAswuzOuR4aLDEcDJkHCvFpmgGO8xPHyYd908tv8E6NHoKt8vjSk2
	B/GITE1zEFCHBN2AoyQFDBHIb2NqScoh7AiCNmlYZvAtCcjMzmTSM46CwXlPXE5igzvg1Pp1i+tCm
	3d3Eh1kK1fKMNqcVpENL60mtoY3FQcCHLnPd7QzckQhZPp3a1MSRsLN2FTHZJl12ZhZKJTek3N3Qp
	jkZU23QRnWFQBXh05emQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iJvmR-0007sy-74; Mon, 14 Oct 2019 08:32:39 +0000
Received: from smtp.codeaurora.org ([198.145.29.96])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iJvmN-0007sV-Hd
 for ath10k@lists.infradead.org; Mon, 14 Oct 2019 08:32:37 +0000
Received: by smtp.codeaurora.org (Postfix, from userid 1000)
 id 817B9601E7; Mon, 14 Oct 2019 08:32:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=codeaurora.org;
 s=default; t=1571041954;
 bh=mqqICtAwQO6IrAaUIxFT7Uu3ziQTlKCLs+IOJ1bdsVE=;
 h=From:To:Cc:Subject:References:Date:In-Reply-To:From;
 b=XUUeeIZrI8TbhyfqZoP6OuDHJq13fKXFppsRTkNoM/uBjHEjc4Ov+tIAm21sNsxDg
 jXO/+c6lz8ULlJJ9/MLP91eJx7PwU2m63i8qduzGzF+VGjeFeoaT3BXZglKN83eS7F
 gptdYVI6qaLxMxc9nJtBbTpb20w39GPoACNz9lSo=
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
 pdx-caf-mail.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=2.0 tests=ALL_TRUSTED,BAYES_00,
 DKIM_INVALID,DKIM_SIGNED,SPF_NONE autolearn=no autolearn_force=no
 version=3.4.0
Received: from potku.adurom.net (88-114-240-156.elisa-laajakaista.fi
 [88.114.240.156])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 (Authenticated sender: kvalo@smtp.codeaurora.org)
 by smtp.codeaurora.org (Postfix) with ESMTPSA id 2650360256;
 Mon, 14 Oct 2019 08:32:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=codeaurora.org;
 s=default; t=1571041953;
 bh=mqqICtAwQO6IrAaUIxFT7Uu3ziQTlKCLs+IOJ1bdsVE=;
 h=From:To:Cc:Subject:References:Date:In-Reply-To:From;
 b=CjTLFxp2I4Aq0r4fNj7qxXzPLOND7hKWl/kODSbPW7F6SkZC3gvr+NRkQMAL57ifH
 DQliA/kyrk+g6J3Dtgj7A4nABSPkdNfjtmeEYO4+iWFXB9dxB3H8ZFJzjxQ2hPR4k2
 /sFz3BcTnfgIJYdQ5coy+pWyYIxHHlruAFf+fb2E=
DMARC-Filter: OpenDMARC Filter v1.3.2 smtp.codeaurora.org 2650360256
Authentication-Results: pdx-caf-mail.web.codeaurora.org;
 dmarc=none (p=none dis=none) header.from=codeaurora.org
Authentication-Results: pdx-caf-mail.web.codeaurora.org;
 spf=none smtp.mailfrom=kvalo@codeaurora.org
From: Kalle Valo <kvalo@codeaurora.org>
To: Bjorn Andersson <bjorn.andersson@linaro.org>
Subject: Re: [PATCH] ath10k: Correct error check of dma_map_single()
References: <20191010162653.141303-1-bjorn.andersson@linaro.org>
 <20191011115732.044BF60BE8@smtp.codeaurora.org>
 <20191011171652.GF571@minitux>
Date: Mon, 14 Oct 2019 11:32:28 +0300
In-Reply-To: <20191011171652.GF571@minitux> (Bjorn Andersson's message of
 "Fri, 11 Oct 2019 10:16:52 -0700")
Message-ID: <87a7a3zq03.fsf@kamboji.qca.qualcomm.com>
User-Agent: Gnus/5.13 (Gnus v5.13) Emacs/24.5 (gnu/linux)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191014_013235_628234_AF4B6F9D 
X-CRM114-Status: GOOD (  11.42  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.145.29.96 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: netdev@vger.kernel.org, linux-wireless@vger.kernel.org,
 linux-kernel@vger.kernel.org, ath10k@lists.infradead.org,
 stable@vger.kernel.org, Niklas Cassel <niklas.cassel@linaro.org>,
 "David S. Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "ath10k" <ath10k-bounces@lists.infradead.org>
Errors-To: ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org

Bjorn Andersson <bjorn.andersson@linaro.org> writes:

> On Fri 11 Oct 04:57 PDT 2019, Kalle Valo wrote:
>
>> Bjorn Andersson <bjorn.andersson@linaro.org> wrote:
>> 
>> > The return value of dma_map_single() should be checked for errors using
>> > dma_mapping_error(), rather than testing for NULL. Correct this.
>> > 
>> > Fixes: 1807da49733e ("ath10k: wmi: add management tx by reference
>> > support over wmi")
>> > Cc: stable@vger.kernel.org
>> > Reported-by: Niklas Cassel <niklas.cassel@linaro.org>
>> > Signed-off-by: Bjorn Andersson <bjorn.andersson@linaro.org>
>> 
>> Did this fix any real bug? Or is this just something found during code review?
>> 
>
> CONFIG_DMA_API_DEBUG screamed at us for calling dma_unmap_single()
> without ever having called dma_mapping_error() on the return value.

Ok, I'll add something about to the commit log in v2 so that the
background is also documented.

-- 
https://wireless.wiki.kernel.org/en/developers/documentation/submittingpatches

_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k

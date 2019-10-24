Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7C944E2ADB
	for <lists+ath10k@lfdr.de>; Thu, 24 Oct 2019 09:14:38 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:In-Reply-To:
	Date:References:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=GOcyugQJERn94zfAZB3d9UUIMu/w0VAxTb299EwrgVw=; b=JXt8kGX24BV0Pn
	WbCcIO+VO5cCfuSjTHNF/b9OcJGbp+IumOXbHE99kQVg6RgRqKAmo8+F5aIb8SogZt4GkTELzpbu/
	sRMlYofMsbwbj6+hAHjmNEBASWKEUduutnYMLrUNIu4ZvJu4Bi7IjuP3uIkniogWF3ogrGT0M417z
	KadVCWz7uXDBo/F7f7vvQWCerXda2yINqYNMAyACxecLRFUx+QllEWG1Ev5mq5U8lXo5TkspbRmO4
	NWSs0OQWES8657SYE0Uwpomk6QRYC4aYKb9xyUn8HNUvJQIi1HiBzwKNPpZ3GwrDXbZzBpFMpXKTK
	/d3TR0RC62RRvhvj8m3w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iNXKM-00022g-6a; Thu, 24 Oct 2019 07:14:34 +0000
Received: from smtp.codeaurora.org ([198.145.29.96])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iNXKI-00021p-IO
 for ath10k@lists.infradead.org; Thu, 24 Oct 2019 07:14:32 +0000
Received: by smtp.codeaurora.org (Postfix, from userid 1000)
 id A3AD160BEB; Thu, 24 Oct 2019 07:14:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=codeaurora.org;
 s=default; t=1571901269;
 bh=HBgNraiFOUCK7ajELVpoAmoJgwcwJoB3sLpyKprO/zQ=;
 h=From:To:Cc:Subject:References:Date:In-Reply-To:From;
 b=ER3nX0nwxtosPqZBXU9N0ItU7FIDxbQNPMS5u+zxoM/nWeEnmhX3GoDEpCDc9FkPq
 FW3ZJHnGhkszCIeoMVCG1ybXYkdSIlf26hrc9o+t5M9KjIoDe82bzISyIHJG5Al444
 CyYspwai9ZHL3fzZf9eHiQsyHVdT92kdtcd3pl+0=
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
 pdx-caf-mail.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=2.0 tests=ALL_TRUSTED,BAYES_00,
 DKIM_INVALID,DKIM_SIGNED,SPF_NONE autolearn=no autolearn_force=no
 version=3.4.0
Received: from x230.qca.qualcomm.com (unknown [88.114.240.156])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 (Authenticated sender: kvalo@smtp.codeaurora.org)
 by smtp.codeaurora.org (Postfix) with ESMTPSA id 5F59D602DF;
 Thu, 24 Oct 2019 07:14:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=codeaurora.org;
 s=default; t=1571901269;
 bh=HBgNraiFOUCK7ajELVpoAmoJgwcwJoB3sLpyKprO/zQ=;
 h=From:To:Cc:Subject:References:Date:In-Reply-To:From;
 b=ER3nX0nwxtosPqZBXU9N0ItU7FIDxbQNPMS5u+zxoM/nWeEnmhX3GoDEpCDc9FkPq
 FW3ZJHnGhkszCIeoMVCG1ybXYkdSIlf26hrc9o+t5M9KjIoDe82bzISyIHJG5Al444
 CyYspwai9ZHL3fzZf9eHiQsyHVdT92kdtcd3pl+0=
DMARC-Filter: OpenDMARC Filter v1.3.2 smtp.codeaurora.org 5F59D602DF
Authentication-Results: pdx-caf-mail.web.codeaurora.org;
 dmarc=none (p=none dis=none) header.from=codeaurora.org
Authentication-Results: pdx-caf-mail.web.codeaurora.org;
 spf=none smtp.mailfrom=kvalo@codeaurora.org
From: Kalle Valo <kvalo@codeaurora.org>
To: Govind Singh <govinds@codeaurora.org>
Subject: Re: [PATCH 1/2] dt: bindings: add dt entry flag to skip SCM call for
 msa region
References: <20191023094014.28683-1-govinds@codeaurora.org>
 <20191023094014.28683-2-govinds@codeaurora.org>
Date: Thu, 24 Oct 2019 10:14:26 +0300
In-Reply-To: <20191023094014.28683-2-govinds@codeaurora.org> (Govind Singh's
 message of "Wed, 23 Oct 2019 15:10:13 +0530")
Message-ID: <87a79qk431.fsf@codeaurora.org>
User-Agent: Gnus/5.13 (Gnus v5.13) Emacs/24.5 (gnu/linux)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191024_001430_634746_34CC7196 
X-CRM114-Status: UNSURE (   7.90  )
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
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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

Govind Singh <govinds@codeaurora.org> writes:

> Add boolean context flag to disable SCM call for statically
> mapped msa region.
>
> Signed-off-by: Govind Singh <govinds@codeaurora.org>

Oddly this didn't apply, but 3-way merge did work. Please double check
the result in the pending branch:

https://git.kernel.org/pub/scm/linux/kernel/git/kvalo/ath.git/commit/?h=master-pending&id=6f308524cf602ed9a0dbb0b0b50ba625b9091879

-- 
Kalle Valo

_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k

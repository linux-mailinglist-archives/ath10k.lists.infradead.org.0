Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F21EF5A4EB
	for <lists+ath10k@lfdr.de>; Fri, 28 Jun 2019 21:11:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Date:Message-Id:To:References:
	In-Reply-To:From:Subject:MIME-Version:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=FSUARHOgpEt1TSg1x/2MnRviAJpHDjDfYmW4D8u9/eE=; b=ECoGT+tQfHr53d
	Chbk7eH5s0321QQ5+Pmyp38YzKEnyHhTyhA6ikFqLkp6OGND7twodXQSi+gm/pBdeTJ4pfj76OzR6
	PiwMfZnPMXBbbbh+t8EWV8cXDwN5mMhdovmKhng9pfXprGLiVmDuuI1OOAfTUEx+OLeBiPMrN9/Bv
	acnYMpQkgodsany2pJzL4VKyFFPDt2vMyyDP2SLUldmx8jvYxODwjneHYSjSAnPwMzO/hHZznqk0m
	Fn9eVYI46dQgcCxwVHdOl+cGNCwjTUlu5NYHtEpY3iCeC+XScPrbS7BesOTMd/FigWASJde1wluDr
	edoq805Z5boLiEpmIz6A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hgwHj-0002jj-2R; Fri, 28 Jun 2019 19:11:47 +0000
Received: from smtp.codeaurora.org ([198.145.29.96])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hgwHc-0002iT-Qn
 for ath10k@lists.infradead.org; Fri, 28 Jun 2019 19:11:43 +0000
Received: by smtp.codeaurora.org (Postfix, from userid 1000)
 id 242FE6070D; Fri, 28 Jun 2019 19:11:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=codeaurora.org;
 s=default; t=1561749099;
 bh=ddt8Rhhf568xP/qGFkl2nTNQ1Jq4FVEQ6cpM76H63AQ=;
 h=Subject:From:In-Reply-To:References:To:Cc:Date:From;
 b=Z0m7q+OirlXfY9yZB9p3g0IuHFY/sK7tVHHkCxoDGE6M1i6E3E/R3OAzMTNDeFfOP
 taNJ6FFZsJcRtyUUJb+IFQWyemiQAKWkT1VaTn2SLhyvwt3rjhscjLlHAM0sONt4CB
 yJ/HgTA7MqHOywjq9+ivZ+RcovIJPVu+OeiJil5s=
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
 pdx-caf-mail.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-0.8 required=2.0 tests=ALL_TRUSTED,BAYES_00,
 DKIM_INVALID,DKIM_SIGNED,MISSING_DATE,MISSING_MID,SPF_NONE autolearn=no
 autolearn_force=no version=3.4.0
Received: from potku.adurom.net (88-114-240-156.elisa-laajakaista.fi
 [88.114.240.156])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 (Authenticated sender: kvalo@smtp.codeaurora.org)
 by smtp.codeaurora.org (Postfix) with ESMTPSA id C21F0604BE;
 Fri, 28 Jun 2019 19:11:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=codeaurora.org;
 s=default; t=1561749098;
 bh=ddt8Rhhf568xP/qGFkl2nTNQ1Jq4FVEQ6cpM76H63AQ=;
 h=Subject:From:In-Reply-To:References:To:Cc:From;
 b=BmlWLChMo7PPNPArfzwZ/CXAYBvIx/8hezYAXqFDTb+WNiM9XRHDjfdbwQJ/rliyb
 Xs+gCHdNdJEfndx/qpDDS6q3N7UHjwm5589rpHArsYsg3jhcZco4kVjEeEAj0UfAAd
 n72mCuZOSWoJBRGn0JCFUF8LXgtmiBvl95eQjvW8=
DMARC-Filter: OpenDMARC Filter v1.3.2 smtp.codeaurora.org C21F0604BE
Authentication-Results: pdx-caf-mail.web.codeaurora.org;
 dmarc=none (p=none dis=none) header.from=codeaurora.org
Authentication-Results: pdx-caf-mail.web.codeaurora.org;
 spf=none smtp.mailfrom=kvalo@codeaurora.org
MIME-Version: 1.0
Subject: Re: [PATCH] ath10k: Fix memory leak in qmi
From: Kalle Valo <kvalo@codeaurora.org>
In-Reply-To: <1561472748-28467-1-git-send-email-dundi@codeaurora.org>
References: <1561472748-28467-1-git-send-email-dundi@codeaurora.org>
To: Dundi Raviteja <dundi@codeaurora.org>
User-Agent: pwcli/0.0.0-git (https://github.com/kvalo/pwcli/) Python/2.7.12
Message-Id: <20190628191139.242FE6070D@smtp.codeaurora.org>
Date: Fri, 28 Jun 2019 19:11:39 +0000 (UTC)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190628_121140_890201_49E7ED20 
X-CRM114-Status: UNSURE (   7.57  )
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
Cc: linux-wireless@vger.kernel.org, ath10k@lists.infradead.org,
 Dundi Raviteja <dundi@codeaurora.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "ath10k" <ath10k-bounces@lists.infradead.org>
Errors-To: ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org

Dundi Raviteja <dundi@codeaurora.org> wrote:

> Currently the memory allocated for qmi handle is
> not being freed during de-init which leads to memory leak.
> 
> Free the allocated qmi memory in qmi deinit
> to avoid memory leak.
> 
> Tested HW: WCN3990
> Tested FW: WLAN.HL.3.1-01040-QCAHLSWMTPLZ-1
> 
> Fixes: fda6fee0001e ("ath10k: add QMI message handshake for wcn3990 client")
> Signed-off-by: Dundi Raviteja <dundi@codeaurora.org>
> Signed-off-by: Kalle Valo <kvalo@codeaurora.org>

Patch applied to ath-next branch of ath.git, thanks.

c709df58832c ath10k: Fix memory leak in qmi

-- 
https://patchwork.kernel.org/patch/11015647/

https://wireless.wiki.kernel.org/en/developers/documentation/submittingpatches


_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k

Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B9DA358ACB
	for <lists+ath10k@lfdr.de>; Thu, 27 Jun 2019 21:12:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Mime-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ZIY5wtYGp6zw9jBzmhsFCdS7qCPtdTk1QBN1ZrYEsZA=; b=CLii74131wtj4v
	QrWps6QYqXOFAlxXe3GLr30o/C2Tfrt9ydCiSz2CR/Y704wbaErfuURd5rw+XEAsXW26VAhIRaZPv
	zyFO02fkjbSg4APcq58k5N24nX0rDYVJ/OFtJ5kQkImwoMfueUyXzlsZ1GVvNMa2MMyLH5R3d27pI
	2mKXusZJwgRkOEB51hRyY6RYG26Vyeq2BQiciqepw3dC+VoPyNEnoF4ZN96MskWmDDNiUzcKUAbtK
	/OROIXknQwYAZ6dsfot4dnYYal/2HYP1nnp6bXlqiBEQ83SV/wbpkcjcOP+rki968+qEHmYsaPSLp
	j7tC93noiSwAOFR0sfXw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hgZp1-00079z-P0; Thu, 27 Jun 2019 19:12:39 +0000
Received: from s3.sipsolutions.net ([2a01:4f8:191:4433::2]
 helo=sipsolutions.net)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hgZox-000795-9x
 for ath10k@lists.infradead.org; Thu, 27 Jun 2019 19:12:37 +0000
Received: by sipsolutions.net with esmtpsa
 (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <johannes@sipsolutions.net>)
 id 1hgZos-0003fE-FH; Thu, 27 Jun 2019 21:12:30 +0200
Message-ID: <58e8952b87c8aa533c15fe5650f3f71288377f36.camel@sipsolutions.net>
Subject: Re: [PATCH 2/2] ath10k: pci: remove unnecessary casts
From: Johannes Berg <johannes@sipsolutions.net>
To: Kalle Valo <kvalo@codeaurora.org>, ath10k@lists.infradead.org
Date: Thu, 27 Jun 2019 21:12:28 +0200
In-Reply-To: <1561661250-30528-2-git-send-email-kvalo@codeaurora.org>
 (sfid-20190627_204740_465294_470A1055)
References: <1561661250-30528-1-git-send-email-kvalo@codeaurora.org>
 <1561661250-30528-2-git-send-email-kvalo@codeaurora.org>
 (sfid-20190627_204740_465294_470A1055)
X-Mailer: Evolution 3.28.5 (3.28.5-3.fc28) 
Mime-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190627_121235_341862_7E3B084B 
X-CRM114-Status: UNSURE (   4.66  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: linux-wireless@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "ath10k" <ath10k-bounces@lists.infradead.org>
Errors-To: ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org

On Thu, 2019-06-27 at 21:47 +0300, Kalle Valo wrote:
> Fixes checkpatch warnings:
> 
> drivers/net/wireless/ath/ath10k/pci.c:926: unnecessary cast may hide bugs, see http://c-faq.com/malloc/ma
> drivers/net/wireless/ath/ath10k/pci.c:1072: unnecessary cast may hide bugs, see http://c-faq.com/malloc/m

I think you cut off the link there, did you mean
http://c-faq.com/malloc/mallocnocast.html perhaps?

johannes


_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k

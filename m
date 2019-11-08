Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6FB35F4345
	for <lists+ath10k@lfdr.de>; Fri,  8 Nov 2019 10:29:44 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:In-Reply-To:
	Date:References:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=O9ALRsN0EIdyz59o+Py/qY/3yBilEqzYtiJYvRRgWbg=; b=B7Gbde+tIj04SC
	9z2rX5VPbhdskNabbBaznShBla9qkAtk4KmuT06pdZC5puuuGqrOzaAgl8c2rBCNQ/cpkqMjMssqm
	1hYKh/RBK6YNkoNaaKc6zC+L8oEVZF7r3beV9h5uwoyAxK5HGVHHQwrlueaia+tPNWfBr4l5peepF
	waJNTrR852CGKk5aiKiu+he65iaCssCnBY4jjQigS50D0z23swA5a/T1UKu+PSBRQ+NEytm8cFCSd
	gIf7ffeBejJUUAvzYsXnNa3PKsIGy3p6gcG1KnccTfvKEHhsUgDHonAqHsugGaIZPaP48NoEtVjvj
	ywYHxKW0V7Qo7TmvC3iA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iT0aM-00081N-JE; Fri, 08 Nov 2019 09:29:42 +0000
Received: from smtp.codeaurora.org ([198.145.29.96])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iT0aJ-000811-GF
 for ath10k@lists.infradead.org; Fri, 08 Nov 2019 09:29:40 +0000
Received: by smtp.codeaurora.org (Postfix, from userid 1000)
 id B9D6260FF2; Fri,  8 Nov 2019 09:29:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=codeaurora.org;
 s=default; t=1573205379;
 bh=k+iIfNwlhzCt1VhzT2VerBgeFgQt/+b4y91tPYbvheI=;
 h=From:To:Cc:Subject:References:Date:In-Reply-To:From;
 b=o1FA2BSsQC/y1dSWUaYHZM23qNg7rx557vk4ypVoNPWal8OWK+QsiLlysNbZaI45w
 aaZ+CT01MjGokwHVCeamjTFqDuge/TxrH7KOdO+q578yj+CAU4ARXd4WxaxPXW2nPv
 uv+UFymR0WW+PbnwOxSCazRyNTi58mICSsi6lfZc=
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
 by smtp.codeaurora.org (Postfix) with ESMTPSA id BC2B960A7E;
 Fri,  8 Nov 2019 09:29:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=codeaurora.org;
 s=default; t=1573205376;
 bh=k+iIfNwlhzCt1VhzT2VerBgeFgQt/+b4y91tPYbvheI=;
 h=From:To:Cc:Subject:References:Date:In-Reply-To:From;
 b=YTjNPOxMfWAsYwvBWYf2aA/nvCXLi0OPOJV9yIoZyEiHSim1P6VrqDxksqhtwoX0P
 rh75HP3V5AeIuKarXFPOJEMQ63rPEeaDs6Sml/snIPnP3kZs5riMKvVOLlP8Rwut6E
 +Aub7kcgoExJBUWvfqPCnSEaPiYVOFu76YQAzKNk=
DMARC-Filter: OpenDMARC Filter v1.3.2 smtp.codeaurora.org BC2B960A7E
Authentication-Results: pdx-caf-mail.web.codeaurora.org;
 dmarc=none (p=none dis=none) header.from=codeaurora.org
Authentication-Results: pdx-caf-mail.web.codeaurora.org;
 spf=none smtp.mailfrom=kvalo@codeaurora.org
From: Kalle Valo <kvalo@codeaurora.org>
To: Wen Gong <wgong@codeaurora.org>
Subject: Re: [PATCH] ath10k: add large size for BMI download data for SDIO
References: <20191107100809.17982-1-wgong@codeaurora.org>
Date: Fri, 08 Nov 2019 11:29:31 +0200
In-Reply-To: <20191107100809.17982-1-wgong@codeaurora.org> (Wen Gong's message
 of "Thu, 7 Nov 2019 18:08:09 +0800")
Message-ID: <877e4awwas.fsf@kamboji.qca.qualcomm.com>
User-Agent: Gnus/5.13 (Gnus v5.13) Emacs/24.5 (gnu/linux)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191108_012939_560712_0AE56CF9 
X-CRM114-Status: UNSURE (   9.75  )
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

Wen Gong <wgong@codeaurora.org> writes:

> Download firmware time cost of SDIO is too long, it is about 480ms,
> add large size 2048 bytes for BMI download for SDIO chip, its time
> cost will reduced to 240ms.
>
> This will optimize the download firmware time cost.
>
> Tested with QCA6174 SDIO with firmware
> WLAN.RMH.4.4.1-00017-QCARMSWP-1.
>
> Signed-off-by: Wen Gong <wgong@codeaurora.org>

[...]

> +int ath10k_bmi_large_size_lz_data(struct ath10k *ar, const void *buffer, u32 length)

You are calling this only from bmi.c so in the pending branch I made
this static and renamed to ath10k_bmi_lz_data_large().

-- 
https://wireless.wiki.kernel.org/en/developers/documentation/submittingpatches

_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k

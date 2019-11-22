Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 009A0106903
	for <lists+ath10k@lfdr.de>; Fri, 22 Nov 2019 10:45:43 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:In-Reply-To:
	Date:References:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=G3Y18v90k5e/E9HJKmJkuKPlN66TCauwm/D3ci1fF8M=; b=swjLfz8B9HTapu
	iSb+rnkh0x/7PfGSEWElV5N7VLdU8SZbV9JCnFb9410jFVUklscW98/YTME9RfXF32i7QegS0KbvI
	/I2GzKrusfy9TD8EIaqs/cIjXFuXfdR97wjgyLhj8VOS/9Dp9Wb/C4zsuyD6elIAPFD0pEWy+Vba+
	IOlKmOKwZaDfbhJDKSEzpQwkU/g/e6Ddu7lxOCpZ5DSHqfqeJvCLuQ9gfWk8xwbdLIGKshRgzH430
	xZFDYubSbvqMtTjlj6PEhKqkPDev15Wxv/KSTH/24nRo4+Q5Bb4V4LRwAk2EeTpUC1LgOXAanzkQz
	zEcB90GraCOVqEeTB2QQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iY5VR-0000px-0P; Fri, 22 Nov 2019 09:45:37 +0000
Received: from a27-55.smtp-out.us-west-2.amazonses.com ([54.240.27.55])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iY5VJ-0000mn-Rk
 for ath10k@lists.infradead.org; Fri, 22 Nov 2019 09:45:32 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
 s=zsmsymrwgfyinv5wlfyidntwsjeeldzt; d=codeaurora.org; t=1574415927;
 h=From:To:Cc:Subject:References:Date:In-Reply-To:Message-ID:MIME-Version:Content-Type;
 bh=am+FFL6VsTvZN6iBIEE+fypD9VaYtOR93JqaXHR6Suo=;
 b=omk8toF88LkUEnBlEgiW3W70MkZFW4JmmCVMViGiG3H8AMAZWRdYUlQ+4pdOid/u
 zEyFxOIWl+vKQQUdPV7LfJPdbJjlQeMjiPtv646/Ihp6lLk+ztswbFFx5QfOZe0tPn2
 ReiErpVGtSTqeO3Kuy4udAaeJNfq+0GZ9Hbma92Q=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
 s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1574415927;
 h=From:To:Cc:Subject:References:Date:In-Reply-To:Message-ID:MIME-Version:Content-Type:Feedback-ID;
 bh=am+FFL6VsTvZN6iBIEE+fypD9VaYtOR93JqaXHR6Suo=;
 b=QO5j5PAxwJmCFImEss223OJW87U+z6gpKndu9auPthBe/+EIn9azgA6cwtaO3o/I
 tqKLiEwWTsuGsM6VoM+PQk/CMZr8k8CnCUA0IHt2LoFwAGxveZqWzLI0bhHfTCZTmF0
 RbYm23qdaSmcmtIayMQ/JBog9D7O10LQMV5F0CTc=
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
 aws-us-west-2-caf-mail-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.0 required=2.0 tests=ALL_TRUSTED,SPF_NONE
 autolearn=ham autolearn_force=no version=3.4.0
DMARC-Filter: OpenDMARC Filter v1.3.2 smtp.codeaurora.org 5A660C447A9
Authentication-Results: aws-us-west-2-caf-mail-1.web.codeaurora.org;
 dmarc=none (p=none dis=none) header.from=codeaurora.org
Authentication-Results: aws-us-west-2-caf-mail-1.web.codeaurora.org;
 spf=none smtp.mailfrom=kvalo@codeaurora.org
From: Kalle Valo <kvalo@codeaurora.org>
To: Zhi Chen <zhichen@codeaurora.org>
Subject: Re: [PATCH RFC,
 v2] Revert "ath10k: fix DMA related firmware crashes on multiple
 devices"
References: <1573808573-12159-1-git-send-email-zhichen@codeaurora.org>
Date: Fri, 22 Nov 2019 09:45:27 +0000
In-Reply-To: <1573808573-12159-1-git-send-email-zhichen@codeaurora.org> (Zhi
 Chen's message of "Fri, 15 Nov 2019 17:02:53 +0800")
Message-ID: <0101016e9280880c-721d1923-ec22-463b-8945-d219f88c915b-000000@us-west-2.amazonses.com>
User-Agent: Gnus/5.13 (Gnus v5.13) Emacs/24.5 (gnu/linux)
MIME-Version: 1.0
X-SES-Outgoing: 2019.11.22-54.240.27.55
Feedback-ID: 1.us-west-2.CZuq2qbDmUIuT3qdvXlRHZZCpfZqZ4GtG9v3VKgRyF0=:AmazonSES
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191122_014530_464480_A7634DEA 
X-CRM114-Status: UNSURE (   7.99  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [54.240.27.55 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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

Zhi Chen <zhichen@codeaurora.org> writes:

> This reverts commit 76d164f582150fd0259ec0fcbc485470bcd8033e.
> PCIe hung issue was observed on multiple platforms. The issue was reproduced
> when DUT was configured as AP and associated with 50+ STAs.
>
> With PCIe protocol analyzer, we can see DMA Read crossing 4KB boundary when
> issue happened. It broke PCIe spec and caused PCIe stuck.
>
> Tested:  IPQ8064 + QCA9984 with firmware 10.4-3.10-00047
>          QCS404 + QCA9984 with firmware 10.4-3.9.0.2--00044
>          Synaptics AS370 + QCA9888  with firmware 10.4-3.9.0.2--00040
>
> Signed-off-by: Zhi Chen <zhichen@codeaurora.org>
> ---

All comments under --- line is not added to the git repository.

> v2: revert 10.4 only because old chips have different AXI RD/WR CFG

So you should also mention this in the commit log so it gets properly
archived.

And in the next version please remove RFC, as it seems we are reaching a
consensus that is the right approach. Or are there any comments?

-- 
https://wireless.wiki.kernel.org/en/developers/documentation/submittingpatches

_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k

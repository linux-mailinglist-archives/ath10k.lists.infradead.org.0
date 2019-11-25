Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9605F108D43
	for <lists+ath10k@lfdr.de>; Mon, 25 Nov 2019 12:51:17 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Date:Message-ID:To:References:
	In-Reply-To:From:Subject:MIME-Version:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Gn3469OvntByuVZZUpApVBW7Njb7DUSHh46lzzcq09k=; b=qzpkThddInPjas
	UqHFF0mLFoaFaHtQYjccrBnovWHuevWxKblSkZhZHAHYRmH2OvWwPNn8ugDfi1J6SvEuWZanCLXIm
	4vcgKZp49XLIQWP5395j5QVmSSh5tBc3VxKlSQH2sM18KjMcdp4KudhrRXMFL0POAvAzY03z/s8F4
	doPdr+Vb+ZdPNm/Gvo0inOE0msLD6Hn5EWWlMo8PK+uPqQkC6238ixxJMeyiHDNcMjlS8hiC/lyQ1
	5DIHrCC51OJbMQfv/iZ5I1Jkg92/N0ZNfLWYXEylh+l/Z0UL5pvCx9jSuDV/tZrUIZpu3mHvOo9AD
	UsNrYHjAPLzGhmZ2MwrQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iZCtf-0004Oo-TL; Mon, 25 Nov 2019 11:51:15 +0000
Received: from a27-18.smtp-out.us-west-2.amazonses.com ([54.240.27.18])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iZCtb-0004OT-K4
 for ath10k@lists.infradead.org; Mon, 25 Nov 2019 11:51:12 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
 s=zsmsymrwgfyinv5wlfyidntwsjeeldzt; d=codeaurora.org; t=1574682669;
 h=Content-Type:MIME-Version:Content-Transfer-Encoding:Subject:From:In-Reply-To:References:To:Cc:Message-Id:Date;
 bh=XpjGUJp83UVgBT72TD+mw58jNf4gK89doIdvMQ7q054=;
 b=c9L49gzMQ0JZHUga7hzWKEfcbZJ+10HpLOYxEpHOzg7DdoJwlH4d+XFbu3vDs9KU
 8nUT4cZ5Dp+dRdePtxcnZ7h5nOrb8Td0q1o1cs106e0jAyZ2b+AtK1j3GOYt+e1FJnt
 gy1iaenvPA/ltAcVQ6eWQ22BHaFCRJDHyfEvZKGE=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
 s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1574682669;
 h=Content-Type:MIME-Version:Content-Transfer-Encoding:Subject:From:In-Reply-To:References:To:Cc:Message-Id:Date:Feedback-ID;
 bh=XpjGUJp83UVgBT72TD+mw58jNf4gK89doIdvMQ7q054=;
 b=WYcEHguyhZxEXqdPcv0afF9WyuRfA7W/giPDt2hOwrOxX+uiDE8wpmAU3xB4IxJa
 RZeE++qz8Bz5nq40PsBWECl1DPMyLD3XhVnY5Q1KNp5GkKrv0BDTgWCDWiXw2K1LAw+
 +kzE6w7nYIssxu6uA0BZYBzHzjeEFH878lyn9ilA=
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
 aws-us-west-2-caf-mail-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=0.5 required=2.0 tests=ALL_TRUSTED,MISSING_DATE,
 MISSING_MID,SPF_NONE,URIBL_BLOCKED autolearn=no autolearn_force=no
 version=3.4.0
DMARC-Filter: OpenDMARC Filter v1.3.2 smtp.codeaurora.org E4E70C43383
Authentication-Results: aws-us-west-2-caf-mail-1.web.codeaurora.org;
 dmarc=none (p=none dis=none) header.from=codeaurora.org
Authentication-Results: aws-us-west-2-caf-mail-1.web.codeaurora.org;
 spf=none smtp.mailfrom=kvalo@codeaurora.org
MIME-Version: 1.0
Subject: Re: [PATCH 1/2] ath10k: cosmetic cleanup to sdio files
From: Kalle Valo <kvalo@codeaurora.org>
In-Reply-To: <1571910849-11489-1-git-send-email-kvalo@codeaurora.org>
References: <1571910849-11489-1-git-send-email-kvalo@codeaurora.org>
To: Kalle Valo <kvalo@codeaurora.org>
User-Agent: pwcli/0.0.0-git (https://github.com/kvalo/pwcli/) Python/2.7.12
Message-ID: <0101016ea266b076-ab83853f-010c-4aca-bee0-f37af2e05a8c-000000@us-west-2.amazonses.com>
Date: Mon, 25 Nov 2019 11:51:09 +0000
X-SES-Outgoing: 2019.11.25-54.240.27.18
Feedback-ID: 1.us-west-2.CZuq2qbDmUIuT3qdvXlRHZZCpfZqZ4GtG9v3VKgRyF0=:AmazonSES
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191125_035111_682287_9D056D1A 
X-CRM114-Status: UNSURE (   2.51  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 2.5 (++)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [54.240.27.18 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 2.5 TO_EQ_FM_DIRECT_MX     To == From and direct-to-MX
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

Kalle Valo <kvalo@codeaurora.org> wrote:

> Do some cosmetic cleanup while reviewing the files. No functional changes.
> 
> Signed-off-by: Kalle Valo <kvalo@codeaurora.org>

2 patches applied to ath-next branch of ath.git, thanks.

efd2f4c5016b ath10k: sdio: cosmetic cleanup
2246c2156590 ath10k: sdio: remove struct ath10k_sdio_rx_data::status

-- 
https://patchwork.kernel.org/patch/11208761/

https://wireless.wiki.kernel.org/en/developers/documentation/submittingpatches


_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k

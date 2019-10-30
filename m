Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1C857E9654
	for <lists+ath10k@lfdr.de>; Wed, 30 Oct 2019 07:17:00 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:Subject:To:From:
	Date:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=NKjkN1r4WBT+U4qJyBDN6rI59GuTkPYqXQ5PiW42g2k=; b=LErmQef3M0cIq5zVEeQZqKDRv
	IMFhtOFQaYFvqM++b3HyZMVj9U2OTAuWpU//KG0Yx0hAkDgQ67ZYY+MDqvGWrYPnVWl47ZMzsNqge
	DjBzNgySx6XbkPTe3w5n95NmWU7JkxH7b1cmL4THJK3S/PXGBUUqH66eLAXv0AttsmYHEqjp9+3h1
	lBq0s35m2kLkNTnb7jytm+m+IeoNXWMjQzwMiIVKWq8E05u2krIzIug5vvaMjHa3uvJEZ8rYY5N71
	z90WYLVeeTZ/s8gFSkGLzyX6Y7ltZ+KTW+A7fDT/yhM59MXi/hoZnWVhty7/TMm8AXN+gsHMR1ju9
	BDVGXhIGQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iPhHt-0005Yj-6Z; Wed, 30 Oct 2019 06:16:57 +0000
Received: from smtp.codeaurora.org ([198.145.29.96])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iPhHp-0005YD-L0
 for ath10k@lists.infradead.org; Wed, 30 Oct 2019 06:16:54 +0000
Received: by smtp.codeaurora.org (Postfix, from userid 1000)
 id 1FE0E60F80; Wed, 30 Oct 2019 06:16:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=codeaurora.org;
 s=default; t=1572416212;
 bh=IgyGKLGNT89B33oQraHU/asdxUwmWTKhlEwPQxbrLt8=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=Hvdja04skYijmJp56LVhgouIOmE8kzTPQ/KiK8qW1pFKiAuAcN2vW7pRab7xZSWw+
 lMWn61IHxy7HiOEaePG8uSq8iOpLhzIZuyn9bqD0fKT2ioruvrVFDjeBVm+IL2/khS
 OCetsuWqhTxZ6iqvzdfuuznoUq0c0tCbCMuOfXbw=
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
 pdx-caf-mail.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=2.0 tests=ALL_TRUSTED,BAYES_00,
 DKIM_INVALID,DKIM_SIGNED autolearn=no autolearn_force=no version=3.4.0
Received: from mail.codeaurora.org (localhost.localdomain [127.0.0.1])
 by smtp.codeaurora.org (Postfix) with ESMTP id A6A9260A97;
 Wed, 30 Oct 2019 06:16:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=codeaurora.org;
 s=default; t=1572416211;
 bh=IgyGKLGNT89B33oQraHU/asdxUwmWTKhlEwPQxbrLt8=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=QnPtQgN2gnebrVx0mLoDiLQmIQQU0N5NCKI03K/ZeacRgzFq0JiFJ5OdWaVgJLbvJ
 dB66tLxsOmtczO9i1LSX0B3zyAB+JEB+I4mOY2L6m1tg8/wUZrBaTMvwItbfcWZ8QR
 UOO/SmxvrlmNAKGMC0o4stCtXMOE1yleBiTcNzVU=
MIME-Version: 1.0
Date: Wed, 30 Oct 2019 14:16:51 +0800
From: zhichen@codeaurora.org
To: Peter Oh <peter.oh@eero.com>
Subject: Re: [PATCH RFC] Revert "ath10k: fix DMA related firmware crashes on
 multiple devices"
In-Reply-To: <d6cfd945-7bab-a01d-0157-e0e1802f66e3@eero.com>
References: <1571734629-18028-1-git-send-email-zhichen@codeaurora.org>
 <d6cfd945-7bab-a01d-0157-e0e1802f66e3@eero.com>
Message-ID: <8c6d531f6474faf4df55f90185466774@codeaurora.org>
X-Sender: zhichen@codeaurora.org
User-Agent: Roundcube Webmail/1.2.5
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191029_231653_709402_DD0F35DF 
X-CRM114-Status: UNSURE (   5.08  )
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
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: linux-wireless@vger.kernel.org, ath10k@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "ath10k" <ath10k-bounces@lists.infradead.org>
Errors-To: ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org

On 2019-10-23 01:16, Peter Oh wrote:
> 
> How can you say value 0 (I believe it's 64 bytes) DMA burst size
> causes the symptom and 1 fixes it?
> 
> Peter

Confirmed from HW team that the configuration controls AXI burst size of 
the RD/WR access to the HOST MEM.
0-	No split , RAW read/write transfer size from MAC is put out on bus as 
burst length.
1-	Split at 256 byte boundary
2,3- Reserved

That's why we see issue with value 0.

Zhi

_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k

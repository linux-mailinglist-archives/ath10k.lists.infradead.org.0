Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4437E7A334
	for <lists+ath10k@lfdr.de>; Tue, 30 Jul 2019 10:40:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:In-Reply-To:
	Date:References:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qe6mgoxdeU4qSSzIdcElkTig74BVYMGigxnqB23qvfU=; b=uQNEAmu6jCwcWq
	NBBDyCCaYe7pDGVd7U/zB5UUCB9U0T9287GUm04N3+t9E2aCKTrEYxgmslVGyWRYBWzgZ6LjtOR9h
	py5kIU3djW/oxQm+I6ao3B8JYKfi6J3cOp8mTe/GqAxcmkNhTf3rWcbRea528i6CjPx9eiFdHJvD5
	QYn5hSvn7zVuGWFjvrS0lu9944hsC7/MxKzMqnr8GC+rtvvG2X8cQkR7z4XoJcVDjM6lUvxvCs15/
	f8fhC3YGgEg0k72JyJg7WKRuRRzq5R8NMubKOCYegv9cqGJ1bctO8ejiNH30896pZXtLv9w5hznD2
	cjHM/sR8xP6OtnHyJiXw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hsNg9-00083X-C1; Tue, 30 Jul 2019 08:40:17 +0000
Received: from smtp.codeaurora.org ([198.145.29.96])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hsNg3-00082o-QU
 for ath10k@lists.infradead.org; Tue, 30 Jul 2019 08:40:13 +0000
Received: by smtp.codeaurora.org (Postfix, from userid 1000)
 id 10B1B60591; Tue, 30 Jul 2019 08:40:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=codeaurora.org;
 s=default; t=1564476010;
 bh=OIyAq1bn76gr6Unb9FRGUCGeR7/1wiEDGzjzyPuiHfQ=;
 h=From:To:Cc:Subject:References:Date:In-Reply-To:From;
 b=kQq7x8cVF2En69MoQyiPCXqHe/qEKC2g0YUcaBW/X3ZVzdj6VvtPRzRlB6ALhSJPT
 j2GP3C2dj7O2lFYthCBMSrimOdvHYcG+yEnsQENPN7pyXMW8Oj4m95Z5oEpUYk7VXc
 /krCDtGlMDylExGyS3JLsu+AyoYUEPojoaajSuw8=
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
 pdx-caf-mail.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=2.0 tests=ALL_TRUSTED,BAYES_00,
 DKIM_INVALID,DKIM_SIGNED,SPF_NONE autolearn=no autolearn_force=no
 version=3.4.0
Received: from x230.qca.qualcomm.com (88-114-240-156.elisa-laajakaista.fi
 [88.114.240.156])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 (Authenticated sender: kvalo@smtp.codeaurora.org)
 by smtp.codeaurora.org (Postfix) with ESMTPSA id BB68B60364;
 Tue, 30 Jul 2019 08:40:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=codeaurora.org;
 s=default; t=1564476009;
 bh=OIyAq1bn76gr6Unb9FRGUCGeR7/1wiEDGzjzyPuiHfQ=;
 h=From:To:Cc:Subject:References:Date:In-Reply-To:From;
 b=YOdtSJY5XhYjwLaLU2YghrbnEnwiEnTElEIKLRKI5OjHukJ3FXCsyCtklrYtoVPJ+
 YtFbCI6dBBA08lzREy/DwqehSrP2BhHajL8JsNXQ8iyPLGJTyZhWcOSmZ4R6Zq4QIp
 FyCMT3t239HY/1qYydGXmb/peNXNc/CBw+b6hONw=
DMARC-Filter: OpenDMARC Filter v1.3.2 smtp.codeaurora.org BB68B60364
Authentication-Results: pdx-caf-mail.web.codeaurora.org;
 dmarc=none (p=none dis=none) header.from=codeaurora.org
Authentication-Results: pdx-caf-mail.web.codeaurora.org;
 spf=none smtp.mailfrom=kvalo@codeaurora.org
From: Kalle Valo <kvalo@codeaurora.org>
To: Rakesh Pillai <pillair@codeaurora.org>
Subject: Re: [PATCH] ath10k: Fix channel info parsing for non tlv target
References: <1552044366-9186-1-git-send-email-pillair@codeaurora.org>
Date: Tue, 30 Jul 2019 11:40:06 +0300
In-Reply-To: <1552044366-9186-1-git-send-email-pillair@codeaurora.org> (Rakesh
 Pillai's message of "Fri, 8 Mar 2019 16:56:06 +0530")
Message-ID: <87ftmnncex.fsf@codeaurora.org>
User-Agent: Gnus/5.13 (Gnus v5.13) Emacs/24.5 (gnu/linux)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190730_014011_894184_3F494DC4 
X-CRM114-Status: GOOD (  12.65  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.145.29.96 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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

Rakesh Pillai <pillair@codeaurora.org> writes:

> The tlv targets such as WCN3990 send more data in
> the chan info event, which is not sent by the non tlv
> targets. There is a minimum size check in the wmi event for
> non-tlv targets and hence we cannot update the common
> channel info structure.
>
> If the common channel info structure is updated, the
> size check for chan info event for non-tlv targets
> will fail and return -EPROTO and we see the below
> error messages
>
>    ath10k_pci 0000:01:00.0: failed to parse chan info event: -71
>
> Add tlv specific channel info structure and restore the
> original size of the common channel info structure to
> mitigate this issue.
>
> Tested HW: WCN3990
> 	   QCA9887
> Tested FW: WLAN.HL.3.1-00784-QCAHLSWMTPLZ-1
> 	   10.2.4-1.0-00037
>
> Fixes: 13104929d2ec ("ath10k: fill the channel survey results for WCN3990 correctly")
> Signed-off-by: Rakesh Pillai <pillair@codeaurora.org>

I'll queue this v5.3, and also for stable v5.0 and later.

-- 
Kalle Valo

_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k

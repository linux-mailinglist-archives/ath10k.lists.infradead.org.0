Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A234719F17
	for <lists+ath10k@lfdr.de>; Fri, 10 May 2019 16:25:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:In-Reply-To:
	Date:References:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=JIB4IOazk8M4y1tbPK05rSxS3L+kAAPTzYqJPFK2Dq8=; b=dbA8vCr9i311r7
	7LAnw+pvTnQmt3odtdK/RER4eqfmGTix8n/Wi2a4eLvBusyi9g0wUZndyyt2njcHDWPHFWpI8dk7m
	DstL1hAYJ5z8xIUhGXTD+66zKZ5Wm7N+l1DYbD7KiGhc6eaMb5bxJQmS40Nxb7svN+ApWjFr44AZx
	bJzpemgLeml4Z/WkaFSnsEN8NDuFmhHKfgQEC33Bx0Hx1Ms37T/9U15TRheNSufvKefCOn6DqPqMy
	shTGXE6KaiPADN000USa1dr6uTi/JDUjUlgYcKTL1kCEsDVExzutqj2+4kichFEpT4oBW3T6JqjRW
	j0ugzSP/i9TrZnBroubg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hP6Sm-0001xD-Ja; Fri, 10 May 2019 14:25:28 +0000
Received: from smtp.codeaurora.org ([198.145.29.96])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hP6Si-0001wc-Ii
 for ath10k@lists.infradead.org; Fri, 10 May 2019 14:25:25 +0000
Received: by smtp.codeaurora.org (Postfix, from userid 1000)
 id C9C716086B; Fri, 10 May 2019 14:25:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=codeaurora.org;
 s=default; t=1557498322;
 bh=TOjSb30Zdcej/HdIITsAg0UehrXktW2IehXD/8hozkg=;
 h=From:To:Cc:Subject:References:Date:In-Reply-To:From;
 b=iIP6N+sDsXk0HN40iq6bYwZR+vyUZHzF6WNVZM7F9LKTtAn271NdW6qqUK4OGpU6O
 13lMyQAjiCc7kwB+rTl6nDvJfWGojgnPshsr4yNK55az/WJnKxKSROaxQKBAY69UD+
 EhfNYN/QN3cZwdlO5+Hy1dvcA9TWwcdowrePwl94=
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
 pdx-caf-mail.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=2.0 tests=ALL_TRUSTED,BAYES_00,
 DKIM_INVALID,DKIM_SIGNED autolearn=no autolearn_force=no version=3.4.0
Received: from x230.qca.qualcomm.com (unknown [85.235.16.11])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 (Authenticated sender: kvalo@smtp.codeaurora.org)
 by smtp.codeaurora.org (Postfix) with ESMTPSA id CAC7D60275;
 Fri, 10 May 2019 14:25:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=codeaurora.org;
 s=default; t=1557498322;
 bh=TOjSb30Zdcej/HdIITsAg0UehrXktW2IehXD/8hozkg=;
 h=From:To:Cc:Subject:References:Date:In-Reply-To:From;
 b=iIP6N+sDsXk0HN40iq6bYwZR+vyUZHzF6WNVZM7F9LKTtAn271NdW6qqUK4OGpU6O
 13lMyQAjiCc7kwB+rTl6nDvJfWGojgnPshsr4yNK55az/WJnKxKSROaxQKBAY69UD+
 EhfNYN/QN3cZwdlO5+Hy1dvcA9TWwcdowrePwl94=
DMARC-Filter: OpenDMARC Filter v1.3.2 smtp.codeaurora.org CAC7D60275
Authentication-Results: pdx-caf-mail.web.codeaurora.org;
 dmarc=none (p=none dis=none) header.from=codeaurora.org
Authentication-Results: pdx-caf-mail.web.codeaurora.org;
 spf=none smtp.mailfrom=kvalo@codeaurora.org
From: Kalle Valo <kvalo@codeaurora.org>
To: Linus Torvalds <torvalds@linux-foundation.org>
Subject: Re: ath10k: wmi service ready event not received
References: <CAHk-=wim_asb1MRpis39SDghBNN5SpKDvUvF6cTtwa9w8cS8_Q@mail.gmail.com>
Date: Fri, 10 May 2019 17:25:19 +0300
In-Reply-To: <CAHk-=wim_asb1MRpis39SDghBNN5SpKDvUvF6cTtwa9w8cS8_Q@mail.gmail.com>
 (Linus Torvalds's message of "Fri, 10 May 2019 05:28:11 -0700")
Message-ID: <87r296jsj4.fsf@codeaurora.org>
User-Agent: Gnus/5.13 (Gnus v5.13) Emacs/24.5 (gnu/linux)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190510_072524_639915_F301D53B 
X-CRM114-Status: GOOD (  15.42  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.145.29.96 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
X-BeenThere: ath10k@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <ath10k.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/ath10k>,
 <mailto:ath10k-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/ath10k/>
List-Post: <mailto:ath10k@lists.infradead.org>
List-Help: <mailto:ath10k-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/ath10k>,
 <mailto:ath10k-request@lists.infradead.org?subject=subscribe>
Cc: ath10k@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "ath10k" <ath10k-bounces@lists.infradead.org>
Errors-To: ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org

Linus Torvalds <torvalds@linux-foundation.org> writes:

> I have a nice new laptop, and it works fine. Except today it lost
> wireless, and I have no idea why.
>
> It's not happened before (but it's fairly new and I'm actually on my
> first trip with it), so I don't know how common this is, but the
> kernel messages seem to say that the cause of it was
>
>   ath10k_pci 0000:02:00.0: wmi service ready event not received
>   ath10k_pci 0000:02:00.0: could not init core (-110)
>   ath10k_pci 0000:02:00.0: could not probe fw (-110)
>
> and then nothing works. -110 is ETIMEDOUT, fwiw.
>
> Rebooting got wireless back. It's possible I could have done something
> less drastic, but I was thinking that it would be the new kernel and
> rebooted into an older version. But then rebooting into the new one
> afterwards (double-checking before starting a bisect) and it all
> worked.
>
> Is there anything I can do to debug this if it happens again?

Can you post dmesg log when ath10k starts so that we know what hardware
and firmware you are using? "dmesg | grep ath10k" should tell that, I
assume this is a QCA6174 PCI device. Even better if you can provide full
dmesg so that we could see what was happening before this timeout, even
if just privately to me. Did this happen during laptop startup or after
resume?

-- 
Kalle Valo

_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k

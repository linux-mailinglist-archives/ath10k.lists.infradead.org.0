Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C79F2FB62
	for <lists+ath10k@lfdr.de>; Tue, 30 Apr 2019 16:25:44 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:In-Reply-To:
	Date:References:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=WqwvkCFOfXriwPmm0GJ/Bno8qLmXrr+6GrMd7x00JfA=; b=Nq8BJS55vliZut
	Z+T4LKQWz7EFQT4vS4OSpAaSHINrgtcKtXcIhbnf6ocybD6NHYg+Ofml7cnawlDegLS7VS5IqDHWC
	ew1b9/CjkP3eaa35HtK045cJTlX2lEg+RzyfIqJqZKh9aI7Vk/7jrvQHtLJwZ03iPmjFbBNQWby0d
	1RYk7xy3YJZNEbDw4QG2tgn4b2Leglqbpj7agp3wNR2emBtr6CnKFhxFsBNAee6yrveA1rPr7hkjX
	YLgUadZwzH3hmCzMXnBDBdZbgDQoh/olzzMSgpJ5phDyigWrqhJ8Lj7c8KaufSTLNpXmoIKBLdqre
	OJIlKmrdA+xb9wgBUZeg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hLThT-0007cM-44; Tue, 30 Apr 2019 14:25:39 +0000
Received: from smtp.codeaurora.org ([198.145.29.96])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hLThP-0007c0-Gb
 for ath10k@lists.infradead.org; Tue, 30 Apr 2019 14:25:36 +0000
Received: by smtp.codeaurora.org (Postfix, from userid 1000)
 id B44786074F; Tue, 30 Apr 2019 14:25:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=codeaurora.org;
 s=default; t=1556634334;
 bh=ru4uFJBDXnWgbZnRESyuHYjpWU71nRsW2ZydZO2/mAA=;
 h=From:To:Cc:Subject:References:Date:In-Reply-To:From;
 b=YDhAr6vHVf6QoAZn/LvN4tg/wYbclLl5S/W8f1r6267vp0MumXD4PGO6aPDzq3zT+
 xzRKIJYSwPmGebXnx5yoQHKV1qOBVcbJExhL8PpM9Bzoch6fmnsi2eMKe1U7hxgupc
 R8d8cK+HmZ07PvD+35pZo/RrFKT2DMTZZng59kF8=
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
 pdx-caf-mail.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=2.0 tests=ALL_TRUSTED,BAYES_00,
 DKIM_INVALID,DKIM_SIGNED autolearn=no autolearn_force=no version=3.4.0
Received: from potku.adurom.net (88-114-240-156.elisa-laajakaista.fi
 [88.114.240.156])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 (Authenticated sender: kvalo@smtp.codeaurora.org)
 by smtp.codeaurora.org (Postfix) with ESMTPSA id 628A1601D4;
 Tue, 30 Apr 2019 14:25:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=codeaurora.org;
 s=default; t=1556634333;
 bh=ru4uFJBDXnWgbZnRESyuHYjpWU71nRsW2ZydZO2/mAA=;
 h=From:To:Cc:Subject:References:Date:In-Reply-To:From;
 b=SKgWvb1L5guw3OnQ9w3LPN0xgaSisWG+/bgnm1Bm2Eb7pkxeHmmxsaHWiLgXLtwfw
 hHdfXhdb8FaKQ6pOa19R4tMuIZ3j0/Bg/IvHVYYZxzM5xOD+DbdEmD18kgIjpTVbWE
 XTrKLeYoSwHaw5CxYKSMt6ZYy4NNWZd8uUC1g/jQ=
DMARC-Filter: OpenDMARC Filter v1.3.2 smtp.codeaurora.org 628A1601D4
Authentication-Results: pdx-caf-mail.web.codeaurora.org;
 dmarc=none (p=none dis=none) header.from=codeaurora.org
Authentication-Results: pdx-caf-mail.web.codeaurora.org;
 spf=none smtp.mailfrom=kvalo@codeaurora.org
From: Kalle Valo <kvalo@codeaurora.org>
To: Wen Gong <wgong@qti.qualcomm.com>
Subject: Re: [PATCH] ath10k: add peer id check in ath10k_peer_find_by_id
References: <1554260478-4161-1-git-send-email-wgong@codeaurora.org>
 <CANMq1KAU1B4Bweq3O6O8HOMwT7fHjj9tDyxqMsn_vn4gwxXL=Q@mail.gmail.com>
 <87wojbrg0m.fsf@kamboji.qca.qualcomm.com>
 <7d528d143ae14de2a489c6986f71ac45@aptaiexm02f.ap.qualcomm.com>
Date: Tue, 30 Apr 2019 17:25:30 +0300
In-Reply-To: <7d528d143ae14de2a489c6986f71ac45@aptaiexm02f.ap.qualcomm.com>
 (Wen Gong's message of "Tue, 30 Apr 2019 10:12:09 +0000")
Message-ID: <877ebbpo2t.fsf@kamboji.qca.qualcomm.com>
User-Agent: Gnus/5.13 (Gnus v5.13) Emacs/24.5 (gnu/linux)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190430_072535_589329_9F86F0FE 
X-CRM114-Status: GOOD (  10.41  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.145.29.96 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Claire Chang <tientzu@chromium.org>,
 Nicolas Boichat <drinkcat@chromium.org>,
 "linux-wireless@vger.kernel.org" <linux-wireless@vger.kernel.org>,
 "ath10k@lists.infradead.org" <ath10k@lists.infradead.org>,
 Wen Gong <wgong@codeaurora.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "ath10k" <ath10k-bounces@lists.infradead.org>
Errors-To: ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org

Wen Gong <wgong@qti.qualcomm.com> writes:

>> -----Original Message-----
>> From: ath10k <ath10k-bounces@lists.infradead.org> On Behalf Of Kalle Valo
>> Sent: Tuesday, April 30, 2019 5:37 PM
>> To: Nicolas Boichat <drinkcat@chromium.org>
>> Cc: Claire Chang <tientzu@chromium.org>; linux-wireless@vger.kernel.org;
>> ath10k@lists.infradead.org; Wen Gong <wgong@codeaurora.org>
>> Subject: [EXT] Re: [PATCH] ath10k: add peer id check in
>> ath10k_peer_find_by_id
>> >> --- a/drivers/net/wireless/ath/ath10k/txrx.c
>> >> +++ b/drivers/net/wireless/ath/ath10k/txrx.c
>> >> @@ -157,6 +157,9 @@ struct ath10k_peer
>> *ath10k_peer_find_by_id(struct ath10k *ar, int peer_id)
>> >>  {
>> >>         struct ath10k_peer *peer;
>> >>
>> >> +       if (peer_id >= sizeof(peer->peer_ids) * BITS_PER_BYTE)
>> >
>> > I'd use >= BITS_PER_TYPE(peer->peer_ids).
>> 
>> Nice, I didn't know about that. Wen, please submit v2 using this.
>> 
>> --
>> Kalle Valo
> Yes, 
> I have send v2 yesterday:
> [PATCH v2] ath10k: add peer id check in ath10k_peer_find_by_id

Ok, I didn't notice that yet. But in general it's good practise to reply
to review comments and let the reviewer (and others) know if you agree
with the comment or not. For example, in this case you could have said
to Nicolas: "Ok, I'll send v2".

-- 
Kalle Valo

_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k

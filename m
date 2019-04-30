Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 15733F31F
	for <lists+ath10k@lfdr.de>; Tue, 30 Apr 2019 11:36:57 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:In-Reply-To:
	Date:References:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Uc15c2PRNmiZaQpKyJUMj7HChTZWcSHtmajIm1gDt48=; b=fLdt3N7SopN0qj
	dIrAbIGXEGENB1dZdjdkPwPbxZbaPWecya6kofYCZ2hyR3b/EcWF+hAyF20/pc88cRHew5tH5hgY5
	OeejlQabq61YJVPMsIha3yPlmS/i0HllI7R3OiEwHatygwpjmhRfpGoxshVmrD5olM19c/ZhNtEOn
	rXwnGpzobPNwgxQL/7uxmOkAGBDXiQ+zQxxGvrTiBF4B8FiUuOTO11m3jcgd5Y4HSiGcqvnBuHwvU
	lTktmOPPur0njNSuDL0wRV0nBQsxooraWm29EPUaOYjCj8960NgJwaPa/VgCdVmZVZBVaeLikJfCg
	JaxFZtXakFFF4gCpSVHw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hLPC0-0004SI-Ac; Tue, 30 Apr 2019 09:36:52 +0000
Received: from smtp.codeaurora.org ([198.145.29.96])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hLPBw-0004Qd-W8
 for ath10k@lists.infradead.org; Tue, 30 Apr 2019 09:36:50 +0000
Received: by smtp.codeaurora.org (Postfix, from userid 1000)
 id 34EE660DB6; Tue, 30 Apr 2019 09:36:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=codeaurora.org;
 s=default; t=1556617007;
 bh=lN4glXMpqtmRgarltcSpOuqbmL55CZP7DhJ20iLDeNM=;
 h=From:To:Cc:Subject:References:Date:In-Reply-To:From;
 b=hFw6RRH9cvRt6Mgnppf7kwcJr8CMjQgPNIH9WlC52jE99oi7GXm+zi7XYhVj+U4zW
 eFOh8bowIsduSiWs5//plfUwEkEiz9gRq1R3zeVgRcK6CdOKtGgvxmQ4iSJ3PpFLJ1
 zbivu1qdUIimguEFaY74h8kYvZTiiWCOw1R724Io=
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
 by smtp.codeaurora.org (Postfix) with ESMTPSA id D1E50608D4;
 Tue, 30 Apr 2019 09:36:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=codeaurora.org;
 s=default; t=1556617005;
 bh=lN4glXMpqtmRgarltcSpOuqbmL55CZP7DhJ20iLDeNM=;
 h=From:To:Cc:Subject:References:Date:In-Reply-To:From;
 b=cPb/0Xp27oPqXfjD1tlSaJTTsy6F58/8EO6bRU1ekuW8GnALHqwmpY8d+xKTmDRRw
 PgZhSXwiyGf5/kTqiHuD96Uf1jdz1KBoMD0z0d+iVdAMr+khoQRmyhfDmIFJDvW7sH
 g0T/P8/dsOsTj3KuCGkRVe9lCffLc7deL7nRuWTc=
DMARC-Filter: OpenDMARC Filter v1.3.2 smtp.codeaurora.org D1E50608D4
Authentication-Results: pdx-caf-mail.web.codeaurora.org;
 dmarc=none (p=none dis=none) header.from=codeaurora.org
Authentication-Results: pdx-caf-mail.web.codeaurora.org;
 spf=none smtp.mailfrom=kvalo@codeaurora.org
From: Kalle Valo <kvalo@codeaurora.org>
To: Nicolas Boichat <drinkcat@chromium.org>
Subject: Re: [PATCH] ath10k: add peer id check in ath10k_peer_find_by_id
References: <1554260478-4161-1-git-send-email-wgong@codeaurora.org>
 <CANMq1KAU1B4Bweq3O6O8HOMwT7fHjj9tDyxqMsn_vn4gwxXL=Q@mail.gmail.com>
Date: Tue, 30 Apr 2019 12:36:41 +0300
In-Reply-To: <CANMq1KAU1B4Bweq3O6O8HOMwT7fHjj9tDyxqMsn_vn4gwxXL=Q@mail.gmail.com>
 (Nicolas Boichat's message of "Mon, 29 Apr 2019 18:30:00 +0800")
Message-ID: <87wojbrg0m.fsf@kamboji.qca.qualcomm.com>
User-Agent: Gnus/5.13 (Gnus v5.13) Emacs/24.5 (gnu/linux)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190430_023649_054580_E9106E11 
X-CRM114-Status: GOOD (  10.66  )
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
Cc: Claire Chang <tientzu@chromium.org>, linux-wireless@vger.kernel.org,
 ath10k@lists.infradead.org, Wen Gong <wgong@codeaurora.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "ath10k" <ath10k-bounces@lists.infradead.org>
Errors-To: ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org

Nicolas Boichat <drinkcat@chromium.org> writes:

> On Wed, Apr 3, 2019 at 3:01 AM Wen Gong <wgong@codeaurora.org> wrote:
>>
>> For some SDIO chip, the peer id is 65535 for MPDU with error status,
>> then test_bit will trigger buffer overflow for peer's memory, if kasan
>> enabled, it will report error.
>>
>> Add check for overflow the size of peer's peer_ids will avoid the buffer
>> overflow access.
>>

[...]

>> --- a/drivers/net/wireless/ath/ath10k/txrx.c
>> +++ b/drivers/net/wireless/ath/ath10k/txrx.c
>> @@ -157,6 +157,9 @@ struct ath10k_peer *ath10k_peer_find_by_id(struct ath10k *ar, int peer_id)
>>  {
>>         struct ath10k_peer *peer;
>>
>> +       if (peer_id >= sizeof(peer->peer_ids) * BITS_PER_BYTE)
>
> I'd use >= BITS_PER_TYPE(peer->peer_ids).

Nice, I didn't know about that. Wen, please submit v2 using this.

-- 
Kalle Valo

_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k

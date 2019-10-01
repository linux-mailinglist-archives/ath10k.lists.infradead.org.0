Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B313CC3E51
	for <lists+ath10k@lfdr.de>; Tue,  1 Oct 2019 19:13:51 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=eKzDEf2aoqW3tC8UZ4HE/SJymTiZyDRkIMIr0Und9OA=; b=kADqtMAheABAwLeJsiwYsR2pc
	H/ktsT7UN/fhGo2PbCKryqCHgCyoKzZTS9J8F3pqAiXaMTrDJOYwH47zeMKtzP4hSt5VeCAu4EJhQ
	lARNyDu8bfDGFJKD+UEn0Fz8hi4weVkvK8sq0XItR0B/iEFA2OT0nHNCGyiaoQdTFK9sOc/kw/i1r
	GCzLDrQbgYhK45BG4Yk5WUnM90aezsVSit81QuYyXIy7fBoxm1SfJshnPoxP6cwqrmZkb4myE+3ur
	/xhI0sh6oi7l/5cRt91lXG8/qVKjTXfacfsVyCxwO0hRiwIa8EpQDAXkEjR0Whw+0a4b/rNmzCwCT
	wmeEgXGLA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iFLic-0006Vn-8o; Tue, 01 Oct 2019 17:13:46 +0000
Received: from mail-pg1-x541.google.com ([2607:f8b0:4864:20::541])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iFLiX-0006TF-EN
 for ath10k@lists.infradead.org; Tue, 01 Oct 2019 17:13:42 +0000
Received: by mail-pg1-x541.google.com with SMTP id d26so4629655pgl.7
 for <ath10k@lists.infradead.org>; Tue, 01 Oct 2019 10:13:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=eero.com; s=google;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-transfer-encoding:content-language;
 bh=AQENXz9W3lh6tp8zW2p3ipcz3DJsc45NsjiOFfnhUaM=;
 b=LtLBRh3au2KYlosRYEUIS/BLjCPifqRNJvzEEBjoueuyoSvPrzX+6ClaP7Tlybi3Bq
 vCP+DmjTQoFR4cOZpdWzGCwjjK+PrIPniBez+Pip1Cx/A0QfNH2y2DceTBpVlCVz5aWy
 DErC04jImUmW+FXm+FrMpt855FkvPH4d51LtA=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-transfer-encoding
 :content-language;
 bh=AQENXz9W3lh6tp8zW2p3ipcz3DJsc45NsjiOFfnhUaM=;
 b=bt22wkwizKYFAW2f0oxZu0H3nbG2K0MFQcnKjkzVgF+pzGwpw692ecy32/xTdipvYw
 +/52vgCKN3hj8d3d9eDjPWUIQHH82Gaz2bHfQp7T4PXIlD3fkcV0ixDUgqQIaDU+fHV4
 QIeKq+iHSoTtBZXXP3ihmJiwF71RUwQaf5kCvmCi0pdqxMkS/ple/K1jCCIXJfj52IkW
 KxyPQobILF+IOpam+0uuchks+BwB0C92Yr4gJkf5dJLWramXgQNsQ2l/zw0jYIzVe8Uj
 MNkA6GMTjtJDV0nNZLJy16UC8kKUxds5DZZ9p7hGSxXiazAHY5fdJJ0nGyi/w6x5rXsL
 G4vQ==
X-Gm-Message-State: APjAAAXWPyfsPzomVI1D9DQ73UbgQg+aHCz+I52UMvZI/w6vm+roRM+9
 fiSLGfVLwZATnykS/ZdyWRQBjs2ATuc=
X-Google-Smtp-Source: APXvYqwf0p5tJ29zKh4vSxVhDfuTNgdsfsk3N1ESFTW3/VZ0HnDwJmd6IwK0GPgB7wRx6rMfLlKsPQ==
X-Received: by 2002:a63:6988:: with SMTP id
 e130mr32071818pgc.203.1569950020378; 
 Tue, 01 Oct 2019 10:13:40 -0700 (PDT)
Received: from [10.0.2.15] (c-98-234-217-115.hsd1.ca.comcast.net.
 [98.234.217.115])
 by smtp.gmail.com with ESMTPSA id y7sm16188954pfn.142.2019.10.01.10.13.39
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 01 Oct 2019 10:13:39 -0700 (PDT)
Subject: Re: [PATCH 2/2] ath10k: switch to ieee80211_tx_dequeue_ni
To: Kalle Valo <kvalo@codeaurora.org>,
 Erik Stromdahl <erik.stromdahl@gmail.com>
References: <20190617200140.6189-1-erik.stromdahl@gmail.com>
 <20190617200140.6189-2-erik.stromdahl@gmail.com>
 <87eezw660r.fsf@kamboji.qca.qualcomm.com>
From: Peter Oh <peter.oh@eero.com>
Message-ID: <19f8023a-1943-9bf5-9a59-a7643f7692bf@eero.com>
Date: Tue, 1 Oct 2019 10:13:35 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <87eezw660r.fsf@kamboji.qca.qualcomm.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191001_101341_492532_A54808A7 
X-CRM114-Status: GOOD (  13.25  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:541 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: johannes@sipsolutions.net, linux-wireless@vger.kernel.org,
 davem@davemloft.net, ath10k@lists.infradead.org, linux-kernel@vger.kernel.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "ath10k" <ath10k-bounces@lists.infradead.org>
Errors-To: ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org


On 10/1/19 4:48 AM, Kalle Valo wrote:
> Erik Stromdahl <erik.stromdahl@gmail.com> writes:
>
>> Since ath10k_mac_tx_push_txq() can be called from process context, we
>> must explicitly disable softirqs before the call into mac80211.
>>
>> By calling ieee80211_tx_dequeue_ni() instead of ieee80211_tx_dequeue()
>> we make sure softirqs are always disabled even in the case when
>> ath10k_mac_tx_push_txq() is called from process context.
>>
>> Calling ieee80211_tx_dequeue_ni() with softirq's already disabled
>> (e.g., from softirq context) should be safe as the local_bh_disable()
>> and local_bh_enable() functions (called from ieee80211_tx_dequeue_ni)
>> are fully reentrant.
>>
>> Signed-off-by: Erik Stromdahl <erik.stromdahl@gmail.com>
> I already applied this, but I still want to check _why_ you are changing
> this? Is it that you want to call ath10k_mac_tx_push_pending() from a
> workqueue in sdio.c in a future patch, or what? Because at the moment me
> and Johannes were not able to find where this is called in process
> context.
>
It seems Johannes wants to fix it in mac80211.

[PATCH v2] mac80211: keep BHs disabled while calling drv_tx_wake_queue()

Drivers typically expect this, as it's the case for almost all cases
where this is called (i.e. from the TX path). Also, the code in mac80211
itself (if the driver calls ieee80211_tx_dequeue()) expects this as it
uses this_cpu_ptr() without additional protection.


_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k

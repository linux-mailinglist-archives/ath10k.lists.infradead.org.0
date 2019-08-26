Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E0D299D489
	for <lists+ath10k@lfdr.de>; Mon, 26 Aug 2019 18:56:13 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=ssVwPSKF18degTekUgGxLz9lB4gxBu5tI/YEwe8YkcE=; b=RJQwlXX67S5uAh5vFKUrTKZH8
	QUHlL3L2ItAHV2OPWj+oGy9U8y4Qs7o+Kd2FwSTXEFpg87KDFLV/OessEQBW3kYcBz6aCsuWwf7nn
	tcIfxaHZTuTaLZIOhV4XxHuKXCJY/kmP/ts91GDkkEivcRAQBGQyY9Uh1tyQLT2Y1xIChbg6sBXYr
	SvJI58HALeRiNQi43zZl6rgATxcpj3mHy6R4Lr1ZencnLrOgVGVUsIIW86GjUd1p+d7VwhqEzQVFm
	hlTTAAR/P0Mu6skevBR760p50Cl2TcEPOMDQNvoi0Od6U5sSwQNFbsp0qfH4rxUw0w6OLJ0IoEJZG
	RNY937A8Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i2IHl-00007n-BV; Mon, 26 Aug 2019 16:56:05 +0000
Received: from mail-lj1-x241.google.com ([2a00:1450:4864:20::241])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i2IHg-00007U-28
 for ath10k@lists.infradead.org; Mon, 26 Aug 2019 16:56:01 +0000
Received: by mail-lj1-x241.google.com with SMTP id x18so15797528ljh.1
 for <ath10k@lists.infradead.org>; Mon, 26 Aug 2019 09:55:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:references:from:message-id:date:user-agent:mime-version
 :in-reply-to:content-language:content-transfer-encoding;
 bh=neUUe6izlW2YSFhsPDka8y7efVuU1RFZ0BA0ZiRsZkQ=;
 b=eb0gFOdmbv++1BKVSisN3IyaMyYkr60kiNgCyxQxyXUjNCMgeggucG7+ktJzoFjV/1
 s6doEulqrHS7+SO9vpChOyp2kDHQnWbtQopLEcOJiWLp7nXgWi0TAxKOGtHMM1x6NtTK
 uGEWJpa+AqwJEnHNC0E7L0nTeGiQSOc1ITq3LLEeWp1oqbPkw5+Flo1R4ZrN6F0Bh7VY
 KExg+ZM52Iu6BfpqijbHOYbcE1zJLjQiJCbFsIOfMmr4cHubAyCRVnfTZMeXhWv8kLhl
 HRyRn13Nwqsii5b91wIzq/Mp63KCtuTSMTzthdj+mNORVFeRc16XaV8w+f7g+9U4i6Ac
 3TOQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=neUUe6izlW2YSFhsPDka8y7efVuU1RFZ0BA0ZiRsZkQ=;
 b=TaNY4FAbTI3yCaHZknlLz13k/nWK7G4mrcLgc4okJhagbmLDlkYoDnj82H0EPFWANV
 ocYGfvjscCECCSuaJyy/Q9ol3ZkjI3zRHN+mprnFpkkAZ25ui0loJBlgxyA1/tcUuCbo
 g/lDr41t7d1mGqYJpJhNoKtAM03IO0wsKprUrc/BgVtHr5AlWbc4EhSkw10k3KbvWtUF
 gF3rGdYBkBMM5Na2Ky4Ti5xwhF7JyN8/i3IskXYXo9xFgfvYZh3GvbSevFOHGkw4AOJo
 KH27qEDB2iKAUiTEb7t7/H2/Zu8kpsIlvNJWh1ThZdrdPuL1VRFUaJmGd2EU1lnOKJPS
 plCQ==
X-Gm-Message-State: APjAAAVmSR1trB5+CsVjGjnbyOaSvvX75YI+UOuCHAHZwLcvI1yr76hl
 FN3aOSFN4EoCLfTtwVN2oJHbmysy
X-Google-Smtp-Source: APXvYqyp5CUSwmR+nEPU5dI4Ah9LNeS1xAdAf4B3V+XhtRmdlnz15hd1HiQECRdwbrlPB9yEwJwMBA==
X-Received: by 2002:a2e:3e18:: with SMTP id l24mr11327221lja.67.1566838557599; 
 Mon, 26 Aug 2019 09:55:57 -0700 (PDT)
Received: from [192.168.1.244] (81-233-89-221-no75.tbcn.telia.com.
 [81.233.89.221])
 by smtp.gmail.com with ESMTPSA id o5sm2033709lfn.42.2019.08.26.09.55.56
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Mon, 26 Aug 2019 09:55:56 -0700 (PDT)
Subject: Re: [PATCH] ath10k: remove TX lock from ath10k_htt_tx_inc_pending
To: Wen Gong <wgong@qti.qualcomm.com>, Kalle Valo <kvalo@qca.qualcomm.com>,
 "linux-wireless@vger.kernel.org" <linux-wireless@vger.kernel.org>,
 "ath10k@lists.infradead.org" <ath10k@lists.infradead.org>
References: <20190824134857.4094-1-erik.stromdahl@gmail.com>
 <4cd30880ae754f5599e6b1a4c1ac6a74@aptaiexm02f.ap.qualcomm.com>
From: Erik Stromdahl <erik.stromdahl@gmail.com>
Message-ID: <70fe66cc-e966-70bb-3dcf-4de55fc52cf9@gmail.com>
Date: Mon, 26 Aug 2019 18:55:55 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.0
MIME-Version: 1.0
In-Reply-To: <4cd30880ae754f5599e6b1a4c1ac6a74@aptaiexm02f.ap.qualcomm.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190826_095600_107897_2ECFBC71 
X-CRM114-Status: GOOD (  18.45  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:241 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (erik.stromdahl[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "ath10k" <ath10k-bounces@lists.infradead.org>
Errors-To: ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org



On 8/26/19 4:44 AM, Wen Gong wrote:
>> -----Original Message-----
>> From: ath10k <ath10k-bounces@lists.infradead.org> On Behalf Of Erik
>> Stromdahl
>> Sent: Saturday, August 24, 2019 9:49 PM
>> To: Kalle Valo <kvalo@qca.qualcomm.com>; linux-wireless@vger.kernel.org;
>> ath10k@lists.infradead.org
>> Cc: Erik Stromdahl <erik.stromdahl@gmail.com>
>> Subject: [EXT] [PATCH] ath10k: remove TX lock from
>> ath10k_htt_tx_inc_pending
>>
>> This commit removes the call to ath10k_mac_tx_lock() from
>> ath10k_htt_tx_inc_pending() in case the high water mark is reached.
>>
>> ath10k_mac_tx_lock() calls ieee80211_stop_queues() in order to stop
>> mac80211 from pushing more TX data to the driver (this is the TX lock).
>>
>> If a driver is trying to fetch an skb from a queue while the queue is
>> stopped, ieee80211_tx_dequeue() will return NULL.
>>
>> So, in ath10k_mac_tx_push_txq(), there is a risk that the call to
>> ath10k_htt_tx_inc_pending() results in a stop of the mac80211 TX queues
>> just before the skb is fetched.
>>
>> This will cause ieee80211_tx_dequeue() to return NULL and
>> ath10k_mac_tx_push_txq() to exit prematurely and return -ENOENT.
>> Before the function returns ath10k_htt_tx_dec_pending() will be called.
>> This call will re-enable the TX queues through ath10k_mac_tx_unlock().
>> When ath10k_mac_tx_push_txq() has returned, the TX queue will be
>> returned back to mac80211 with ieee80211_return_txq() without the skb
>> being properly consumed.
>>
>> Since the TX queues were re-enabled in the error exit path of
>> ath10k_mac_tx_push_txq(), mac80211 can continue pushing data to the
>> driver. If the hardware does not consume the data, the above mentioned
>> case will be repeated over and over.
>>
>> A case when the hardware is not able to transmit the data from the host
>> is when a STA has been dis-associated from an AP and has not yet been
>> able to re-associate. In this case there will be no TX_COMPL_INDs from
>> the hardware, resulting in the TX counter not be decremented.
>>
>> This phenomenon has been observed in both a real and a test setup.
>>
>> In order to fix this, the actual TX locking (the call to
>> ath10k_mac_tx_lock()) was removed from ath10k_htt_tx_inc_pending().
>> Instead, ath10k_mac_tx_lock() is called separately after the skb has
>> been fetched (after the call to ieee80211_tx_dequeue()). At this point
>> it is OK to stop the queues.
> Is this patch will impact throughput?
No, I haven't seen any performance degradation.

I can't see that it should impact the throughput even in theory (rather the opposite
actually since we reduce the likelihood of dropping packets).

_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k

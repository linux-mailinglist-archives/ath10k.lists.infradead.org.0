Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 87ABD72E7A
	for <lists+ath10k@lfdr.de>; Wed, 24 Jul 2019 14:10:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:In-Reply-To:
	Date:References:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=wYExYMvwJI8Pc2xbOu/nz2qEAWvDyOuj0rdjsDOfCxI=; b=Rsqijwyd3tSLUy
	hor1StE8vRXIEnZFNCn1YnrQN1lSAg127E+49DpUYqYGbi2DO4MWoIrOWOvBy7wcnqyoxGFxli++A
	ZzFckywr1oxpbwSNIRFpgXROs0Ri4qzysBV73K4mQFhFqMfam/BT+A4SWoVPwuDpCg8Y4zFtWEy0c
	M3hoGFPVoGdfoas8ox0Lqt3L4fC3n6/jYH8tsn8uFfHQvOQ0XL7Dw/AdWxnqY3AkpQVk/FcqF74lE
	KDSomCEz9pedcxssMgBQ7OTKz1/jXG18snaUR954wt7R7EEg8rliisf//gQpYGjK+HmAqp3apU0cl
	zwF0p1bXLPsQPswss4FQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hqG6d-0000pX-Hp; Wed, 24 Jul 2019 12:10:51 +0000
Received: from smtp.codeaurora.org ([198.145.29.96])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hqG6Z-0000pE-9l
 for ath10k@lists.infradead.org; Wed, 24 Jul 2019 12:10:48 +0000
Received: by smtp.codeaurora.org (Postfix, from userid 1000)
 id E812060314; Wed, 24 Jul 2019 12:10:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=codeaurora.org;
 s=default; t=1563970246;
 bh=EfhXYznOo64ISctI1lmzX0uJT8//sSXNyzt1BeV0rg4=;
 h=From:To:Cc:Subject:References:Date:In-Reply-To:From;
 b=POA6WCMLiz6iMUa1UlSBvYqsAgBP8MV6/T+ysAzSK0t/K8EAK2t8nntthFD1nyrwH
 o1ARNBfPhQecDWVNhL1XZOC4RdSIkrxDRAnM0QHbVUrzpGXs6v1l4hILNzSsjoumVf
 JaB3vUANqqyd6IH1YVsXTHRGW46l6nJjfB72psKM=
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
 by smtp.codeaurora.org (Postfix) with ESMTPSA id B024560314;
 Wed, 24 Jul 2019 12:10:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=codeaurora.org;
 s=default; t=1563970246;
 bh=EfhXYznOo64ISctI1lmzX0uJT8//sSXNyzt1BeV0rg4=;
 h=From:To:Cc:Subject:References:Date:In-Reply-To:From;
 b=POA6WCMLiz6iMUa1UlSBvYqsAgBP8MV6/T+ysAzSK0t/K8EAK2t8nntthFD1nyrwH
 o1ARNBfPhQecDWVNhL1XZOC4RdSIkrxDRAnM0QHbVUrzpGXs6v1l4hILNzSsjoumVf
 JaB3vUANqqyd6IH1YVsXTHRGW46l6nJjfB72psKM=
DMARC-Filter: OpenDMARC Filter v1.3.2 smtp.codeaurora.org B024560314
Authentication-Results: pdx-caf-mail.web.codeaurora.org;
 dmarc=none (p=none dis=none) header.from=codeaurora.org
Authentication-Results: pdx-caf-mail.web.codeaurora.org;
 spf=none smtp.mailfrom=kvalo@codeaurora.org
From: Kalle Valo <kvalo@codeaurora.org>
To: Wen Gong <wgong@qti.qualcomm.com>
Subject: Re: [PATCH] ath10k: add mic bytes for pmf management packet
References: <1560757079-19266-1-git-send-email-wgong@codeaurora.org>
 <136d04d4-671b-8dde-2abd-63070b07bd26@candelatech.com>
 <9403fef58374427fa76fb32ee64ee333@aptaiexm02f.ap.qualcomm.com>
Date: Wed, 24 Jul 2019 15:10:42 +0300
In-Reply-To: <9403fef58374427fa76fb32ee64ee333@aptaiexm02f.ap.qualcomm.com>
 (Wen Gong's message of "Tue, 18 Jun 2019 07:21:30 +0000")
Message-ID: <87v9vrzl8d.fsf@kamboji.qca.qualcomm.com>
User-Agent: Gnus/5.13 (Gnus v5.13) Emacs/24.5 (gnu/linux)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190724_051047_380648_61FD9AA4 
X-CRM114-Status: GOOD (  12.46  )
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
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Ben Greear <greearb@candelatech.com>,
 "linux-wireless@vger.kernel.org" <linux-wireless@vger.kernel.org>,
 "ath10k@lists.infradead.org" <ath10k@lists.infradead.org>,
 Wen Gong <wgong@codeaurora.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "ath10k" <ath10k-bounces@lists.infradead.org>
Errors-To: ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org

Wen Gong <wgong@qti.qualcomm.com> writes:

>> -----Original Message-----
>> From: ath10k <ath10k-bounces@lists.infradead.org> On Behalf Of Ben
>> Greear
>> Sent: Tuesday, June 18, 2019 12:04 AM
>> To: Wen Gong <wgong@codeaurora.org>; ath10k@lists.infradead.org
>> Cc: linux-wireless@vger.kernel.org
>> Subject: [EXT] Re: [PATCH] ath10k: add mic bytes for pmf management
>> packet
>> 
>> I was looking at mac80211 code recently, and it seems some action
>> frames are NOT supposed to be protected.  I added my own helper
>> method to my local ath10k.  Maybe you want to use this?
>> 
>> 
>> /* Copied from ieee80211_is_robust_mgmt_frame, but disable the check for
>> has_protected
>>   * since we do tx hw crypt, and it won't actually be encrypted even when this
>> flag is
>>   * set.
>>   */
>> bool ieee80211_is_robust_mgmt_frame_tx(struct ieee80211_hdr *hdr)
>> {
>>          if (ieee80211_is_disassoc(hdr->frame_control) ||
>>              ieee80211_is_deauth(hdr->frame_control))
>>                  return true;
>> 
>>          if (ieee80211_is_action(hdr->frame_control)) {
>>                  u8 *category;
>> 
>>                  /*
>>                   * Action frames, excluding Public Action frames, are Robust
>>                   * Management Frames. However, if we are looking at a Protected
>>                   * frame, skip the check since the data may be encrypted and
>>                   * the frame has already been found to be a Robust Management
>>                   * Frame (by the other end).
>>                   */
>> 		/*
>> 		if (ieee80211_has_protected(hdr->frame_control))
>>                          return true;
>> 		*/
>>                  category = ((u8 *) hdr) + 24;
>>                  return *category != WLAN_CATEGORY_PUBLIC &&
>>                          *category != WLAN_CATEGORY_HT &&
>>                          *category != WLAN_CATEGORY_WNM_UNPROTECTED &&
>>                          *category != WLAN_CATEGORY_SELF_PROTECTED &&
>>                          *category != WLAN_CATEGORY_UNPROT_DMG &&
>>                          *category != WLAN_CATEGORY_VHT &&
>>                          *category != WLAN_CATEGORY_VENDOR_SPECIFIC;
>>          }
>> 
>>          return false;
>> }
>> 
>> Thanks,
>> Ben
>> 
>> > +
>> >   	data_len = msdu->len;
>> >
>> >   	switch (txmode) {
>> >
>> 
>> 
> Thanks Ben,
>
> seems the ieee80211_is_robust_mgmt_frame_tx is not 
> match my change.

So what's the conclusion, can I take this patch?

-- 
Kalle Valo

_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k

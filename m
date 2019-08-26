Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8576E9C756
	for <lists+ath10k@lfdr.de>; Mon, 26 Aug 2019 04:45:02 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:To:From:Subject:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=mp4bTw5CYaA3CMgnUGSInGmvzzarMneMOSvmrSH/mOU=; b=DThZhWdsiJ53Fb
	zO4Tkn+7ONb9nvsxe/9JmeOb7dLEpfoEdXpIZJhFNuH1lGEXZO/aX3TSuVcunxsM0bL9mHPiT4qdO
	i2SmNER3927rKncd1v/VbQoTCNmwuN/jsdwHRPi1oOuLWTfB6fyLmxMH6TyS+qES2cppR6e4HX4Zr
	MF95s+ZVaXCR52C82pPchxCASOPXPgqaP+dhg3Bq3cg/lhRNz2lHSzXXinKk+34jaYhwf04xJtYqz
	DVNkcN5yUI/5ii63IT5CjxhAq11yDHjPM3VNEQ8cpjj3oAEn6Ozxd4B/pzxD4kUxxr8Dr+xiR37zK
	tD2Q0uCqtXwjO2jGWdnQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i2501-0007lv-6q; Mon, 26 Aug 2019 02:44:53 +0000
Received: from alexa-out-tai-01.qualcomm.com ([103.229.16.226])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i24zu-0007lZ-Av
 for ath10k@lists.infradead.org; Mon, 26 Aug 2019 02:44:48 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=qti.qualcomm.com; i=@qti.qualcomm.com; q=dns/txt;
 s=qcdkim; t=1566787486; x=1598323486;
 h=from:to:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version:subject;
 bh=BzEFt8b9wy/Vl7PDQctKswOFZmk7CSwMUpyH2Io/PEM=;
 b=Ut6akW+QhzUy796UgUL/7ruS7n7zUvV6qP+6unR3SEG5SoyBNAUzS73d
 ENAICAxIXcCS4+YPAwRwg2VxytkMEwKRH5lZLROCfvIxoZMktkku8FzvR
 iihOhWr5JRzHG8wwrJI70n3wVnBcVU54Q3/PKIai4bHydJwynmLufMOli E=;
Subject: RE: [PATCH] ath10k: remove TX lock from ath10k_htt_tx_inc_pending
Thread-Topic: [PATCH] ath10k: remove TX lock from ath10k_htt_tx_inc_pending
Received: from ironmsg01-tai.qualcomm.com ([10.249.140.6])
 by alexa-out-tai-01.qualcomm.com with ESMTP; 26 Aug 2019 10:44:43 +0800
Received: from aptaiexm02a.ap.qualcomm.com ([10.249.150.11])
 by ironmsg01-tai.qualcomm.com with ESMTP/TLS/AES256-SHA;
 26 Aug 2019 10:44:39 +0800
Received: from aptaiexm02f.ap.qualcomm.com (10.249.150.16) by
 aptaiexm02a.ap.qualcomm.com (10.249.150.11) with Microsoft SMTP Server (TLS)
 id 15.0.1473.3; Mon, 26 Aug 2019 10:44:37 +0800
Received: from aptaiexm02f.ap.qualcomm.com ([fe80::4152:1436:e436:faa1]) by
 aptaiexm02f.ap.qualcomm.com ([fe80::4152:1436:e436:faa1%19]) with mapi id
 15.00.1473.005; Mon, 26 Aug 2019 10:44:37 +0800
From: Wen Gong <wgong@qti.qualcomm.com>
To: Erik Stromdahl <erik.stromdahl@gmail.com>, Kalle Valo
 <kvalo@qca.qualcomm.com>, "linux-wireless@vger.kernel.org"
 <linux-wireless@vger.kernel.org>, "ath10k@lists.infradead.org"
 <ath10k@lists.infradead.org>
Thread-Index: AQHVWoLUu0EcF57GtkCF/PdkQDEHWacMuQEQ
Date: Mon, 26 Aug 2019 02:44:37 +0000
Message-ID: <4cd30880ae754f5599e6b1a4c1ac6a74@aptaiexm02f.ap.qualcomm.com>
References: <20190824134857.4094-1-erik.stromdahl@gmail.com>
In-Reply-To: <20190824134857.4094-1-erik.stromdahl@gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-exchange-transport-fromentityheader: Hosted
x-originating-ip: [10.249.136.10]
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190825_194446_645025_D381965B 
X-CRM114-Status: GOOD (  18.49  )
X-Spam-Score: -2.4 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [103.229.16.226 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "ath10k" <ath10k-bounces@lists.infradead.org>
Errors-To: ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org

> -----Original Message-----
> From: ath10k <ath10k-bounces@lists.infradead.org> On Behalf Of Erik
> Stromdahl
> Sent: Saturday, August 24, 2019 9:49 PM
> To: Kalle Valo <kvalo@qca.qualcomm.com>; linux-wireless@vger.kernel.org;
> ath10k@lists.infradead.org
> Cc: Erik Stromdahl <erik.stromdahl@gmail.com>
> Subject: [EXT] [PATCH] ath10k: remove TX lock from
> ath10k_htt_tx_inc_pending
> 
> This commit removes the call to ath10k_mac_tx_lock() from
> ath10k_htt_tx_inc_pending() in case the high water mark is reached.
> 
> ath10k_mac_tx_lock() calls ieee80211_stop_queues() in order to stop
> mac80211 from pushing more TX data to the driver (this is the TX lock).
> 
> If a driver is trying to fetch an skb from a queue while the queue is
> stopped, ieee80211_tx_dequeue() will return NULL.
> 
> So, in ath10k_mac_tx_push_txq(), there is a risk that the call to
> ath10k_htt_tx_inc_pending() results in a stop of the mac80211 TX queues
> just before the skb is fetched.
> 
> This will cause ieee80211_tx_dequeue() to return NULL and
> ath10k_mac_tx_push_txq() to exit prematurely and return -ENOENT.
> Before the function returns ath10k_htt_tx_dec_pending() will be called.
> This call will re-enable the TX queues through ath10k_mac_tx_unlock().
> When ath10k_mac_tx_push_txq() has returned, the TX queue will be
> returned back to mac80211 with ieee80211_return_txq() without the skb
> being properly consumed.
> 
> Since the TX queues were re-enabled in the error exit path of
> ath10k_mac_tx_push_txq(), mac80211 can continue pushing data to the
> driver. If the hardware does not consume the data, the above mentioned
> case will be repeated over and over.
> 
> A case when the hardware is not able to transmit the data from the host
> is when a STA has been dis-associated from an AP and has not yet been
> able to re-associate. In this case there will be no TX_COMPL_INDs from
> the hardware, resulting in the TX counter not be decremented.
> 
> This phenomenon has been observed in both a real and a test setup.
> 
> In order to fix this, the actual TX locking (the call to
> ath10k_mac_tx_lock()) was removed from ath10k_htt_tx_inc_pending().
> Instead, ath10k_mac_tx_lock() is called separately after the skb has
> been fetched (after the call to ieee80211_tx_dequeue()). At this point
> it is OK to stop the queues.
Is this patch will impact throughput?
> 
> 
> _______________________________________________
> ath10k mailing list
> ath10k@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/ath10k

_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k

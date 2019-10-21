Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6FEFBDF7E3
	for <lists+ath10k@lfdr.de>; Tue, 22 Oct 2019 00:15:13 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+Umz/ZZA8waFWowrf0jMo4mHpOxHg+QEbpuUW3GoKio=; b=JCbxH4mXGOnCZT
	BF3DMVcA5M4gpuoxcXi0xiVkVVt+MVgZUfxBzLCbzZbINhTPTYcj90H4NQMv0sxbAJV8/scoOONL0
	3yRmV1d28HEMMT1gQFGXY7C1UVUIkySh8VxNNRepGV+aAhhC5hVZK7SyBHbM8gRCQE6Nj6y5w5CbR
	jUeEj9nB4ypxNVRSaWTjMcu2rYHXPLyqd16q0/s2dTx4BosZaUPtVWkOLMBd7OPrFfZiufOZZGAXw
	LAYp8Sta6kz6+KrfYJwWLUNiE9zavA850t43/4n1hHGtJz1uIRC5mKPvPGnbkZ2wLlllshagclNgo
	cdv1BnDMT8a1+c4LfWYw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iMfxF-00040c-TD; Mon, 21 Oct 2019 22:15:09 +0000
Received: from mga05.intel.com ([192.55.52.43])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iMfx4-0003ld-0D
 for ath10k@lists.infradead.org; Mon, 21 Oct 2019 22:14:59 +0000
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga105.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 21 Oct 2019 15:14:57 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.67,325,1566889200"; d="scan'208";a="196249108"
Received: from lkp-server01.sh.intel.com (HELO lkp-server01) ([10.239.97.150])
 by fmsmga008.fm.intel.com with ESMTP; 21 Oct 2019 15:14:55 -0700
Received: from kbuild by lkp-server01 with local (Exim 4.89)
 (envelope-from <lkp@intel.com>)
 id 1iMfx0-0003vx-Q4; Tue, 22 Oct 2019 06:14:54 +0800
Date: Tue, 22 Oct 2019 06:14:32 +0800
From: kbuild test robot <lkp@intel.com>
To: Toke =?iso-8859-1?Q?H=F8iland-J=F8rgensen?= <toke@redhat.com>
Subject: Re: [PATCH v4 2/4] mac80211: Import airtime calculation code from mt76
Message-ID: <201910220654.AzuMkFgk%lkp@intel.com>
References: <157148503639.2989444.8337290298332344733.stgit@toke.dk>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <157148503639.2989444.8337290298332344733.stgit@toke.dk>
X-Patchwork-Hint: ignore
User-Agent: NeoMutt/20170113 (1.7.2)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191021_151458_326081_87F68665 
X-CRM114-Status: GOOD (  12.20  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [192.55.52.43 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Kan Yan <kyan@google.com>, kbuild-all@lists.01.org,
 Rajkumar Manoharan <rmanohar@codeaurora.org>,
 Kevin Hayes <kevinhayes@google.com>, make-wifi-fast@lists.bufferbloat.net,
 linux-wireless@vger.kernel.org, ath10k@lists.infradead.org,
 John Crispin <john@phrozen.org>, Johannes Berg <johannes@sipsolutions.net>,
 Lorenzo Bianconi <lorenzo@kernel.org>, Felix Fietkau <nbd@nbd.name>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "ath10k" <ath10k-bounces@lists.infradead.org>
Errors-To: ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org

Hi "Toke,

I love your patch! Perhaps something to improve:

[auto build test WARNING on mac80211-next/master]
[cannot apply to v5.4-rc4 next-20191021]
[if your patch is applied to the wrong git tree, please drop us a note to help
improve the system. BTW, we also suggest to use '--base' option to specify the
base tree in git format-patch, please see https://stackoverflow.com/a/37406982]

url:    https://github.com/0day-ci/linux/commits/Toke-H-iland-J-rgensen/Add-Airtime-Queue-Limits-AQL-to-mac80211/20191021-234455
base:   https://git.kernel.org/pub/scm/linux/kernel/git/jberg/mac80211-next.git master
reproduce:
        # apt-get install sparse
        # sparse version: v0.6.1-dirty
        make ARCH=x86_64 allmodconfig
        make C=1 CF='-fdiagnostic-prefix -D__CHECK_ENDIAN__'

If you fix the issue, kindly add following tag
Reported-by: kbuild test robot <lkp@intel.com>


sparse warnings: (new ones prefixed by >>)

>> net/mac80211/airtime.c:211:5: sparse: sparse: symbol 'ieee80211_calc_rx_airtime' was not declared. Should it be static?
>> net/mac80211/airtime.c:282:5: sparse: sparse: symbol 'ieee80211_calc_tx_airtime_rate' was not declared. Should it be static?

Please review and possibly fold the followup patch.

---
0-DAY kernel test infrastructure                Open Source Technology Center
https://lists.01.org/pipermail/kbuild-all                   Intel Corporation

_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k

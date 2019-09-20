Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C52CEB8DDF
	for <lists+ath10k@lfdr.de>; Fri, 20 Sep 2019 11:37:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:To:From:Subject:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=TMjUcqLkIwNMP/lFvhCgyef0wfcdFrs4VpI1jwvAdXA=; b=DimfGOkMgO1z0K
	bM/Cxqai1Ci57iok09VpcULC6WitmbTb14uKpiJBc054JUDAGQOx3tLNFnvi4laqxxAVrgz26y3js
	swoml5mRVGE8ZdLm5mpIezGeCi1B592N9u678qlejZRqciwe3nJe1el8ItNwy/fwzAsONzggo/McT
	dnEvRLtLFD4/xQSzbwcXqL7lGn3oDG0r+HPOHLlFOcmZR3Sn6dis0I+JuUUNci47s6Xon7hNulTXm
	F6zbjhW0bU7m+jgLAJVFC+35dAbguslqukUZkui9TJLil3olC/raRPT7uWP4GNk0ueBPQwNHgpMzf
	2cTH2virgz/+Fc/fVWRA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iBFLx-0004ow-5t; Fri, 20 Sep 2019 09:37:25 +0000
Received: from alexa-out-tai-02.qualcomm.com ([103.229.16.227])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iBFLs-0004oP-TZ
 for ath10k@lists.infradead.org; Fri, 20 Sep 2019 09:37:22 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=qti.qualcomm.com; i=@qti.qualcomm.com; q=dns/txt;
 s=qcdkim; t=1568972240; x=1600508240;
 h=from:to:cc:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version:subject;
 bh=EjR88SkcwJWQCwJkrAGU5QpwuwVsApv848ZvrfCzvDU=;
 b=YbqxuMB+ImRrRENFxzS/5TAh8pZiQSff+O7kEoWi2AqHAHZ5SWQ4MChm
 z5uL0gRYM+N6KKW8TIZu1WbmcpPRrkgtx3DeYlqoCvd89agZ00ZVF5JUJ
 B1tcaz7oIkbiMZtbVPsDQI/gdlyZh9WH6rB4YoKcTrDd5nk+Eh1SUFHF2 8=;
Subject: RE: [PATCH v3] ath10k: support NET_DETECT WoWLAN feature
Thread-Topic: [PATCH v3] ath10k: support NET_DETECT WoWLAN feature
Received: from ironmsg02-tai.qualcomm.com ([10.249.140.7])
 by alexa-out-tai-02.qualcomm.com with ESMTP; 20 Sep 2019 17:37:18 +0800
Received: from aptaiexm02b.ap.qualcomm.com ([10.249.150.12])
 by ironmsg02-tai.qualcomm.com with ESMTP/TLS/AES256-SHA;
 20 Sep 2019 17:37:11 +0800
Received: from aptaiexm02f.ap.qualcomm.com (10.249.150.16) by
 aptaiexm02b.ap.qualcomm.com (10.249.150.12) with Microsoft SMTP Server (TLS)
 id 15.0.1473.3; Fri, 20 Sep 2019 17:37:10 +0800
Received: from aptaiexm02f.ap.qualcomm.com ([fe80::4152:1436:e436:faa1]) by
 aptaiexm02f.ap.qualcomm.com ([fe80::4152:1436:e436:faa1%19]) with mapi id
 15.00.1473.005; Fri, 20 Sep 2019 17:37:09 +0800
From: Wen Gong <wgong@qti.qualcomm.com>
To: "kvalo@codeaurora.org" <kvalo@codeaurora.org>
Thread-Index: AQHVb4WHGd4199NYPUebVxHu5lPNrac0M15w
Date: Fri, 20 Sep 2019 09:37:09 +0000
Message-ID: <29044fb6c3ba43af9a433aeb63f55e41@aptaiexm02f.ap.qualcomm.com>
References: <1534402113-14337-1-git-send-email-wgong@codeaurora.org>
 <20181114225910.GA220599@google.com>
 <CA+ASDXMh7vdfkA5jtJqWEU-g-4Ta5Xvy046zujyASZcESCGhAQ@mail.gmail.com>
 <87woe5aehr.fsf@kamboji.qca.qualcomm.com>
 <40854e84bd4b4a9699b60530b1c373ad@aptaiexm02f.ap.qualcomm.com>
 <87pnjvctjh.fsf@codeaurora.org>
In-Reply-To: <87pnjvctjh.fsf@codeaurora.org>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-exchange-transport-fromentityheader: Hosted
x-originating-ip: [10.249.136.10]
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190920_023721_227287_6298F990 
X-CRM114-Status: UNSURE (   9.26  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.4 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [103.229.16.227 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Brian Norris <briannorris@chromium.org>,
 linux-wireless <linux-wireless@vger.kernel.org>,
 Linux Kernel <linux-kernel@vger.kernel.org>,
 "ath10k@lists.infradead.org" <ath10k@lists.infradead.org>,
 Wen Gong <wgong@codeaurora.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "ath10k" <ath10k-bounces@lists.infradead.org>
Errors-To: ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org

> -----Original Message-----
> From: Kalle Valo <kvalo@codeaurora.org>
> Sent: Friday, September 20, 2019 3:32 PM
> To: Wen Gong <wgong@qti.qualcomm.com>
> Cc: Brian Norris <briannorris@chromium.org>; linux-wireless <linux-
> wireless@vger.kernel.org>; Linux Kernel <linux-kernel@vger.kernel.org>;
> ath10k@lists.infradead.org; Wen Gong <wgong@codeaurora.org>
> Subject: [EXT] Re: [PATCH v3] ath10k: support NET_DETECT WoWLAN feature
> 
> >> Wen, can you enable NL80211_FEATURE_SCAN_RANDOM_MAC_ADDR?
> >> Does firmware
> >> support that?
> >
> > Yes, I test again, it is enabled
> NL80211_FEATURE_SCAN_RANDOM_MAC_ADDR now.
> 
> Sorry, I'm not quite understanding your reply.
> 
> But I mixed up the flags. I meant that can we enable
> NL80211_FEATURE_SCAN_RANDOM_MAC_ADDR in ath10k? Does the
> firmware
> releases which have WMI_SERVICE_NLO support
> NL80211_FEATURE_SCAN_RANDOM_MAC_ADDR as well?
Kalle,
I tested with this firmware: https://github.com/kvalo/ath10k-firmware/blob/master/QCA6174/hw3.0/sdio-4.4.1/firmware-sdio-6.bin_WLAN.RMH.4.4.1-00017-QCARMSWPZ-2

In ath10k_mac_register, it has flag WMI_SERVICE_SPOOF_MAC_SUPPORT enabled.
	if (test_bit(WMI_SERVICE_SPOOF_MAC_SUPPORT, ar->wmi.svc_map)) {
		ar->hw->wiphy->features |=
			NL80211_FEATURE_SCAN_RANDOM_MAC_ADDR;
	}

In ath10k_wow_init, it has flag ATH10K_FW_FEATURE_WOWLAN_SUPPORT, WMI_SERVICE_WOW, WMI_SERVICE_NLO enabled.
int ath10k_wow_init(struct ath10k *ar)
{
	if (!test_bit(ATH10K_FW_FEATURE_WOWLAN_SUPPORT,
		      ar->running_fw->fw_file.fw_features))
		return 0;

	if (WARN_ON(!test_bit(WMI_SERVICE_WOW, ar->wmi.svc_map)))
		return -EINVAL;

	if (test_bit(WMI_SERVICE_NLO, ar->wmi.svc_map)) {
		ar->wow.wowlan_support.flags |= WIPHY_WOWLAN_NET_DETECT;
		ar->wow.wowlan_support.max_nd_match_sets = WMI_PNO_MAX_SUPP_NETWORKS;
	}
}
> 
> --
> Kalle Valo

_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k

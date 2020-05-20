Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9BBF11DAC66
	for <lists+ath10k@lfdr.de>; Wed, 20 May 2020 09:40:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=evZiVnu6XrmcD0HFevmEaMvCfFkXQrDg0W+VDajFCPU=; b=VRE5PNiUWhGvRis4g7a6PiYXY
	+vCAXgxQtHAf7Sx6KPvNUVmd5hJsa9fTggKa7XhuORoykv+PLWCQOWrizF7pma5DE4alEexL1sh8B
	bDXQm0VReHpDOLI/xQpiaPkSV1GEZFhTdBFap9v31paLxmyuDkiNEnJENSVfgU1Q8EPPSjRBgNz44
	ZcVxt+Te0D5rYtH76iF1x92uthz5CJNYehrjv6AfmAAWBjbOzKVDVToFiTUDvqVr+RGsrdE2Vzxgi
	Uh56OCyB1aYqTvRwVglJGhG1Wkj+l3121rsn8sCXfM7KgxosJLMO1Y8EhFUp4RCvXlnd6RMzWnn4M
	SvMwO9h3Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jbJKv-0008SQ-NG; Wed, 20 May 2020 07:40:21 +0000
Received: from mail.as201155.net ([185.84.6.188])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jbJKX-0005tj-UN
 for ath10k@lists.infradead.org; Wed, 20 May 2020 07:40:00 +0000
Received: from smtps.newmedia-net.de ([2a05:a1c0:0:de::167]:46313
 helo=webmail.newmedia-net.de)
 by mail.as201155.net with esmtps (TLSv1:DHE-RSA-AES256-SHA:256)
 (Exim 4.82_1-5b7a7c0-XX) (envelope-from <s.gottschall@dd-wrt.com>)
 id 1jbJKN-0007JS-3D; Wed, 20 May 2020 09:39:48 +0200
X-CTCH-RefID: str=0001.0A782F15.5EC4DE74.0002, ss=1, re=0.000, recu=0.000,
 reip=0.000, cl=1, cld=1, fgs=0
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=dd-wrt.com;
 s=mikd; 
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:MIME-Version:Date:Message-ID:From:References:Cc:To:Subject;
 bh=8FCzqHcLt/L7jZX37exb2DWH+feglGOXViUXkJqEpGs=; 
 b=roGH6fIx1Q/HesuRu3IIQxGpEZlav7c/TVVmx1ZB8gG1fH3w3GEhf99uWdyEtiIBYZsKpXH8lkd0Dl8PODbPEn2M5PQ4hYIkSQRvLqrK+hkj6u8XuUm0HfWT3Gq6JLhhC++eLK0lqEju5/VUzwtfFJZRuTBbVuhx8f51Af2z4KE=;
Subject: Re: [PATCH v13] ath10k: add LED and GPIO controlling support for
 various chipsets
To: Sven Eckelmann <sven@narfation.org>, ath10k@lists.infradead.org,
 John Crispin <john@phrozen.org>, Ansuel Smith <ansuelsmth@gmail.com>,
 openwrt-devel@lists.openwrt.org
References: <1523027875-5143-1-git-send-email-kvalo@codeaurora.org>
 <2468724.JaAZLprVu6@bentobox>
From: Sebastian Gottschall <s.gottschall@dd-wrt.com>
Message-ID: <b23e65cf-4be7-72db-7955-32eae196953e@dd-wrt.com>
Date: Wed, 20 May 2020 09:39:45 +0200
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:77.0) Gecko/20100101
 Thunderbird/77.0
MIME-Version: 1.0
In-Reply-To: <2468724.JaAZLprVu6@bentobox>
X-Received: from [2a01:7700:8040:4000:f846:4861:fc39:f688]
 by webmail.newmedia-net.de with esmtpa (Exim 4.72)
 (envelope-from <s.gottschall@dd-wrt.com>)
 id 1jbJGM-0005Rl-7P; Wed, 20 May 2020 09:35:38 +0200
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200520_003958_162270_B7D87899 
X-CRM114-Status: GOOD (  11.19  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Sebastian Gottschall <s.gottschall@newmedia-net.de>,
 linux-wireless@vger.kernel.org, Kalle Valo <kvalo@codeaurora.org>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "ath10k" <ath10k-bounces@lists.infradead.org>
Errors-To: ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org

this code is not in use in its original form for ipq4019.
i have seen that his patch is also dropped from ath.git but is still in 
use by openwrt.
could somone clarify the state here and why it was dropped?
the original patch i wrote does exclude the soc chipsets, but the patch 
was later reorganized and some part have been rewritten
so i'm not sure if it covers the scenario mentioned here, which i did 
take care of

Sebastian

Am 26.02.2019 um 10:16 schrieb Sven Eckelmann:
> On Friday, 6 April 2018 17:17:55 CET Kalle Valo wrote:
>> From: Sebastian Gottschall <s.gottschall@newmedia-net.de>
>>
>> Adds LED and GPIO Control support for 988x, 9887, 9888, 99x0, 9984 based
>> chipsets with on chipset connected led's using WMI Firmware API.  The LED
>> device will get available named as "ath10k-phyX" at sysfs and can be controlled
>> with various triggers.  adds also debugfs interface for gpio control.
>>
>> Signed-off-by: Sebastian Gottschall <s.gottschall@dd-wrt.com>
>> Reviewed-by: Steve deRosier <derosier@cal-sierra.com>
>> [kvalo: major reorg and cleanup]
>> Signed-off-by: Kalle Valo <kvalo@codeaurora.org>
>
> This patch was imported to OpenWrt in commit 61d57a2f88b9 ("mac80211: ath10k
> add leds support") and broke the 11s support for IPQ4019 and QCA4019 (5GHz)
> firmware versions 10.4-3.5.3-00053, 10.4-3.5.3-00057, 10.4-3.6-00140:
>
>      [  221.620803] ath10k_pci 0000:01:00.0: wmi command 36967 timeout, restarting hardware
>      [  221.744056] ieee80211 phy0: Hardware restart was requested
>      [  225.130829] ath10k_pci 0000:01:00.0: failed to receive control response completion, polling..
>      [  226.170824] ath10k_pci 0000:01:00.0: Service connect timeout
>      [  226.170871] ath10k_pci 0000:01:00.0: failed to connect htt (-110)
>      [  226.252248] ath10k_pci 0000:01:00.0: Could not init core: -110
>
> This was tested on an A62 with following wireless config:
>
>      config wifi-device 'radio0'
>              option type 'mac80211'
>              option channel '36'
>              option hwmode '11a'
>              option path 'soc/40000000.pci/pci0000:00/0000:00:00.0/0000:01:00.0'
>              option htmode 'VHT80'
>              option disabled '0'
>              option country US
>      
>      config wifi-device 'radio1'
>              option type 'mac80211'
>              option channel '11'
>              option hwmode '11g'
>              option path 'platform/soc/a000000.wifi'
>              option htmode 'HT20'
>              option disabled '0'
>              option country US
>      
>      config wifi-device 'radio2'
>              option type 'mac80211'
>              option channel '149'
>              option hwmode '11a'
>              option path 'platform/soc/a800000.wifi'
>              option htmode 'VHT80'
>              option disabled '0'
>              option country US
>      
>      config wifi-iface 'mesh0'
>          option device 'radio0'
>          option ifname 'mesh0'
>          option network 'nwi_mesh0'
>          option mode 'mesh'
>          option mesh_id 'TestMesh'
>          option mesh_fwding '1'
>          option encryption 'none'
>      
>      config wifi-iface 'mesh1'
>          option device 'radio1'
>          option ifname 'mesh1'
>          option network 'nwi_mesh1'
>          option mode 'mesh'
>          option mesh_id 'TestMesh'
>          option encryption 'none'
>      
>      
>      config wifi-iface 'mesh2'
>          option device 'radio2'
>          option ifname 'mesh2'
>          option network 'nwi_mesh2'
>          option mode 'mesh'
>          option mesh_id 'TestMesh'
>          option mesh_fwding '1'
>          option encryption 'none
>
> Kind regards,
> 	Sven

_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k

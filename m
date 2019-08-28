Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DCDF59F9A2
	for <lists+ath10k@lfdr.de>; Wed, 28 Aug 2019 07:00:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:To:From:Subject:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=S4NVBq/8W4X7N50Lx99okrhvjuZ8d70wtcClpRJWOgs=; b=qzNDxPOeYytiOK
	81JKNEmwe744bdvMjAWI+968DRfxMpATGJtj+KID50CDKFCjLJUI/rooZH/yodHD0aGaed6gGF3bu
	Qwn7o9Xh1dlztx3G5scdFkj2qg6LJTa+ibIhlByhWAOE8GAOVz9jrYON7qTZn76b7BSO5s+m7/hnd
	RnBD9WLXgiQPjrIrgK4zKM/PZXX2XQbJMtEvzN6zLPWh9ClFVFEJd6HSEKvuH4U/EDTXf4TNpRUan
	tus8tiQQo65Xq/uRoLorHi3Vnwgx4jSNeCplJxvRGZ+ZmxtvS+kACoYbzh5cVF5V+py+yAzoxgE2q
	mVCG14aZaqTizUcB//JA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i2q3o-0007FH-Kv; Wed, 28 Aug 2019 04:59:56 +0000
Received: from alexa-out-tai-01.qualcomm.com ([103.229.16.226])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i2q3j-0007Er-Ew
 for ath10k@lists.infradead.org; Wed, 28 Aug 2019 04:59:53 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=qti.qualcomm.com; i=@qti.qualcomm.com; q=dns/txt;
 s=qcdkim; t=1566968391; x=1598504391;
 h=from:to:cc:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version:subject;
 bh=w4KPaoYWDrgMXJycc8M6JvzivFxU31rwMM3DvliFfk8=;
 b=ourlO9R4DXi80tT5YanMQgZsNDvHkjZmatlpZtDwY4/pnq5FZ6yxtdSb
 vKPmbxCOWRBqcSM6mdHFd9Ip0gqUqxR+sSABTK+HX89sgqVMcJ9hEE7iO
 FTRkuUS6mQspF93g028XQMxG+T12wa6QTqeRvHosKR8wxTe6Se/LuFM+I A=;
Subject: RE: [PATCH] ath10k: add fw coredump for sdio when firmware assert
Thread-Topic: [PATCH] ath10k: add fw coredump for sdio when firmware assert
Received: from ironmsg02-tai.qualcomm.com ([10.249.140.7])
 by alexa-out-tai-01.qualcomm.com with ESMTP; 28 Aug 2019 12:59:48 +0800
Received: from aptaiexm02f.ap.qualcomm.com ([10.249.150.16])
 by ironmsg02-tai.qualcomm.com with ESMTP/TLS/AES256-SHA;
 28 Aug 2019 12:59:42 +0800
Received: from aptaiexm02f.ap.qualcomm.com (10.249.150.16) by
 aptaiexm02f.ap.qualcomm.com (10.249.150.16) with Microsoft SMTP Server (TLS)
 id 15.0.1473.3; Wed, 28 Aug 2019 12:59:40 +0800
Received: from aptaiexm02f.ap.qualcomm.com ([fe80::4152:1436:e436:faa1]) by
 aptaiexm02f.ap.qualcomm.com ([fe80::4152:1436:e436:faa1%19]) with mapi id
 15.00.1473.005; Wed, 28 Aug 2019 12:59:40 +0800
From: Wen Gong <wgong@qti.qualcomm.com>
To: Nicolas Boichat <drinkcat@chromium.org>, Wen Gong <wgong@codeaurora.org>
Thread-Index: AQHVXNAbtURsVnEXnU268W2eITmuOKcP+xkw
Date: Wed, 28 Aug 2019 04:59:40 +0000
Message-ID: <8f0f2930e12a4dcabb69c13affe89a31@aptaiexm02f.ap.qualcomm.com>
References: <1566371979-22730-1-git-send-email-wgong@codeaurora.org>
 <CANMq1KDGWh6Cc8akX_1g-n_fYe_2FHrpgnWf=sLxFnME7t5vBQ@mail.gmail.com>
In-Reply-To: <CANMq1KDGWh6Cc8akX_1g-n_fYe_2FHrpgnWf=sLxFnME7t5vBQ@mail.gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-exchange-transport-fromentityheader: Hosted
x-originating-ip: [10.249.136.10]
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190827_215951_772543_5F6D47ED 
X-CRM114-Status: GOOD (  24.48  )
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
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Brian Norris <briannorris@chromium.org>, "open list:NETWORKING DRIVERS
 \(WIRELESS\)" <linux-wireless@vger.kernel.org>,
 "ath10k@lists.infradead.org" <ath10k@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "ath10k" <ath10k-bounces@lists.infradead.org>
Errors-To: ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org

> -----Original Message-----
> From: ath10k <ath10k-bounces@lists.infradead.org> On Behalf Of Nicolas
> Boichat
> Sent: Tuesday, August 27, 2019 8:08 PM
> To: Wen Gong <wgong@codeaurora.org>
> Cc: Brian Norris <briannorris@chromium.org>; open list:NETWORKING
> DRIVERS (WIRELESS) <linux-wireless@vger.kernel.org>;
> ath10k@lists.infradead.org
> Subject: [EXT] Re: [PATCH] ath10k: add fw coredump for sdio when firmware
> assert
> 
> Just a few nits, this is a lot of code and I'll try to give it a second pass.
> 
> On Wed, Aug 21, 2019 at 3:20 PM Wen Gong <wgong@codeaurora.org>
> wrote:
> >
> > When firmware assert, it need coredump to analyze, this patch will
> > collect the register and memory info for sdio chip.
> >
> > The coredump configuration is different between PCIE and SDIO for
> > the same reversion, so this patch add bus type to distinguish PCIE
> > and SDIO chip for coredump.
> >
> > Tested with QCA6174 SDIO with firmware
> > WLAN.RMH.4.4.1-00007-QCARMSWP-1.
> >
> > Signed-off-by: Wen Gong <wgong@codeaurora.org>
> > ---
> >  drivers/net/wireless/ath/ath10k/bmi.c       |   1 +
> >  drivers/net/wireless/ath/ath10k/core.c      |   7 +-
> >  drivers/net/wireless/ath/ath10k/core.h      |   4 +-
> >  drivers/net/wireless/ath/ath10k/coredump.c  | 338
> +++++++++++++++++++++++++++-
> >  drivers/net/wireless/ath/ath10k/coredump.h  |   1 +
> >  drivers/net/wireless/ath/ath10k/hw.h        |   1 +
> >  drivers/net/wireless/ath/ath10k/sdio.c      | 335
> ++++++++++++++++++++++++++-
> >  drivers/net/wireless/ath/ath10k/targaddrs.h |  10 +
> >  8 files changed, 692 insertions(+), 5 deletions(-)
> >
> > diff --git a/drivers/net/wireless/ath/ath10k/bmi.c
> b/drivers/net/wireless/ath/ath10k/bmi.c
> > index 95dc4be..990fa4d 100644
> > --- a/drivers/net/wireless/ath/ath10k/bmi.c
> > +++ b/drivers/net/wireless/ath/ath10k/bmi.c
> > @@ -197,6 +197,7 @@ int ath10k_bmi_read_memory(struct ath10k *ar,
> >
> >         return 0;
> >  }
> > +EXPORT_SYMBOL(ath10k_bmi_read_memory);
> >
> >  int ath10k_bmi_write_soc_reg(struct ath10k *ar, u32 address, u32 reg_val)
> >  {
> > diff --git a/drivers/net/wireless/ath/ath10k/core.c
> b/drivers/net/wireless/ath/ath10k/core.c
> > index dc45d16..0ea4c36 100644
> > --- a/drivers/net/wireless/ath/ath10k/core.c
> > +++ b/drivers/net/wireless/ath/ath10k/core.c
> > @@ -33,7 +33,6 @@
> >  static bool skip_otp;
> >  static bool rawmode;
> >  static bool fw_diag_log;
> > -
> 
> Don't do whitespace changes (unless you're changing code in the area
> anyway).
Will remove this
> 
> >  unsigned long ath10k_coredump_mask =
> >  static int ath10k_init_configure_target(struct ath10k *ar)
> > @@ -1953,6 +1956,8 @@ static void ath10k_core_get_fw_name(struct
> ath10k *ar, char *fw_name,
> >                 scnprintf(fw_name, fw_name_len, "%s-%d.bin",
> >                           ATH10K_FW_FILE_BASE, fw_api);
> >                 break;
> > +       default:
> > +               break;
> 
> Why?
It is a error for build, so add it.
core.c:1815:10: error: enumeration value 'ATH10K_BUS_UNDEF' not handled in switch [-Werror,-Wswitch]
        switch (ar->hif.bus) {

> 
> >         }
> >  }
> >
> > diff --git a/drivers/net/wireless/ath/ath10k/core.h
> b/drivers/net/wireless/ath/ath10k/core.h
> > index 4d7db07..1b52a3c 100644
> > --- a/drivers/net/wireless/ath/ath10k/core.h
> > +++ b/drivers/net/wireless/ath/ath10k/core.h
> > @@ -97,7 +97,9 @@ static inline const char *ath10k_bus_str(enum
> ath10k_bus bus)
> >                 return "usb";
> >         case ATH10K_BUS_SNOC:
> >                 return "snoc";
> > -       }
> > +       default:
> > +               return "unknown";
> > +}
> 
> This change does not look very useful? Also the indentation is broken.
It is a error for build, so add it. same with last one
Will change indentation.
> 
> 
> >
> >         return "unknown";
> >  }
> > diff --git a/drivers/net/wireless/ath/ath10k/coredump.c
> b/drivers/net/wireless/ath/ath10k/coredump.c
> > index b6d2932..b287509 100644
> > --- a/drivers/net/wireless/ath/ath10k/coredump.c
> > +++ b/drivers/net/wireless/ath/ath10k/coredump.c
> > @@ -270,6 +270,277 @@
> >         {0x80010, 0x80020},
> >  };
> >
> > +static const struct ath10k_mem_section
> qca6174_hw30_sdio_register_sections[] = {
> > +       {0x800, 0x810},
> > +       {0x820, 0x82C},
> > +
> > +       /* EFUSE0,1,2 is disabled here
> > +        * because it's state may be reset
> 
> its state
Will change it
> 
> >  static const struct ath10k_mem_section qca6174_hw30_register_sections[]
> = {
> >         {0x800, 0x810},
> >         {0x820, 0x82C},
> > @@ -602,6 +873,59 @@
> >         },
> >  };
> >
> > +static const struct ath10k_mem_region
> qca6174_hw30_sdio_mem_regions[] = {
> > +       {
> > +               .type = ATH10K_MEM_REGION_TYPE_DRAM,
> > +               .start = 0x400000,
> > +               .len = 0xa8000,
> > +               .name = "DRAM",
> > +               .section_table = {
> > +               .sections = NULL,
> > +               .size = 0,
> 
> Indentation.
Will change it.
> 
> > +               },
> > +       },
> > +       {
> > +               .type = ATH10K_MEM_REGION_TYPE_AXI,
> > +               .start = 0xa0000,
> > +               .len = 0x18000,
> > +               .name = "AXI",
> > +               .section_table = {
> > +                       .sections = NULL,
> > +                       .size = 0,
> > +               },
> > +       },
> > +       {
> > +               .type = ATH10K_MEM_REGION_TYPE_IRAM1,
> > +               .start = 0x00980000,
> > +               .len = 0x00080000,
> > +               .name = "IRAM1",
> > +               .section_table = {
> > +               .sections = NULL,
> > +               .size = 0,
> 
> Indentation
Will change it.
> 
> > +               },
> > +       },
> > +       {
> > +               .type = ATH10K_MEM_REGION_TYPE_IRAM2,
> > +               .start = 0x00a00000,
> > +               .len = 0x00040000,
> > +               .name = "IRAM2",
> > +               .section_table = {
> > +               .sections = NULL,
> > +               .size = 0,
> 
> Indentation
Will change it.
> 
> >
> >  enum ath10k_bus {
> > +       ATH10K_BUS_UNDEF,
> 
> Maybe call this "_ANY", given that you use it to match any bus?
Yes, seems ANY is more reasonable
> 
> >         ATH10K_BUS_PCI,
> >         ATH10K_BUS_AHB,
> >         ATH10K_BUS_SDIO,
> 
> _______________________________________________
> ath10k mailing list
> ath10k@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/ath10k

_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k

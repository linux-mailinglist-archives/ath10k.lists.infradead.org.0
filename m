Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B60949E757
	for <lists+ath10k@lfdr.de>; Tue, 27 Aug 2019 14:08:09 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=q9QBJs2odGu/hmwRgNtLd9FBQZewunkWLMn+5Z83SdM=; b=kAnx530o7ylk5b
	GQYBuw1o8X8vUNtqJhLWP1y873CS4E/ypSOc1M0O5VP3G+nzklD4MUZ/bS4kxTa4A29ukJbkMPFiV
	q5KVEy3z0CpfAc3WMzrfDI5HDrwjGAyvJ7Cx7qkJlugY+YXQvk7wk1HcWUssuzG71rTh+IhUexQy8
	oPnjtg99vOLKC01yoTYZoFgKO6kFQT+R8nSvI9vCrezIIJdXFZnUe2gzqBHymsnx2dnkKrCgPMBep
	asfHMdVSdBbX65HurwpTyNjG0/qgdV2PIxCkGX3KyK2Ta4LkbOAmFvx/gUwe6blH0tcqhBZcefjbt
	Lf9nmmytI51Q8Lwol7lQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i2aGc-0000Kq-3G; Tue, 27 Aug 2019 12:08:06 +0000
Received: from mail-qt1-x842.google.com ([2607:f8b0:4864:20::842])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i2aGW-0000KT-85
 for ath10k@lists.infradead.org; Tue, 27 Aug 2019 12:08:03 +0000
Received: by mail-qt1-x842.google.com with SMTP id y26so21019494qto.4
 for <ath10k@lists.infradead.org>; Tue, 27 Aug 2019 05:07:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=yfm8eEnQK2W9O7UxShXChfBYxlXoJkpEEWjLXSGMJqA=;
 b=fl7AuKtr1dGkRpmDFI87MP2xaaewJB2AdmMchF1KfAuz8xYp37jGfkre1E8CRxjTHU
 e3p/j41Ncmtd5zcL/dbfclMsPAzyWJ21qnnxak42eVQr45Mlo1MQQpSvfB434Dq3OjVG
 08ZCVrRYiYzcDaIMnsJjFb176u7SdTkzQ1UNg=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=yfm8eEnQK2W9O7UxShXChfBYxlXoJkpEEWjLXSGMJqA=;
 b=DsuF0/9NV+dMHfdk5vxuSkCb0M/KIqXFq1FBltDLW6f1fhMqsxuhM+qtaMJ40MkK9c
 THJNpHFlOlFihvp8Nm0NTx2X02ljviymq0V5kEqzijEdhFHsKZdJcO/yFKd6WdQhp6h0
 /somHcfNHlVH7vn5IhRDMFT7aAZuASi6gfmh/9ooFw8k2m0udwjGk3fcXDi6ZdQeL1gO
 8DgUVfDefR5Dr1Hvc4PptU1dJTCL8WxjYxdyrgbEiQAPEe9dNCRkyvH/CwHi5RvD5mUd
 bDiCvuzUSGqnMXyvfaOfMqzDDFBNzDhCNMPY3mNl43q33H+dZ93d/SseEt8bPPKtZh6V
 8Lqg==
X-Gm-Message-State: APjAAAWeCbkUE7tDHmdEnrD9egVCLOTfKRslTvWJ2wAALSB2hYFwmmHe
 2xcILvXhVssOjjcaOuwVpdRCb4+S4DwP/9t0m1L4IA==
X-Google-Smtp-Source: APXvYqzpSLOltmBanCxPf/H0tocCakHGI9W/TG761Z9g8ObXm3d5H78F86KBngeg6OiJVT5MsvX+MFFplIF34W0aWOc=
X-Received: by 2002:ac8:2c5c:: with SMTP id e28mr22880139qta.159.1566907678613; 
 Tue, 27 Aug 2019 05:07:58 -0700 (PDT)
MIME-Version: 1.0
References: <1566371979-22730-1-git-send-email-wgong@codeaurora.org>
In-Reply-To: <1566371979-22730-1-git-send-email-wgong@codeaurora.org>
From: Nicolas Boichat <drinkcat@chromium.org>
Date: Tue, 27 Aug 2019 20:07:47 +0800
Message-ID: <CANMq1KDGWh6Cc8akX_1g-n_fYe_2FHrpgnWf=sLxFnME7t5vBQ@mail.gmail.com>
Subject: Re: [PATCH] ath10k: add fw coredump for sdio when firmware assert
To: Wen Gong <wgong@codeaurora.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190827_050800_348532_464E69D0 
X-CRM114-Status: GOOD (  20.80  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:842 listed in]
 [list.dnswl.org]
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
 "open list:NETWORKING DRIVERS \(WIRELESS\)"
 <linux-wireless@vger.kernel.org>, ath10k@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "ath10k" <ath10k-bounces@lists.infradead.org>
Errors-To: ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org

Just a few nits, this is a lot of code and I'll try to give it a second pass.

On Wed, Aug 21, 2019 at 3:20 PM Wen Gong <wgong@codeaurora.org> wrote:
>
> When firmware assert, it need coredump to analyze, this patch will
> collect the register and memory info for sdio chip.
>
> The coredump configuration is different between PCIE and SDIO for
> the same reversion, so this patch add bus type to distinguish PCIE
> and SDIO chip for coredump.
>
> Tested with QCA6174 SDIO with firmware
> WLAN.RMH.4.4.1-00007-QCARMSWP-1.
>
> Signed-off-by: Wen Gong <wgong@codeaurora.org>
> ---
>  drivers/net/wireless/ath/ath10k/bmi.c       |   1 +
>  drivers/net/wireless/ath/ath10k/core.c      |   7 +-
>  drivers/net/wireless/ath/ath10k/core.h      |   4 +-
>  drivers/net/wireless/ath/ath10k/coredump.c  | 338 +++++++++++++++++++++++++++-
>  drivers/net/wireless/ath/ath10k/coredump.h  |   1 +
>  drivers/net/wireless/ath/ath10k/hw.h        |   1 +
>  drivers/net/wireless/ath/ath10k/sdio.c      | 335 ++++++++++++++++++++++++++-
>  drivers/net/wireless/ath/ath10k/targaddrs.h |  10 +
>  8 files changed, 692 insertions(+), 5 deletions(-)
>
> diff --git a/drivers/net/wireless/ath/ath10k/bmi.c b/drivers/net/wireless/ath/ath10k/bmi.c
> index 95dc4be..990fa4d 100644
> --- a/drivers/net/wireless/ath/ath10k/bmi.c
> +++ b/drivers/net/wireless/ath/ath10k/bmi.c
> @@ -197,6 +197,7 @@ int ath10k_bmi_read_memory(struct ath10k *ar,
>
>         return 0;
>  }
> +EXPORT_SYMBOL(ath10k_bmi_read_memory);
>
>  int ath10k_bmi_write_soc_reg(struct ath10k *ar, u32 address, u32 reg_val)
>  {
> diff --git a/drivers/net/wireless/ath/ath10k/core.c b/drivers/net/wireless/ath/ath10k/core.c
> index dc45d16..0ea4c36 100644
> --- a/drivers/net/wireless/ath/ath10k/core.c
> +++ b/drivers/net/wireless/ath/ath10k/core.c
> @@ -33,7 +33,6 @@
>  static bool skip_otp;
>  static bool rawmode;
>  static bool fw_diag_log;
> -

Don't do whitespace changes (unless you're changing code in the area anyway).

>  unsigned long ath10k_coredump_mask = BIT(ATH10K_FW_CRASH_DUMP_REGISTERS) |
>                                      BIT(ATH10K_FW_CRASH_DUMP_CE_DATA);
>
> @@ -708,6 +707,10 @@ static void ath10k_init_sdio(struct ath10k *ar, enum ath10k_firmware_mode mode)
>         ath10k_bmi_read32(ar, hi_option_flag, &param);
>         param |= HI_OPTION_DISABLE_DBGLOG;
>         ath10k_bmi_write32(ar, hi_option_flag, param);
> +
> +       ath10k_bmi_read32(ar, hi_option_flag2, &param);
> +       param |= HI_OPTION_SDIO_CRASH_DUMP_ENHANCEMENT_HOST;
> +       ath10k_bmi_write32(ar, hi_option_flag2, param);
>  }
>
>  static int ath10k_init_configure_target(struct ath10k *ar)
> @@ -1953,6 +1956,8 @@ static void ath10k_core_get_fw_name(struct ath10k *ar, char *fw_name,
>                 scnprintf(fw_name, fw_name_len, "%s-%d.bin",
>                           ATH10K_FW_FILE_BASE, fw_api);
>                 break;
> +       default:
> +               break;

Why?

>         }
>  }
>
> diff --git a/drivers/net/wireless/ath/ath10k/core.h b/drivers/net/wireless/ath/ath10k/core.h
> index 4d7db07..1b52a3c 100644
> --- a/drivers/net/wireless/ath/ath10k/core.h
> +++ b/drivers/net/wireless/ath/ath10k/core.h
> @@ -97,7 +97,9 @@ static inline const char *ath10k_bus_str(enum ath10k_bus bus)
>                 return "usb";
>         case ATH10K_BUS_SNOC:
>                 return "snoc";
> -       }
> +       default:
> +               return "unknown";
> +}

This change does not look very useful? Also the indentation is broken.


>
>         return "unknown";
>  }
> diff --git a/drivers/net/wireless/ath/ath10k/coredump.c b/drivers/net/wireless/ath/ath10k/coredump.c
> index b6d2932..b287509 100644
> --- a/drivers/net/wireless/ath/ath10k/coredump.c
> +++ b/drivers/net/wireless/ath/ath10k/coredump.c
> @@ -270,6 +270,277 @@
>         {0x80010, 0x80020},
>  };
>
> +static const struct ath10k_mem_section qca6174_hw30_sdio_register_sections[] = {
> +       {0x800, 0x810},
> +       {0x820, 0x82C},
> +       {0x830, 0x8F4},
> +       {0x90C, 0x91C},
> +       {0xA14, 0xA18},
> +       {0xA84, 0xA94},
> +       {0xAA8, 0xAD4},
> +       {0xADC, 0xB40},
> +       {0x1000, 0x10A4},
> +       {0x10BC, 0x111C},
> +       {0x1134, 0x1138},
> +       {0x1144, 0x114C},
> +       {0x1150, 0x115C},
> +       {0x1160, 0x1178},
> +       {0x1240, 0x1260},
> +       {0x2000, 0x207C},
> +       {0x3000, 0x3014},
> +       {0x4000, 0x4014},
> +       {0x5000, 0x5124},
> +       {0x6000, 0x6040},
> +       {0x6080, 0x60CC},
> +       {0x6100, 0x611C},
> +       {0x6140, 0x61D8},
> +       {0x6200, 0x6238},
> +       {0x6240, 0x628C},
> +       {0x62C0, 0x62EC},
> +       {0x6380, 0x63E8},
> +       {0x6400, 0x6440},
> +       {0x6480, 0x64CC},
> +       {0x6500, 0x651C},
> +       {0x6540, 0x6580},
> +       {0x6600, 0x6638},
> +       {0x6640, 0x668C},
> +       {0x66C0, 0x66EC},
> +       {0x6780, 0x67E8},
> +       {0x7080, 0x708C},
> +       {0x70C0, 0x70C8},
> +       {0x7400, 0x741C},
> +       {0x7440, 0x7454},
> +       {0x7800, 0x7818},
> +       {0x8010, 0x8060},
> +       {0x8080, 0x8084},
> +       {0x80A0, 0x80A4},
> +       {0x80C0, 0x80C4},
> +       {0x80E0, 0x80ec},
> +       {0x8110, 0x8128},
> +       {0x9000, 0x9004},
> +       {0xF000, 0xF0E0},
> +       {0xF140, 0xF190},
> +       {0xF250, 0xF25C},
> +       {0xF260, 0xF268},
> +       {0xF26C, 0xF2A8},
> +       {0x10008, 0x1000C},
> +       {0x10014, 0x10018},
> +       {0x1001C, 0x10020},
> +       {0x10024, 0x10028},
> +       {0x10030, 0x10034},
> +       {0x10040, 0x10054},
> +       {0x10058, 0x1007C},
> +       {0x10080, 0x100C4},
> +       {0x100C8, 0x10114},
> +       {0x1012C, 0x10130},
> +       {0x10138, 0x10144},
> +       {0x10200, 0x10220},
> +       {0x10230, 0x10250},
> +       {0x10260, 0x10280},
> +       {0x10290, 0x102B0},
> +       {0x102C0, 0x102DC},
> +       {0x102E0, 0x102F4},
> +       {0x102FC, 0x1037C},
> +       {0x10380, 0x10390},
> +       {0x10800, 0x10828},
> +       {0x10840, 0x10844},
> +       {0x10880, 0x10884},
> +       {0x108C0, 0x108E8},
> +       {0x10900, 0x10928},
> +       {0x10940, 0x10944},
> +       {0x10980, 0x10984},
> +       {0x109C0, 0x109E8},
> +       {0x10A00, 0x10A28},
> +       {0x10A40, 0x10A50},
> +       {0x11000, 0x11028},
> +       {0x11030, 0x11034},
> +       {0x11038, 0x11068},
> +       {0x11070, 0x11074},
> +       {0x11078, 0x110A8},
> +       {0x110B0, 0x110B4},
> +       {0x110B8, 0x110E8},
> +       {0x110F0, 0x110F4},
> +       {0x110F8, 0x11128},
> +       {0x11138, 0x11144},
> +       {0x11178, 0x11180},
> +       {0x111B8, 0x111C0},
> +       {0x111F8, 0x11200},
> +       {0x11238, 0x1123C},
> +       {0x11270, 0x11274},
> +       {0x11278, 0x1127C},
> +       {0x112B0, 0x112B4},
> +       {0x112B8, 0x112BC},
> +       {0x112F0, 0x112F4},
> +       {0x112F8, 0x112FC},
> +       {0x11338, 0x1133C},
> +       {0x11378, 0x1137C},
> +       {0x113B8, 0x113BC},
> +       {0x113F8, 0x113FC},
> +       {0x11438, 0x11440},
> +       {0x11478, 0x11480},
> +       {0x114B8, 0x114BC},
> +       {0x114F8, 0x114FC},
> +       {0x11538, 0x1153C},
> +       {0x11578, 0x1157C},
> +       {0x115B8, 0x115BC},
> +       {0x115F8, 0x115FC},
> +       {0x11638, 0x1163C},
> +       {0x11678, 0x1167C},
> +       {0x116B8, 0x116BC},
> +       {0x116F8, 0x116FC},
> +       {0x11738, 0x1173C},
> +       {0x11778, 0x1177C},
> +       {0x117B8, 0x117BC},
> +       {0x117F8, 0x117FC},
> +       {0x17000, 0x1701C},
> +       {0x17020, 0x170AC},
> +       {0x18000, 0x18050},
> +       {0x18054, 0x18074},
> +       {0x18080, 0x180D4},
> +       {0x180DC, 0x18104},
> +       {0x18108, 0x1813C},
> +       {0x18144, 0x18148},
> +       {0x18168, 0x18174},
> +       {0x18178, 0x18180},
> +       {0x181C8, 0x181E0},
> +       {0x181E4, 0x181E8},
> +       {0x181EC, 0x1820C},
> +       {0x1825C, 0x18280},
> +       {0x18284, 0x18290},
> +       {0x18294, 0x182A0},
> +       {0x18300, 0x18304},
> +       {0x18314, 0x18320},
> +       {0x18328, 0x18350},
> +       {0x1835C, 0x1836C},
> +       {0x18370, 0x18390},
> +       {0x18398, 0x183AC},
> +       {0x183BC, 0x183D8},
> +       {0x183DC, 0x183F4},
> +       {0x18400, 0x186F4},
> +       {0x186F8, 0x1871C},
> +       {0x18720, 0x18790},
> +       {0x19800, 0x19830},
> +       {0x19834, 0x19840},
> +       {0x19880, 0x1989C},
> +       {0x198A4, 0x198B0},
> +       {0x198BC, 0x19900},
> +       {0x19C00, 0x19C88},
> +       {0x19D00, 0x19D20},
> +       {0x19E00, 0x19E7C},
> +       {0x19E80, 0x19E94},
> +       {0x19E98, 0x19EAC},
> +       {0x19EB0, 0x19EBC},
> +       {0x19F70, 0x19F74},
> +       {0x19F80, 0x19F8C},
> +       {0x19FA0, 0x19FB4},
> +       {0x19FC0, 0x19FD8},
> +       {0x1A000, 0x1A200},
> +       {0x1A204, 0x1A210},
> +       {0x1A228, 0x1A22C},
> +       {0x1A230, 0x1A248},
> +       {0x1A250, 0x1A270},
> +       {0x1A280, 0x1A290},
> +       {0x1A2A0, 0x1A2A4},
> +       {0x1A2C0, 0x1A2EC},
> +       {0x1A300, 0x1A3BC},
> +       {0x1A3F0, 0x1A3F4},
> +       {0x1A3F8, 0x1A434},
> +       {0x1A438, 0x1A444},
> +       {0x1A448, 0x1A468},
> +       {0x1A580, 0x1A58C},
> +       {0x1A644, 0x1A654},
> +       {0x1A670, 0x1A698},
> +       {0x1A6AC, 0x1A6B0},
> +       {0x1A6D0, 0x1A6D4},
> +       {0x1A6EC, 0x1A70C},
> +       {0x1A710, 0x1A738},
> +       {0x1A7C0, 0x1A7D0},
> +       {0x1A7D4, 0x1A7D8},
> +       {0x1A7DC, 0x1A7E4},
> +       {0x1A7F0, 0x1A7F8},
> +       {0x1A888, 0x1A89C},
> +       {0x1A8A8, 0x1A8AC},
> +       {0x1A8C0, 0x1A8DC},
> +       {0x1A8F0, 0x1A8FC},
> +       {0x1AE04, 0x1AE08},
> +       {0x1AE18, 0x1AE24},
> +       {0x1AF80, 0x1AF8C},
> +       {0x1AFA0, 0x1AFB4},
> +       {0x1B000, 0x1B200},
> +       {0x1B284, 0x1B288},
> +       {0x1B2D0, 0x1B2D8},
> +       {0x1B2DC, 0x1B2EC},
> +       {0x1B300, 0x1B340},
> +       {0x1B374, 0x1B378},
> +       {0x1B380, 0x1B384},
> +       {0x1B388, 0x1B38C},
> +       {0x1B404, 0x1B408},
> +       {0x1B420, 0x1B428},
> +       {0x1B440, 0x1B444},
> +       {0x1B448, 0x1B44C},
> +       {0x1B450, 0x1B458},
> +       {0x1B45C, 0x1B468},
> +       {0x1B584, 0x1B58C},
> +       {0x1B68C, 0x1B690},
> +       {0x1B6AC, 0x1B6B0},
> +       {0x1B7F0, 0x1B7F8},
> +       {0x1C800, 0x1CC00},
> +       {0x1CE00, 0x1CE04},
> +       {0x1CF80, 0x1CF84},
> +       {0x1D200, 0x1D800},
> +       {0x1E000, 0x20014},
> +       {0x20100, 0x20124},
> +       {0x21400, 0x217A8},
> +       {0x21800, 0x21BA8},
> +       {0x21C00, 0x21FA8},
> +       {0x22000, 0x223A8},
> +       {0x22400, 0x227A8},
> +       {0x22800, 0x22BA8},
> +       {0x22C00, 0x22FA8},
> +       {0x23000, 0x233A8},
> +       {0x24000, 0x24034},
> +
> +       /* EFUSE0,1,2 is disabled here
> +        * because it's state may be reset

its state

> +        *
> +        * {0x24800, 0x24804},
> +        * {0x25000, 0x25004},
> +        * {0x25800, 0x25804},
> +        */
> +
> +       {0x26000, 0x26064},
> +       {0x27000, 0x27024},
> +       {0x34000, 0x3400C},
> +       {0x34400, 0x3445C},
> +       {0x34800, 0x3485C},
> +       {0x34C00, 0x34C5C},
> +       {0x35000, 0x3505C},
> +       {0x35400, 0x3545C},
> +       {0x35800, 0x3585C},
> +       {0x35C00, 0x35C5C},
> +       {0x36000, 0x3605C},
> +       {0x38000, 0x38064},
> +       {0x38070, 0x380E0},
> +       {0x3A000, 0x3A074},
> +
> +       /* DBI windows is skipped here, it can be only accessed when pcie
> +        * is active (not in reset) and CORE_CTRL_PCIE_LTSSM_EN = 0 &&
> +        * PCIE_CTRL_APP_LTSSM_ENALBE=0.
> +        * {0x3C000 , 0x3C004},
> +        */
> +
> +       {0x40000, 0x400A4},
> +
> +       /* SI register is skiped here.
> +        * Because it will cause bus hang
> +        *
> +        * {0x50000, 0x50018},
> +        */
> +
> +       {0x80000, 0x8000C},
> +       {0x80010, 0x80020},
> +};
> +
>  static const struct ath10k_mem_section qca6174_hw30_register_sections[] = {
>         {0x800, 0x810},
>         {0x820, 0x82C},
> @@ -602,6 +873,59 @@
>         },
>  };
>
> +static const struct ath10k_mem_region qca6174_hw30_sdio_mem_regions[] = {
> +       {
> +               .type = ATH10K_MEM_REGION_TYPE_DRAM,
> +               .start = 0x400000,
> +               .len = 0xa8000,
> +               .name = "DRAM",
> +               .section_table = {
> +               .sections = NULL,
> +               .size = 0,

Indentation.

> +               },
> +       },
> +       {
> +               .type = ATH10K_MEM_REGION_TYPE_AXI,
> +               .start = 0xa0000,
> +               .len = 0x18000,
> +               .name = "AXI",
> +               .section_table = {
> +                       .sections = NULL,
> +                       .size = 0,
> +               },
> +       },
> +       {
> +               .type = ATH10K_MEM_REGION_TYPE_IRAM1,
> +               .start = 0x00980000,
> +               .len = 0x00080000,
> +               .name = "IRAM1",
> +               .section_table = {
> +               .sections = NULL,
> +               .size = 0,

Indentation

> +               },
> +       },
> +       {
> +               .type = ATH10K_MEM_REGION_TYPE_IRAM2,
> +               .start = 0x00a00000,
> +               .len = 0x00040000,
> +               .name = "IRAM2",
> +               .section_table = {
> +               .sections = NULL,
> +               .size = 0,

Indentation

> +               },
> +       },
> +       {
> +               .type = ATH10K_MEM_REGION_TYPE_REG,
> +               .start = 0x800,
> +               .len = 0x80020 - 0x800,
> +               .name = "REG_TOTAL",
> +               .section_table = {
> +                       .sections = qca6174_hw30_sdio_register_sections,
> +                       .size = ARRAY_SIZE(qca6174_hw30_sdio_register_sections),
> +               },
> +       },
> +};
> +
>  static const struct ath10k_mem_region qca6174_hw30_mem_regions[] = {
>         {
>                 .type = ATH10K_MEM_REGION_TYPE_DRAM,
> @@ -995,12 +1319,22 @@
>         {
>                 .hw_id = QCA6174_HW_3_2_VERSION,
>                 .hw_rev = ATH10K_HW_QCA6174,
> +               .bus = ATH10K_BUS_PCI,
>                 .region_table = {
>                         .regions = qca6174_hw30_mem_regions,
>                         .size = ARRAY_SIZE(qca6174_hw30_mem_regions),
>                 },
>         },
>         {
> +               .hw_id = QCA6174_HW_3_2_VERSION,
> +               .hw_rev = ATH10K_HW_QCA6174,
> +               .bus = ATH10K_BUS_SDIO,
> +               .region_table = {
> +                       .regions = qca6174_hw30_sdio_mem_regions,
> +                       .size = ARRAY_SIZE(qca6174_hw30_sdio_mem_regions),
> +               },
> +       },
> +       {
>                 .hw_id = QCA9377_HW_1_1_DEV_VERSION,
>                 .hw_rev = ATH10K_HW_QCA9377,
>                 .region_table = {
> @@ -1090,7 +1424,9 @@ const struct ath10k_hw_mem_layout *ath10k_coredump_get_mem_layout(struct ath10k
>
>         for (i = 0; i < ARRAY_SIZE(hw_mem_layouts); i++) {
>                 if (ar->target_version == hw_mem_layouts[i].hw_id &&
> -                   ar->hw_rev == hw_mem_layouts[i].hw_rev)
> +                   ar->hw_rev == hw_mem_layouts[i].hw_rev &&
> +                   (hw_mem_layouts[i].bus == ATH10K_BUS_UNDEF ||
> +                    hw_mem_layouts[i].bus == ar->hif.bus))
>                         return &hw_mem_layouts[i];
>         }
>
> diff --git a/drivers/net/wireless/ath/ath10k/coredump.h b/drivers/net/wireless/ath/ath10k/coredump.h
> index 09de419..b191746 100644
> --- a/drivers/net/wireless/ath/ath10k/coredump.h
> +++ b/drivers/net/wireless/ath/ath10k/coredump.h
> @@ -155,6 +155,7 @@ struct ath10k_mem_region {
>  struct ath10k_hw_mem_layout {
>         u32 hw_id;
>         u32 hw_rev;
> +       enum ath10k_bus bus;
>
>         struct {
>                 const struct ath10k_mem_region *regions;
> diff --git a/drivers/net/wireless/ath/ath10k/hw.h b/drivers/net/wireless/ath/ath10k/hw.h
> index 2ae57c1..d2cfd29 100644
> --- a/drivers/net/wireless/ath/ath10k/hw.h
> +++ b/drivers/net/wireless/ath/ath10k/hw.h
> @@ -11,6 +11,7 @@
>  #include "targaddrs.h"
>
>  enum ath10k_bus {
> +       ATH10K_BUS_UNDEF,

Maybe call this "_ANY", given that you use it to match any bus?

>         ATH10K_BUS_PCI,
>         ATH10K_BUS_AHB,
>         ATH10K_BUS_SDIO,
> diff --git a/drivers/net/wireless/ath/ath10k/sdio.c b/drivers/net/wireless/ath/ath10k/sdio.c
> index 8ed4fbd..cb75463 100644
> --- a/drivers/net/wireless/ath/ath10k/sdio.c
> +++ b/drivers/net/wireless/ath/ath10k/sdio.c
> @@ -23,6 +23,9 @@
>  #include "targaddrs.h"
>  #include "trace.h"
>  #include "sdio.h"
> +#include "coredump.h"
> +
> +void ath10k_sdio_fw_crashed_dump(struct ath10k *ar);
>
>  /* inlined helper functions */
>
> @@ -860,8 +863,7 @@ static int ath10k_sdio_mbox_proc_cpu_intr(struct ath10k *ar)
>  out:
>         mutex_unlock(&irq_data->mtx);
>         if (cpu_int_status & MBOX_CPU_STATUS_ENABLE_ASSERT_MASK) {
> -               ath10k_err(ar, "firmware crashed!\n");
> -               queue_work(ar->workqueue, &ar->restart_work);
> +               ath10k_sdio_fw_crashed_dump(ar);
>         }
>         return ret;
>  }
> @@ -1967,6 +1969,335 @@ static SIMPLE_DEV_PM_OPS(ath10k_sdio_pm_ops, ath10k_sdio_pm_suspend,
>
>  #endif /* CONFIG_PM_SLEEP */
>
> +static int ath10k_sdio_read_host_interest_value(struct ath10k *ar,
> +                                               u32 item_offset,
> +                                               u32 *val)
> +{
> +       u32 addr;
> +       int ret;
> +
> +       addr = host_interest_item_address(item_offset);
> +
> +       ret = ath10k_sdio_hif_diag_read32(ar, addr, val);
> +
> +       if (ret)
> +               ath10k_warn(ar, "unable to read host interest offset %d value\n",
> +                           item_offset);
> +
> +       return ret;
> +}
> +
> +static int ath10k_sdio_read_mem(struct ath10k *ar, u32 address, void *buf,
> +                               u32 buf_len)
> +{
> +       u32 val;
> +       int i, ret;
> +
> +       for (i = 0; i < buf_len; i += 4) {
> +               ret = ath10k_sdio_hif_diag_read32(ar, address + i, &val);
> +               if (ret) {
> +                       ath10k_warn(ar, "unable to read mem %d value\n", address + i);
> +                       break;
> +               }
> +               memcpy(buf + i, &val, 4);
> +       }
> +
> +       return ret;
> +}
> +
> +void ath10k_sdio_check_fw_reg(struct ath10k *ar, u32 *fast_dump)
> +{
> +       int ret = 0;
> +       u32 param;
> +
> +       ret = ath10k_sdio_read_host_interest_value(ar, HI_ITEM(hi_option_flag2), &param);
> +
> +       *fast_dump = ((param & HI_OPTION_SDIO_CRASH_DUMP_ENHANCEMENT_FW)
> +                            == HI_OPTION_SDIO_CRASH_DUMP_ENHANCEMENT_FW);
> +
> +       ath10k_err(ar, "check fw reg : %x\n", param);
> +}
> +
> +static void ath10k_sdio_dump_registers(struct ath10k *ar,
> +                                      struct ath10k_fw_crash_data *crash_data,
> +                                      u32 fast_dump)
> +{
> +       u32 reg_dump_values[REG_DUMP_COUNT_QCA988X] = {};
> +       int i, ret;
> +       u32 reg_dump_area;
> +
> +       ret = ath10k_sdio_read_host_interest_value(ar, HI_ITEM(hi_failure_state),
> +                                                  &reg_dump_area);
> +       if (ret) {
> +               ath10k_err(ar, "failed to read firmware dump area: %d\n", ret);
> +               return;
> +       }
> +
> +       if (fast_dump)
> +               ret = ath10k_bmi_read_memory(ar, reg_dump_area, reg_dump_values,
> +                                            sizeof(reg_dump_values));
> +       else
> +               ret = ath10k_sdio_read_mem(ar, reg_dump_area, reg_dump_values,
> +                                          sizeof(reg_dump_values));
> +
> +       if (ret) {
> +               ath10k_err(ar, "failed to read firmware dump value: %d\n", ret);
> +               return;
> +       }
> +
> +       ath10k_err(ar, "firmware register dump:\n");
> +       for (i = 0; i < ARRAY_SIZE(reg_dump_values); i += 4)
> +               ath10k_err(ar, "[%02d]: 0x%08X 0x%08X 0x%08X 0x%08X\n",
> +                          i,
> +                          reg_dump_values[i],
> +                          reg_dump_values[i + 1],
> +                          reg_dump_values[i + 2],
> +                          reg_dump_values[i + 3]);
> +
> +       if (!crash_data)
> +               return;
> +
> +       for (i = 0; i < ARRAY_SIZE(reg_dump_values); i++)
> +               crash_data->registers[i] = __cpu_to_le32(reg_dump_values[i]);
> +}
> +
> +static int ath10k_sdio_dump_memory_section(struct ath10k *ar,
> +                                          const struct ath10k_mem_region *mem_region,
> +                                          u8 *buf, size_t buf_len)
> +{
> +       const struct ath10k_mem_section *cur_section, *next_section;
> +       unsigned int count, section_size, skip_size;
> +       int ret, i, j;
> +
> +       if (!mem_region || !buf)
> +               return 0;
> +
> +       cur_section = &mem_region->section_table.sections[0];
> +
> +       if (mem_region->start > cur_section->start) {
> +               ath10k_warn(ar, "incorrect memdump region 0x%x with section start address 0x%x.\n",
> +                           mem_region->start, cur_section->start);
> +               return 0;
> +       }
> +
> +       skip_size = cur_section->start - mem_region->start;
> +
> +       /* fill the gap between the first register section and register
> +        * start address
> +        */
> +       for (i = 0; i < skip_size; i++) {
> +               *buf = ATH10K_MAGIC_NOT_COPIED;
> +               buf++;
> +       }
> +
> +       count = 0;
> +
> +       for (i = 0; cur_section; i++) {
> +               section_size = cur_section->end - cur_section->start;
> +
> +               if (section_size <= 0) {
> +                       ath10k_warn(ar, "incorrect ramdump format with start address 0x%x and stop address 0x%x\n",
> +                                   cur_section->start,
> +                                   cur_section->end);
> +                       break;
> +               }
> +
> +               if ((i + 1) == mem_region->section_table.size) {
> +                       /* last section */
> +                       next_section = NULL;
> +                       skip_size = 0;
> +               } else {
> +                       next_section = cur_section + 1;
> +
> +                       if (cur_section->end > next_section->start) {
> +                               ath10k_warn(ar, "next ramdump section 0x%x is smaller than current end address 0x%x\n",
> +                                           next_section->start,
> +                                           cur_section->end);
> +                               break;
> +                       }
> +
> +                       skip_size = next_section->start - cur_section->end;
> +               }
> +
> +               if (buf_len < (skip_size + section_size)) {
> +                       ath10k_warn(ar, "ramdump buffer is too small: %zu\n", buf_len);
> +                       break;
> +               }
> +
> +               buf_len -= skip_size + section_size;
> +
> +               /* read section to dest memory */
> +               ret = ath10k_sdio_read_mem(ar, cur_section->start,
> +                                          buf, section_size);
> +               if (ret) {
> +                       ath10k_warn(ar, "failed to read ramdump from section 0x%x: %d\n",
> +                                   cur_section->start, ret);
> +                       break;
> +               }
> +
> +               buf += section_size;
> +               count += section_size;
> +
> +               /* fill in the gap between this section and the next */
> +               for (j = 0; j < skip_size; j++) {
> +                       *buf = ATH10K_MAGIC_NOT_COPIED;
> +                       buf++;
> +               }
> +
> +               count += skip_size;
> +
> +               if (!next_section)
> +                       /* this was the last section */
> +                       break;
> +
> +               cur_section = next_section;
> +       }
> +
> +       return count;
> +}
> +
> +/* if an error happened returns < 0, otherwise the length */
> +static int ath10k_sdio_dump_memory_generic(struct ath10k *ar,
> +                                          const struct ath10k_mem_region *current_region,
> +                                          u8 *buf,
> +                                          u32 fast_dump)
> +{
> +       int ret;
> +
> +       if (current_region->section_table.size > 0)
> +               /* Copy each section individually. */
> +               return ath10k_sdio_dump_memory_section(ar,
> +                                                     current_region,
> +                                                     buf,
> +                                                     current_region->len);
> +
> +       /* No individiual memory sections defined so we can
> +        * copy the entire memory region.
> +        */
> +       if (fast_dump)
> +               ret = ath10k_bmi_read_memory(ar,
> +                                            current_region->start,
> +                                            buf,
> +                                            current_region->len);
> +       else
> +               ret = ath10k_sdio_read_mem(ar,
> +                                          current_region->start,
> +                                          buf,
> +                                          current_region->len);
> +
> +       if (ret) {
> +               ath10k_warn(ar, "failed to copy ramdump region %s: %d\n",
> +                           current_region->name, ret);
> +               return ret;
> +       }
> +
> +       return current_region->len;
> +}
> +
> +static void ath10k_sdio_dump_memory(struct ath10k *ar,
> +                                   struct ath10k_fw_crash_data *crash_data,
> +                                   u32 fast_dump)
> +{
> +       const struct ath10k_hw_mem_layout *mem_layout;
> +       const struct ath10k_mem_region *current_region;
> +       struct ath10k_dump_ram_data_hdr *hdr;
> +       u32 count;
> +       size_t buf_len;
> +       int ret, i;
> +       u8 *buf;
> +
> +       if (!crash_data)
> +               return;
> +
> +       mem_layout = ath10k_coredump_get_mem_layout(ar);
> +       if (!mem_layout)
> +               return;
> +
> +       current_region = &mem_layout->region_table.regions[0];
> +
> +       buf = crash_data->ramdump_buf;
> +       buf_len = crash_data->ramdump_buf_len;
> +
> +       memset(buf, 0, buf_len);
> +
> +       for (i = 0; i < mem_layout->region_table.size; i++) {
> +               count = 0;
> +
> +               if (current_region->len > buf_len) {
> +                       ath10k_warn(ar, "memory region %s size %d is larger that remaining ramdump buffer size %zu\n",
> +                                   current_region->name,
> +                                   current_region->len,
> +                                   buf_len);
> +                       break;
> +               }
> +
> +               /* Reserve space for the header. */
> +               hdr = (void *)buf;
> +               buf += sizeof(*hdr);
> +               buf_len -= sizeof(*hdr);
> +
> +               ret = ath10k_sdio_dump_memory_generic(ar, current_region, buf, fast_dump);
> +
> +               ath10k_err(ar, "dump mem, name:%s, type:%d, start:0x%x, len:0x%x, size:%d, ret:0x%x\n",
> +                          current_region->name,
> +                          current_region->type,
> +                          current_region->start,
> +                          current_region->len,
> +                          current_region->section_table.size,
> +                          ret);
> +
> +               if (ret >= 0)
> +                       count = ret;
> +
> +               hdr->region_type = cpu_to_le32(current_region->type);
> +               hdr->start = cpu_to_le32(current_region->start);
> +               hdr->length = cpu_to_le32(count);
> +
> +               if (count == 0)
> +                       /* Note: the header remains, just with zero length. */
> +                       break;
> +
> +               buf += count;
> +               buf_len -= count;
> +
> +               current_region++;
> +       }
> +}
> +
> +void ath10k_sdio_fw_crashed_dump(struct ath10k *ar)
> +{
> +       struct ath10k_fw_crash_data *crash_data;
> +       char guid[UUID_STRING_LEN + 1];
> +       u32 fast_dump = 0;
> +
> +       ath10k_err(ar, "begin fw dump\n", guid);
> +
> +       ath10k_sdio_check_fw_reg(ar, &fast_dump);
> +
> +       if (fast_dump)
> +               ar->bmi.done_sent = false;
> +
> +       ar->stats.fw_crash_counter++;
> +
> +       ath10k_sdio_hif_disable_intrs(ar);
> +
> +       crash_data = ath10k_coredump_new(ar);
> +
> +       if (crash_data)
> +               scnprintf(guid, sizeof(guid), "%pUl", &crash_data->guid);
> +       else
> +               scnprintf(guid, sizeof(guid), "n/a");
> +
> +       ath10k_err(ar, "firmware crashed! (guid %s)\n", guid);
> +       ath10k_print_driver_info(ar);
> +       ath10k_sdio_dump_registers(ar, crash_data, fast_dump);
> +       ath10k_sdio_dump_memory(ar, crash_data, fast_dump);
> +
> +       ath10k_sdio_hif_enable_intrs(ar);
> +
> +       queue_work(ar->workqueue, &ar->restart_work);
> +}
> +
>  static int ath10k_sdio_probe(struct sdio_func *func,
>                              const struct sdio_device_id *id)
>  {
> diff --git a/drivers/net/wireless/ath/ath10k/targaddrs.h b/drivers/net/wireless/ath/ath10k/targaddrs.h
> index dff6c8a..c65045a 100644
> --- a/drivers/net/wireless/ath/ath10k/targaddrs.h
> +++ b/drivers/net/wireless/ath/ath10k/targaddrs.h
> @@ -334,6 +334,16 @@ struct host_interest {
>  #define HI_ACS_FLAGS_SDIO_REDUCE_TX_COMPL_FW_ACK (1 << 17)
>
>  /*
> + * If both SDIO_CRASH_DUMP_ENHANCEMENT_HOST and SDIO_CRASH_DUMP_ENHANCEMENT_FW
> + * flags are set, then crashdump upload will be done using the BMI host/target
> + * communication channel.
> + */
> +/* HOST to support using BMI dump FW memory when hit assert */
> +#define HI_OPTION_SDIO_CRASH_DUMP_ENHANCEMENT_HOST 0x400
> +/* FW to support using BMI dump FW memory when hit assert */
> +#define HI_OPTION_SDIO_CRASH_DUMP_ENHANCEMENT_FW   0x800
> +
> +/*
>   * CONSOLE FLAGS
>   *
>   * Bit Range  Meaning
> --
> 1.9.1
>

_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k

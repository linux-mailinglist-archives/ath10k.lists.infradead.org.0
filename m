Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C75971759B4
	for <lists+ath10k@lfdr.de>; Mon,  2 Mar 2020 12:45:50 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:References:Message-Id:Date:
	In-Reply-To:From:Subject:Mime-Version:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=cq4qi2W51OGOoxnXSIl4H+PetysgzpoT7y74kzNfzg4=; b=rgFOsyskhdW01g
	3FJRv2ipfX9ieGuS0wXeh4Or1POG1pWTqVTBhAbnVQ6GamffVIaCUJGdtmrZCa6NB0UdABW7a9HhG
	1T7k2i2i674XRtTkAVpGzFHG/SLXHPwBniSv7udjghjS8leBFszhVZyrWgHVAInXH2vARO57/xNZJ
	CZJn1B6HnHRSTwBTBAM3XEHMiX/9gwe8SfYgxGupr2/RKYPlRyAs/aDoKvXH2N2fMN4qlOEe09yhO
	q6gq2HDJVVpQA7k/oFdWzQTGjt0R5xVGMezh7K3SwbNgOOUP8OGgh+W681c3fiu/p1pynFB1Ve/F8
	J7xxhKsPhx+SKmu0W+gQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j8jW3-0000iH-BP; Mon, 02 Mar 2020 11:45:43 +0000
Received: from mail-lf1-x144.google.com ([2a00:1450:4864:20::144])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j8jVz-0000hf-Av
 for ath10k@lists.infradead.org; Mon, 02 Mar 2020 11:45:41 +0000
Received: by mail-lf1-x144.google.com with SMTP id p5so1402000lfc.7
 for <ath10k@lists.infradead.org>; Mon, 02 Mar 2020 03:45:35 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:subject:from:in-reply-to:date:cc
 :content-transfer-encoding:message-id:references:to;
 bh=As6I8NQkwcIIjEVCUd38alfcGjH4F3Vry7ogRscZBNk=;
 b=kG5Ee2YejnrYjBcAcREC1HHsjtDyH6DRgNbkPz1qrsybmZWYqcMbxqC7A8yc6qkv/L
 kaVRI+RYETuQ2aEDHvcC6nwzlpvDuLQDVCo5t0zjcohEs3xlJSpnI7dFwagc69V/ei86
 Ttu3ifyFeoP8bzqS1gwggO0/+0EF8f/JCs9zya0d7BK/+Q+m+pJfcX3d0lw0fic+wlhU
 qj04zojl0Jgv/DFsnu0OKScYzc6txXT7LqCKNDCJsM3YFlcKc4/ec7vrPQKvx1YzjfMB
 OlDW6YeAjWrYp6ZqLPVkUSzn1KDM+ud0ZTLeiUIK6i6DJ81GSICUvU02EShhtu/PdUrr
 c1XQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:subject:from:in-reply-to:date:cc
 :content-transfer-encoding:message-id:references:to;
 bh=As6I8NQkwcIIjEVCUd38alfcGjH4F3Vry7ogRscZBNk=;
 b=DIDnqRIOv0N8v476H3osz18mc2BQL94vpeCbdNzvNPNwXZBn6NlORlrqoWkcJvy0x1
 2CCmaNEmjY3I2HHunyJ/FnmvkMfbAXRUm+/aHK3Nq3n28MZTcUv4ZOm2v+6nlBZ5+caf
 6qaEjdOCgriewBj9Ubj+0Wqn0K9WrZcov6IhLmHt3YJfJnlXMn5i8trWTflfGG1p6CMX
 pCVTV2hRaMuEaa8Ky8FdE0u2IRDF5sdcYfOov+gcuj3gB/8mfH0xKGrmMStMMGfGedIP
 ifg0ryHJqLo7Ihq0haX/S0I021Vqw4rOikGtXvKS1ej+8D1NwnrhpGcQVq2Tk+8f0D3l
 HMlw==
X-Gm-Message-State: ANhLgQ1upHz6iRRgsbFQlG3C3VMOE6ka0aJoGJJtGO2eVWeXqqOdvN4A
 aVdgEaHxJPAZT8saM2bn/ymtEPjhJ7cTpQ==
X-Google-Smtp-Source: ADFU+vvIwR0b5gwam3UzfTX3QU4R63OGV4NHnE4Jx3YB9z1gduNmDJdvCxtnx+aJwVtxJydDIYbshg==
X-Received: by 2002:a05:6512:6c7:: with SMTP id
 u7mr10825067lff.176.1583149533601; 
 Mon, 02 Mar 2020 03:45:33 -0800 (PST)
Received: from [172.16.20.20] ([87.200.95.144])
 by smtp.gmail.com with ESMTPSA id h9sm10989952ljg.3.2020.03.02.03.45.31
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 02 Mar 2020 03:45:33 -0800 (PST)
Mime-Version: 1.0 (Mac OS X Mail 12.4 \(3445.104.11\))
Subject: Re: [PATCH RFT] ath10k: add QCA9377 sdio hw_param item
From: Christian Hewitt <christianshewitt@gmail.com>
In-Reply-To: <1569507867-19547-1-git-send-email-kvalo@codeaurora.org>
Date: Mon, 2 Mar 2020 15:45:30 +0400
Message-Id: <7BB79E29-0ACF-45FB-B802-E4B2F5CA0DFE@gmail.com>
References: <1569507867-19547-1-git-send-email-kvalo@codeaurora.org>
To: Kalle Valo <kvalo@codeaurora.org>
X-Mailer: Apple Mail (2.3445.104.11)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200302_034539_380670_FD64A010 
X-CRM114-Status: GOOD (  14.93  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:144 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [christianshewitt[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Erik Stromdahl <erik.stromdahl@gmail.com>, linux-wireless@vger.kernel.org,
 ath10k@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "ath10k" <ath10k-bounces@lists.infradead.org>
Errors-To: ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org


> On 26 Sep 2019, at 6:24 pm, Kalle Valo <kvalo@codeaurora.org> wrote:
> 
> From: Erik Stromdahl <erik.stromdahl@gmail.com>
> 
> Add hardware parameters for QCA9377 sdio devices, it's now properly supported.
> 
> Signed-off-by: Erik Stromdahl <erik.stromdahl@gmail.com>
> Signed-off-by: Kalle Valo <kvalo@codeaurora.org>
> ---
> 
> I don't have any working QCA9377 SDIO hardware so I would appreciate any
> test reports. This should apply cleanly to ath.git master branch (at least to
> tag ath-201909230832):
> 
> https://git.kernel.org/pub/scm/linux/kernel/git/kvalo/ath.git/log/?h=master
> 
> drivers/net/wireless/ath/ath10k/core.c | 27 +++++++++++++++++++++++++++
> drivers/net/wireless/ath/ath10k/hw.h   |  3 +++
> 2 files changed, 30 insertions(+)
> 
> diff --git a/drivers/net/wireless/ath/ath10k/core.c b/drivers/net/wireless/ath/ath10k/core.c
> index 36c62d66c19e..e5572d4b6ae9 100644
> --- a/drivers/net/wireless/ath/ath10k/core.c
> +++ b/drivers/net/wireless/ath/ath10k/core.c
> @@ -539,6 +539,33 @@ static const struct ath10k_hw_params ath10k_hw_params_list[] = {
> 		.tx_stats_over_pktlog = false,
> 	},
> 	{
> +		.id = QCA9377_HW_1_1_DEV_VERSION,
> +		.dev_id = QCA9377_1_0_DEVICE_ID,
> +		.bus = ATH10K_BUS_SDIO,
> +		.name = "qca9377 hw1.1 sdio",
> +		.patch_load_addr = QCA9377_HW_1_0_PATCH_LOAD_ADDR,
> +		.uart_pin = 19,
> +		.otp_exe_param = 0,
> +		.channel_counters_freq_hz = 88000,
> +		.max_probe_resp_desc_thres = 0,
> +		.cal_data_len = 8124,
> +		.fw = {
> +			.dir = QCA9377_HW_1_0_FW_DIR,
> +			.board = QCA9377_HW_1_0_BOARD_DATA_FILE,
> +			.board_size = QCA9377_BOARD_DATA_SZ,
> +			.board_ext_size = QCA9377_BOARD_EXT_DATA_SZ,
> +		},
> +		.hw_ops = &qca6174_ops,
> +		.hw_clk = qca6174_clk,
> +		.target_cpu_freq = 176000000,
> +		.decap_align_bytes = 4,
> +		.n_cipher_suites = 8,
> +		.num_peers = TARGET_QCA9377_HL_NUM_PEERS,
> +		.ast_skid_limit = 0x10,
> +		.num_wds_entries = 0x20,
> +		.uart_pin_workaround = true,
> +	},
> +	{
> 		.id = QCA4019_HW_1_0_DEV_VERSION,
> 		.dev_id = 0,
> 		.bus = ATH10K_BUS_AHB,
> diff --git a/drivers/net/wireless/ath/ath10k/hw.h b/drivers/net/wireless/ath/ath10k/hw.h
> index 2ae57c1de7b5..ddb1d23ec6de 100644
> --- a/drivers/net/wireless/ath/ath10k/hw.h
> +++ b/drivers/net/wireless/ath/ath10k/hw.h
> @@ -768,6 +768,9 @@ ath10k_is_rssi_enable(struct ath10k_hw_params *hw,
> #define TARGET_HL_TLV_AST_SKID_LIMIT		16
> #define TARGET_HL_TLV_NUM_WDS_ENTRIES		2
> 
> +/* Target specific defines for QCA9377 high latency firmware */
> +#define TARGET_QCA9377_HL_NUM_PEERS		15
> +
> /* Diagnostic Window */
> #define CE_DIAG_PIPE	7
> 

Tested and working fine using Linux 5.6-rc3 and SDIO firmware from [1].

[    5.391369] ath10k_sdio mmc2:0001:1: qca9377 hw1.1 sdio target 0x05020001 chip_id 0x00000000 sub 0000:0000
[    5.391379] ath10k_sdio mmc2:0001:1: kconfig debug 0 debugfs 0 tracing 0 dfs 0 testmode 0
[    5.391632] ath10k_sdio mmc2:0001:1: firmware ver WLAN.TF.1.1.1-00061-QCATFSWPZ-1 api 5 features ignore-otp crc32 7746e551
[    5.624198] ath10k_sdio mmc2:0001:1: failed to fetch board data for bus=sdio,vendor=0271,device=0701,subsystem-vendor=0000,subsystem-device=0000 from ath10k/QCA9377/hw1.0/board-2.bin
[    5.624473] ath10k_sdio mmc2:0001:1: board_file api 1 bmi_id N/A crc32 544289f7
[    6.775882] ath10k_sdio mmc2:0001:1: htt-ver 3.32 wmi-op 4 htt-op 3 cal otp max-sta 32 raw 0 hwcrypto 1
[    6.854066] ath: EEPROM regdomain sanitized
[    6.854073] ath: EEPROM regdomain: 0x64
[    6.854075] ath: EEPROM indicates we should expect a direct regpair map
[    6.854082] ath: Country alpha2 being used: 00
[    6.854083] ath: Regpair used: 0x64
[    8.444189] ath: EEPROM regdomain: 0x8114
[    8.444194] ath: EEPROM indicates we should expect a country code
[    8.444196] ath: doing EEPROM country->regdmn map search
[    8.444198] ath: country maps to regdmn code: 0x37
[    8.444201] ath: Country alpha2 being used: DE
[    8.444203] ath: Regpair used: 0x37
[    8.444206] ath: regdomain 0x8114 dynamically updated by country element

The test device is an Amlogic S905D STB device from O2.cz that I have just submitted a working device-tree for [2].

If you need a QCA9377 test device, I have a duplicate/spare of the box and would be happy to post it.

Tested-by: Christian Hewitt <christianshewitt@gmail.com>

[1] https://github.com/chewitt/qca-firmware
[2] https://patchwork.kernel.org/project/linux-amlogic/list/?series=249525


_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k

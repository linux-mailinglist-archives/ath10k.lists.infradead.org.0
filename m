Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9735415186
	for <lists+ath10k@lfdr.de>; Mon,  6 May 2019 18:33:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=NK8aD8P0s74CoVYjbnENiOvGCKHFLPIfJ7uWD8I9oow=; b=upc25O9jG2lKfb
	L9CjAhWvqDuZiJupxuySW5VHkomK3YMn09men1DnejLiRbzU0C/39d1KsBV+gQKdG+BpECPFDbM8P
	GrDQFzHrUIg4ZCFjI2FH2EsANv22MPSRp3PMAfa1GTA80RQtYwtFFd5s1WAHAZNVEMEviD3mZEgV4
	skyFPIpY8l9j1BnhzQb38xaR4dEu1L3FgkCBRZHQq9bhGWkC1dGF4A2oRkZWDfhzGBpxSolMdINou
	g19KBionKl1LwiBkHBiUm2UY07iAVpn+qlBOAK6P7GYWzXw/5n2pZdus+JHzcVPwUIhW+MTY6hCRK
	58zy487wcAcLtCNUIYtA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hNgYJ-0000dA-4e; Mon, 06 May 2019 16:33:19 +0000
Received: from mail-lj1-x241.google.com ([2a00:1450:4864:20::241])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hNgWY-0006zO-AT
 for ath10k@lists.infradead.org; Mon, 06 May 2019 16:31:50 +0000
Received: by mail-lj1-x241.google.com with SMTP id h21so11599981ljk.13
 for <ath10k@lists.infradead.org>; Mon, 06 May 2019 09:31:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=wagpSFeZjiSYROHr7BDwlgLPN1h4XicGjvtdDBu+n9c=;
 b=KvPbQf5ojgfmelT2YV7IcRcMLqR9GapZoa4g4+qAbBdlWZSTS1KiFKUTm+kBQd/Byr
 JffruthirxsW3We/MAlRPJMY55Ee0Ir8Map29okquwu2v9cSocVP227PFBp0i55V9WR7
 lw4BhqMJYwuXp5kBp0Kr0LUpTLTMdEEQBvjog=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=wagpSFeZjiSYROHr7BDwlgLPN1h4XicGjvtdDBu+n9c=;
 b=Owp+DzprKgkIGCeozYuKVB76BHy3lQ1ird7ZwA4c9RMnofHVclWGcVoEXn1EM2YkYo
 Ot+M27fW9T3Ce4q0pM2P7HJRCQO062D4UcnHCjNQw3J6q2cH35h7sEsEMqqnn5dSzPLj
 Jlo2+lr7VOZxucqNDTaKXS2ZmXacaUsGW5L6VUExyh+IGlfhK2lthklK4brD/C3/Y1Sl
 ljESii6L13tcWyDe0WFaXL9xXJHWvUFoJvy24mzqkVEZIOz+tqO+D5q1/qUw0oXkUwSC
 MNWgHktlOmkJgGVp7xu+vmg3sLIplZCfX+AuyfttIpVAK8YUBK5aN3u5uFOxXL48Sz5x
 tiig==
X-Gm-Message-State: APjAAAU9wh4RVjalJkH70hfveBUZ9n50HUGMXVHw8PucSolAIDT5kbKg
 24sKytXvmKXI8fusPIvs7HNwG3755X0=
X-Google-Smtp-Source: APXvYqwYybWoNYCGS7ogP5PA076RYx+DZKxdsdQDUV7WdHk0VAoOtu58V+fjW+mqabz8LuC8MYeewQ==
X-Received: by 2002:a2e:7a0b:: with SMTP id v11mr5406466ljc.96.1557160287027; 
 Mon, 06 May 2019 09:31:27 -0700 (PDT)
Received: from mail-lf1-f43.google.com (mail-lf1-f43.google.com.
 [209.85.167.43])
 by smtp.gmail.com with ESMTPSA id q14sm2118280ljh.37.2019.05.06.09.31.25
 for <ath10k@lists.infradead.org>
 (version=TLS1_3 cipher=AEAD-AES128-GCM-SHA256 bits=128/128);
 Mon, 06 May 2019 09:31:25 -0700 (PDT)
Received: by mail-lf1-f43.google.com with SMTP id k18so9597404lfj.13
 for <ath10k@lists.infradead.org>; Mon, 06 May 2019 09:31:25 -0700 (PDT)
X-Received: by 2002:a19:4bc5:: with SMTP id y188mr12592750lfa.24.1557160285265; 
 Mon, 06 May 2019 09:31:25 -0700 (PDT)
MIME-Version: 1.0
References: <20190506142603.1746-1-govinds@codeaurora.org>
In-Reply-To: <20190506142603.1746-1-govinds@codeaurora.org>
From: Brian Norris <briannorris@chromium.org>
Date: Mon, 6 May 2019 09:31:13 -0700
X-Gmail-Original-Message-ID: <CA+ASDXNuf5=Q4v8HqtM2xGvqN1c_0q9mBNo9wdO3pRcBBqe2oQ@mail.gmail.com>
Message-ID: <CA+ASDXNuf5=Q4v8HqtM2xGvqN1c_0q9mBNo9wdO3pRcBBqe2oQ@mail.gmail.com>
Subject: Re: [PATCH v2 1/1] ath10k: Enable MSA region dump support for WCN3990
To: Govind Singh <govinds@codeaurora.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190506_093131_155631_BADEADD6 
X-CRM114-Status: GOOD (  11.14  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:241 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.0 T_DKIMWL_WL_HIGH       DKIMwl.org - Whitelisted High sender
X-BeenThere: ath10k@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <ath10k.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/ath10k>,
 <mailto:ath10k-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/ath10k/>
List-Post: <mailto:ath10k@lists.infradead.org>
List-Help: <mailto:ath10k-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/ath10k>,
 <mailto:ath10k-request@lists.infradead.org?subject=subscribe>
Cc: linux-wireless <linux-wireless@vger.kernel.org>, ath10k@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "ath10k" <ath10k-bounces@lists.infradead.org>
Errors-To: ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org

On Mon, May 6, 2019 at 7:26 AM Govind Singh <govinds@codeaurora.org> wrote:
> --- a/drivers/net/wireless/ath/ath10k/snoc.c
> +++ b/drivers/net/wireless/ath/ath10k/snoc.c

> @@ -1586,6 +1587,72 @@ static int ath10k_hw_power_off(struct ath10k *ar)
>         return ret;
>  }
>
> +static void ath10k_msa_dump_memory(struct ath10k *ar,
> +                                  struct ath10k_fw_crash_data *crash_data)
> +{
> +       struct ath10k_snoc *ar_snoc = ath10k_snoc_priv(ar);
> +       const struct ath10k_hw_mem_layout *mem_layout;
> +       const struct ath10k_mem_region *current_region;
> +       struct ath10k_dump_ram_data_hdr *hdr;
> +       size_t buf_len;
> +       u8 *buf;
> +
> +       lockdep_assert_held(&ar->data_lock);

I believe that's the wrong lock now. See below.

> +
> +       if (!crash_data && !crash_data->ramdump_buf)
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
> +       memset(buf, 0, buf_len);
> +
> +       /* Reserve space for the header. */
> +       hdr = (void *)buf;
> +       buf += sizeof(*hdr);
> +       buf_len -= sizeof(*hdr);
> +
> +       hdr->region_type = cpu_to_le32(current_region->type);
> +       hdr->start = cpu_to_le32(ar_snoc->qmi->msa_va);
> +       hdr->length = cpu_to_le32(ar_snoc->qmi->msa_mem_size);
> +
> +       if (current_region->len < ar_snoc->qmi->msa_mem_size) {
> +               memcpy(buf, ar_snoc->qmi->msa_va, current_region->len);
> +               ath10k_warn(ar, "msa dump length is less than msa size %x, %x\n",
> +                           current_region->len, ar_snoc->qmi->msa_mem_size);
> +       } else {
> +               memcpy(buf, ar_snoc->qmi->msa_va, ar_snoc->qmi->msa_mem_size);
> +       }
> +}
> +
> +void ath10k_snoc_fw_crashed_dump(struct ath10k *ar)
> +{
> +       struct ath10k_fw_crash_data *crash_data;
> +       char guid[UUID_STRING_LEN + 1];
> +
> +       spin_lock_bh(&ar->data_lock);
> +
> +       ar->stats.fw_crash_counter++;
> +
> +       crash_data = ath10k_coredump_new(ar);

This will (for good reason) spit a lockdep warning after this, I think:

38faed150438 ath10k: perform crash dump collection in workqueue

You need to hold 'dump_mutex' now. I believe you only need to hold
'data_lock' for the sake of the crash counter.

Brian

> +
> +       if (crash_data)
> +               scnprintf(guid, sizeof(guid), "%pUl", &crash_data->guid);
> +       else
> +               scnprintf(guid, sizeof(guid), "n/a");
> +
> +       ath10k_err(ar, "firmware crashed! (guid %s)\n", guid);
> +       ath10k_print_driver_info(ar);
> +       ath10k_msa_dump_memory(ar, crash_data);
> +
> +       spin_unlock_bh(&ar->data_lock);
> +}

_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k

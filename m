Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8E7CC192675
	for <lists+ath10k@lfdr.de>; Wed, 25 Mar 2020 12:01:00 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:
	In-Reply-To:References:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=uy9kQnszE+2KOgovae5U6kdPb+knqVsvzpVzeIyH1JI=; b=q4MqVUAJEHEuLo
	3iDzBqrY4zGhwBzJ+l2LCfdu6RkvxhrN7q87Oxnu3IUFJQtjfVi3hSq2W+E3BdkiyqxpiaZB51FMC
	ty5uibvBzzsBKusqYyc9DzFYBP+Oo/UzGKOui6be8jSvqz6/kmjdSTKaysA2PvN9lfTDo/a39yXvP
	NroCf5P8uLXQ1Z9sYxDM+bk9UD1paepPPnubq+sMpbHxQPwqec/qKGojv9sBXnL+223uSWvM8U3Zu
	L1+jR20Hh1s6iH4cYix5zRcKX3eFkibElnh1WlpastFInXI+a0HSwBDZJw/dz2C+VP6XWtRNzyGZk
	hR9JP8Hn9fPZ6mvjcenw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jH3mJ-0000Za-UG; Wed, 25 Mar 2020 11:00:55 +0000
Received: from mail26.static.mailgun.info ([104.130.122.26])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jH3mF-0000Yc-AF
 for ath10k@lists.infradead.org; Wed, 25 Mar 2020 11:00:54 +0000
DKIM-Signature: a=rsa-sha256; v=1; c=relaxed/relaxed; d=mg.codeaurora.org;
 q=dns/txt; 
 s=smtp; t=1585134052; h=Content-Transfer-Encoding: Content-Type:
 MIME-Version: Message-ID: Date: Subject: In-Reply-To: References: Cc:
 To: From: Sender; bh=mHjWNEnv5917EKxAOANEuTjIJkXbIPTe1KiHqOWLln0=;
 b=Z/5Kcl0EORsTZLHNsPkkAYES6fk6OxAl9aVQiWfuWIy0wGtBPE2bGSN/0YW4e0R1RGdVg7j8
 +1TtaK2v5M3oe9ES4mXotx2LfxIwvubqOGk+Cl2NvQLRm5EJ1u/WuThXuv8S3zQwdXoeYIh/
 6D5eCh81HDGvyuNpP2JtKjTaHFA=
X-Mailgun-Sending-Ip: 104.130.122.26
X-Mailgun-Sid: WyJiZDQ3OSIsICJhdGgxMGtAbGlzdHMuaW5mcmFkZWFkLm9yZyIsICJiZTllNGEiXQ==
Received: from smtp.codeaurora.org
 (ec2-35-166-182-171.us-west-2.compute.amazonaws.com [35.166.182.171])
 by mxa.mailgun.org with ESMTP id 5e7b39d3.7f578898b030-smtp-out-n02;
 Wed, 25 Mar 2020 11:00:35 -0000 (UTC)
Received: by smtp.codeaurora.org (Postfix, from userid 1001)
 id 4E8F6C433BA; Wed, 25 Mar 2020 11:00:35 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
 aws-us-west-2-caf-mail-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.0 required=2.0 tests=ALL_TRUSTED,SPF_NONE
 autolearn=unavailable autolearn_force=no version=3.4.0
Received: from Pillair (unknown [183.83.66.17])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested) (Authenticated sender: pillair)
 by smtp.codeaurora.org (Postfix) with ESMTPSA id 3362EC433D2;
 Wed, 25 Mar 2020 11:00:29 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 smtp.codeaurora.org 3362EC433D2
Authentication-Results: aws-us-west-2-caf-mail-1.web.codeaurora.org;
 dmarc=none (p=none dis=none) header.from=codeaurora.org
Authentication-Results: aws-us-west-2-caf-mail-1.web.codeaurora.org;
 spf=none smtp.mailfrom=pillair@codeaurora.org
From: <pillair@codeaurora.org>
To: "'Kalle Valo'" <kvalo@codeaurora.org>
References: <1585054044-18667-2-git-send-email-pillair@codeaurora.org>
 <20200324141404.C9A7FC432C2@smtp.codeaurora.org>
In-Reply-To: <20200324141404.C9A7FC432C2@smtp.codeaurora.org>
Subject: RE: [PATCH 1/3] dt-bindings: ath10k: Add wifi-firmware subnode for
 wifi node
Date: Wed, 25 Mar 2020 16:30:25 +0530
Message-ID: <000001d60294$9abcfb20$d036f160$@codeaurora.org>
MIME-Version: 1.0
X-Mailer: Microsoft Outlook 16.0
Thread-Index: AQIav5wwSpfWqpn79mByT9bYGdzwAAIfXdf4p76udaA=
Content-Language: en-us
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200325_040052_364831_3C4D3071 
X-CRM114-Status: GOOD (  15.86  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [104.130.122.26 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: devicetree@vger.kernel.org, linux-wireless@vger.kernel.org,
 linux-kernel@vger.kernel.org, ath10k@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "ath10k" <ath10k-bounces@lists.infradead.org>
Errors-To: ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org

Hi Kalle,

I had tested it on a slightly older ath10k tree, and missed a few cleanup while rebasing it on the ath10k tree tip.
I have now fixed these build errors and will send out v2 for this patchset.

Thanks,
Rakesh Pillai.

> -----Original Message-----
> From: Kalle Valo <kvalo@codeaurora.org>
> Sent: Tuesday, March 24, 2020 7:44 PM
> To: Rakesh Pillai <pillair@codeaurora.org>
> Cc: ath10k@lists.infradead.org; linux-wireless@vger.kernel.org;
> devicetree@vger.kernel.org; linux-kernel@vger.kernel.org; Rakesh Pillai
> <pillair@codeaurora.org>
> Subject: Re: [PATCH 1/3] dt-bindings: ath10k: Add wifi-firmware subnode for
> wifi node
> 
> Rakesh Pillai <pillair@codeaurora.org> wrote:
> 
> > Add a wifi-firmware subnode for the wifi node.
> > This wifi-firmware subnode is needed for the
> > targets which do not support TrustZone.
> >
> > Signed-off-by: Rakesh Pillai <pillair@codeaurora.org>
> 
> Fails to build and has warnings. How did you test this?
> 
> drivers/net/wireless/ath/ath10k/qmi.c: In function
> 'ath10k_qmi_msa_mem_info_send_sync_msg':
> drivers/net/wireless/ath/ath10k/qmi.c:160:23: error: 'struct ath10k_qmi' has
> no member named 'msa_pa'
>   max_mapped_addr = qmi->msa_pa + qmi->msa_mem_size;
>                        ^~
> drivers/net/wireless/ath/ath10k/qmi.c:160:37: error: 'struct ath10k_qmi' has
> no member named 'msa_mem_size'
>   max_mapped_addr = qmi->msa_pa + qmi->msa_mem_size;
>                                      ^~
> drivers/net/wireless/ath/ath10k/qmi.c:163:41: error: 'struct ath10k_qmi' has
> no member named 'msa_mem_size'
>    if (resp.mem_region_info[i].size > qmi->msa_mem_size ||
>                                          ^~
> drivers/net/wireless/ath/ath10k/qmi.c:165:48: error: 'struct ath10k_qmi' has
> no member named 'msa_pa'
>        resp.mem_region_info[i].region_addr < qmi->msa_pa ||
>                                                 ^~
> make[5]: *** [drivers/net/wireless/ath/ath10k/qmi.o] Error 1
> make[5]: *** Waiting for unfinished jobs....
> In file included from ./include/linux/byteorder/little_endian.h:5,
>                  from ./arch/x86/include/uapi/asm/byteorder.h:5,
>                  from ./include/asm-generic/bitops/le.h:6,
>                  from ./arch/x86/include/asm/bitops.h:395,
>                  from ./include/linux/bitops.h:29,
>                  from ./include/linux/kernel.h:12,
>                  from ./include/linux/clk.h:13,
>                  from drivers/net/wireless/ath/ath10k/snoc.c:6:
> drivers/net/wireless/ath/ath10k/snoc.c: In function
> 'ath10k_msa_dump_memory':
> drivers/net/wireless/ath/ath10k/snoc.c:1424:54: error: 'struct ath10k_qmi'
> has no member named 'msa_va'
>   hdr->start = cpu_to_le32((unsigned long)ar_snoc->qmi->msa_va);
>                                                       ^~
> ./include/uapi/linux/byteorder/little_endian.h:33:51: note: in definition of
> macro '__cpu_to_le32'
>  #define __cpu_to_le32(x) ((__force __le32)(__u32)(x))
>                                                    ^
> drivers/net/wireless/ath/ath10k/snoc.c:1424:15: note: in expansion of macro
> 'cpu_to_le32'
>   hdr->start = cpu_to_le32((unsigned long)ar_snoc->qmi->msa_va);
>                ^~~~~~~~~~~
> drivers/net/wireless/ath/ath10k/snoc.c:1425:40: error: 'struct ath10k_qmi'
> has no member named 'msa_mem_size'
>   hdr->length = cpu_to_le32(ar_snoc->qmi->msa_mem_size);
>                                         ^~
> ./include/uapi/linux/byteorder/little_endian.h:33:51: note: in definition of
> macro '__cpu_to_le32'
>  #define __cpu_to_le32(x) ((__force __le32)(__u32)(x))
>                                                    ^
> drivers/net/wireless/ath/ath10k/snoc.c:1425:16: note: in expansion of macro
> 'cpu_to_le32'
>   hdr->length = cpu_to_le32(ar_snoc->qmi->msa_mem_size);
>                 ^~~~~~~~~~~
> drivers/net/wireless/ath/ath10k/snoc.c:1427:40: error: 'struct ath10k_qmi'
> has no member named 'msa_mem_size'
>   if (current_region->len < ar_snoc->qmi->msa_mem_size) {
>                                         ^~
> drivers/net/wireless/ath/ath10k/snoc.c:1428:27: error: 'struct ath10k_qmi'
> has no member named 'msa_va'
>    memcpy(buf, ar_snoc->qmi->msa_va, current_region->len);
>                            ^~
> drivers/net/wireless/ath/ath10k/snoc.c:1430:41: error: 'struct ath10k_qmi'
> has no member named 'msa_mem_size'
>         current_region->len, ar_snoc->qmi->msa_mem_size);
>                                          ^~
> drivers/net/wireless/ath/ath10k/snoc.c:1432:27: error: 'struct ath10k_qmi'
> has no member named 'msa_va'
>    memcpy(buf, ar_snoc->qmi->msa_va, ar_snoc->qmi->msa_mem_size);
>                            ^~
> drivers/net/wireless/ath/ath10k/snoc.c:1432:49: error: 'struct ath10k_qmi'
> has no member named 'msa_mem_size'
>    memcpy(buf, ar_snoc->qmi->msa_va, ar_snoc->qmi->msa_mem_size);
>                                                  ^~
> drivers/net/wireless/ath/ath10k/snoc.c: In function 'ath10k_fw_deinit':
> drivers/net/wireless/ath/ath10k/snoc.c:1593:14: error: assignment of read-
> only variable 'mapped_size'
>   mapped_size = ar_snoc->fw.mapped_mem_size;
>               ^
> drivers/net/wireless/ath/ath10k/snoc.c:1599:46: warning: format '%d'
> expects argument of type 'int', but argument 3 has type 'size_t' {aka 'long
> unsigned int'} [-Wformat=]
>    ath10k_err(ar, "failed to unmap firmware: %d\n",
>                                              ~^
>                                              %ld
>        unmapped_size);
>        ~~~~~~~~~~~~~
> make[5]: *** [drivers/net/wireless/ath/ath10k/snoc.o] Error 1
> make[4]: *** [drivers/net/wireless/ath/ath10k] Error 2
> make[3]: *** [drivers/net/wireless/ath] Error 2
> make[2]: *** [drivers/net/wireless] Error 2
> make[1]: *** [drivers/net] Error 2
> make: *** [drivers] Error 2
> 
> 3 patches set to Changes Requested.
> 
> 11455345 [1/3] dt-bindings: ath10k: Add wifi-firmware subnode for wifi node
> 11455351 [2/3] ath10k: Setup the msa resources before qmi init
> 11455353 [3/3] ath10k: Add support for targets without trustzone
> 
> --
> https://patchwork.kernel.org/patch/11455345/
> 
> https://wireless.wiki.kernel.org/en/developers/documentation/submittingp
> atches


_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k

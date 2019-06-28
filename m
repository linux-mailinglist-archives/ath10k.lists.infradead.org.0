Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 70EEF5932C
	for <lists+ath10k@lfdr.de>; Fri, 28 Jun 2019 07:01:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:In-Reply-To:
	Date:References:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=pB2xUv2QhRhnM7ErWE3RZQeE2ONp4IkceBWbTKGGAD0=; b=KRecNBTkkJrGJc
	Xqnp7NtunAhUJkcvRvCBGVa6VznkmQhdw2ZszdQ2NYjqeIlL0/7mlWX5ZEJnlw2fduZj3vKVJBQ6p
	swZ2uCPQKB1rhvJCY2p89dWEfHPwSR1jEcYTZrm4zYK+EgjJos9YSnYeZ2Gi+EO9yc6qs9UQ3YjdJ
	WztuIJrxOehIru1KvldtDSER7+DB2h4fMfXE1n7YywG1O2zrz4RV9j0KDf/taM+4DCsbQYREXN0le
	i3OR+hhSGSmJfpIMbqreXKSRtjmIrNN+d387T1/2wzrNxYugPI9bjtTcLWIMLcHyeRskZLR1pTILQ
	1xm6Jqc1XlmNaLCBfEmQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hgj0c-0002Ni-Fb; Fri, 28 Jun 2019 05:01:14 +0000
Received: from smtp.codeaurora.org ([198.145.29.96])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hgj0X-0002Ms-Nz
 for ath10k@lists.infradead.org; Fri, 28 Jun 2019 05:01:11 +0000
Received: by smtp.codeaurora.org (Postfix, from userid 1000)
 id 116F060A0A; Fri, 28 Jun 2019 05:01:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=codeaurora.org;
 s=default; t=1561698069;
 bh=UORO3oPOjeGKjaBkyjyEVQW+lgyIBiFxDiBpVNYg1ms=;
 h=From:To:Cc:Subject:References:Date:In-Reply-To:From;
 b=LeZzEq3kW6cc2RvNrjqSBsuivWj3+d7IIWebZJDcCiVI8mmaQFanVJZH15RNIZUIY
 iE2Y651vvrO7PSdjaKQcMMD7rXoTzqEsZX34/n14UUI/bWUfv1rTiZ2XAKi0ATwXmP
 WweywrIv7Cwbg+ln+hB/smNmkd1w3sY/Kppnswds=
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
 pdx-caf-mail.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=2.0 tests=ALL_TRUSTED,BAYES_00,
 DKIM_INVALID,DKIM_SIGNED,SPF_NONE autolearn=no autolearn_force=no
 version=3.4.0
Received: from x230.qca.qualcomm.com (88-114-240-156.elisa-laajakaista.fi
 [88.114.240.156])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 (Authenticated sender: kvalo@smtp.codeaurora.org)
 by smtp.codeaurora.org (Postfix) with ESMTPSA id 8AAA26028D;
 Fri, 28 Jun 2019 05:00:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=codeaurora.org;
 s=default; t=1561698067;
 bh=UORO3oPOjeGKjaBkyjyEVQW+lgyIBiFxDiBpVNYg1ms=;
 h=From:To:Cc:Subject:References:Date:In-Reply-To:From;
 b=hsvY8U0IZ7PCTctOLfgGV2GKoYYebu1X9c7Ww3Sbuh34ctYWUbETxpDbGZspV+Jei
 Y5w7NenFruz6Zq7n2/aLPckTSF7liCxFFehsa4tQmzLXfB3eWs3TKRGxeqQs5q6ff/
 UFh4N9F8ShBAR5Wy/K2zjzRLh1rqIjYoT/4Nddac=
DMARC-Filter: OpenDMARC Filter v1.3.2 smtp.codeaurora.org 8AAA26028D
Authentication-Results: pdx-caf-mail.web.codeaurora.org;
 dmarc=none (p=none dis=none) header.from=codeaurora.org
Authentication-Results: pdx-caf-mail.web.codeaurora.org;
 spf=none smtp.mailfrom=kvalo@codeaurora.org
From: Kalle Valo <kvalo@codeaurora.org>
To: Fuqian Huang <huangfq.daxian@gmail.com>
Subject: Re: [PATCH v2 16/27] net: remove unneeded memset
References: <20190628024843.15635-1-huangfq.daxian@gmail.com>
Date: Fri, 28 Jun 2019 08:00:54 +0300
In-Reply-To: <20190628024843.15635-1-huangfq.daxian@gmail.com> (Fuqian Huang's
 message of "Fri, 28 Jun 2019 10:48:31 +0800")
Message-ID: <87v9wqqp6h.fsf@codeaurora.org>
User-Agent: Gnus/5.13 (Gnus v5.13) Emacs/24.5 (gnu/linux)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190627_220109_819970_75AA2F88 
X-CRM114-Status: GOOD (  10.60  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.145.29.96 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Ronak Doshi <doshir@vmware.com>,
 Sergey Matyukevich <smatyukevich@quantenna.com>, "VMware,
 Inc." <pv-drivers@vmware.com>, Chris Snook <chris.snook@gmail.com>,
 Chi-Hsien Lin <chi-hsien.lin@cypress.com>,
 Arend van Spriel <arend.vanspriel@broadcom.com>, linux-kernel@vger.kernel.org,
 Vishal Kulkarni <vishal@chelsio.com>, Samuel Chessman <chessman@tux.org>,
 =?utf-8?Q?Rafa=C5=82_Mi=C5=82ecki?= <rafal@milecki.pl>, netdev@vger.kernel.org,
 Avinash Patil <avinashp@quantenna.com>, Thomas Gleixner <tglx@linutronix.de>,
 Manish Chopra <manishc@marvell.com>, linux-rdma@vger.kernel.org,
 Will Deacon <will@kernel.org>, Guo-Fu Tseng <cooldavid@cooldavid.org>,
 Rahul Verma <rahulv@marvell.com>, ath10k@lists.infradead.org,
 brcm80211-dev-list@cypress.com, Saeed Mahameed <saeedm@mellanox.com>,
 linux-hippi@sunsite.dk, Franky Lin <franky.lin@broadcom.com>,
 Yang Wei <yang.wei9@zte.com.cn>, Jes Sorensen <jes@trained-monkey.org>,
 Jay Cliburn <jcliburn@gmail.com>, YueHaibing <yuehaibing@huawei.com>,
 Hante Meuleman <hante.meuleman@broadcom.com>,
 Ido Schimmel <idosch@mellanox.com>, Hans de Goede <hdegoede@redhat.com>,
 Jiri Pirko <jiri@mellanox.com>, Wright Feng <wright.feng@cypress.com>,
 Michael Chan <michael.chan@broadcom.com>, zhong jiang <zhongjiang@huawei.com>,
 Allison Randal <allison@lohutok.net>, Mirko Lindner <mlindner@marvell.com>,
 Igor Mitsyanko <imitsyanko@quantenna.com>, brcm80211-dev-list.pdl@broadcom.com,
 GR-Linux-NIC-Dev@marvell.com, Fugang Duan <fugang.duan@nxp.com>,
 Leon Romanovsky <leon@kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 linux-wireless@vger.kernel.org, Mao Wenan <maowenan@huawei.com>,
 Stephen Hemminger <stephen@networkplumber.org>,
 Luis Chamberlain <mcgrof@kernel.org>, Jon Mason <jdmason@kudzu.us>,
 Andrey Shevchenko <ashevchenko@quantenna.com>,
 Colin Ian King <colin.king@canonical.com>,
 "David S. Miller" <davem@davemloft.net>, Tariq Toukan <tariqt@mellanox.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "ath10k" <ath10k-bounces@lists.infradead.org>
Errors-To: ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org

Fuqian Huang <huangfq.daxian@gmail.com> writes:

> The memset with 0 after zeroing allocator is unneeded.
>
> pci_alloc_persistent calls dma_alloc_coherent directly.
> In commit af7ddd8a627c
> ("Merge tag 'dma-mapping-4.21' of git://git.infradead.org/users/hch/dma-mapping"),
> dma_alloc_coherent has already zeroed the memory.
> So the memset after these functions is unneeded.
>
> Signed-off-by: Fuqian Huang <huangfq.daxian@gmail.com>
> ---
>  drivers/net/ethernet/atheros/atlx/atl1.c                   | 2 --
>  drivers/net/ethernet/atheros/atlx/atl2.c                   | 1 -
>  drivers/net/ethernet/broadcom/bnxt/bnxt.c                  | 2 --
>  drivers/net/ethernet/chelsio/cxgb4/sched.c                 | 1 -
>  drivers/net/ethernet/freescale/fec_main.c                  | 2 --
>  drivers/net/ethernet/jme.c                                 | 5 -----
>  drivers/net/ethernet/marvell/skge.c                        | 2 --
>  drivers/net/ethernet/mellanox/mlx4/eq.c                    | 2 --
>  drivers/net/ethernet/mellanox/mlx5/core/eswitch.c          | 1 -
>  drivers/net/ethernet/mellanox/mlx5/core/eswitch_offloads.c | 2 --
>  drivers/net/ethernet/mellanox/mlxsw/pci.c                  | 1 -
>  drivers/net/ethernet/neterion/s2io.c                       | 1 -
>  drivers/net/ethernet/qlogic/netxen/netxen_nic_ctx.c        | 3 ---
>  drivers/net/ethernet/ti/tlan.c                             | 1 -
>  drivers/net/hippi/rrunner.c                                | 2 --
>  drivers/net/vmxnet3/vmxnet3_drv.c                          | 1 -
>  drivers/net/wireless/ath/ath10k/ce.c                       | 5 -----
>  drivers/net/wireless/broadcom/brcm80211/brcmfmac/pcie.c    | 2 --
>  drivers/net/wireless/quantenna/qtnfmac/pcie/pearl_pcie.c   | 2 --
>  drivers/net/wireless/quantenna/qtnfmac/pcie/topaz_pcie.c   | 2 --

For the wireless part:

Acked-by: Kalle Valo <kvalo@codeaurora.org>

I assume Dave will take this.

-- 
Kalle Valo

_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k

Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2E320591A1
	for <lists+ath10k@lfdr.de>; Fri, 28 Jun 2019 04:49:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=8jcdmehHNmbsOd2JA+046o7+gd+csSiRzMd9zxZTx9E=; b=CS1
	3r4PHO7lSYuEhzslaYOGuSSsG190RVxfOEKSzfqpEY2jETbGD9C8aoQZUtme6fIhIk1rQgIANSViF
	ewfOpqDgWcw6bwqRZhT78IrbTJ0iCKr/308NGTI/q2vZRxNzIwrpB4FhpoZ9JoRl7+b50thvZi9I+
	Ej4VxwGh8Hyz1HAIQTZYLDPR5/uj8NSk8c5DPKapZEoxXimE9Dt99QkzMgpNs+qdBeIXoeLzrcDAo
	0Bj7m4uFK4EdZ0dhCx/9CWE22CXAJCuSGWReUMcCh9GGSOi2HGz8+Bv7LaZGgEJTHg+utLPM4IXr3
	QXSbyZcI349+YA89feET2PXuAN/CjLQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hggwp-0000X7-D1; Fri, 28 Jun 2019 02:49:11 +0000
Received: from mail-pl1-x642.google.com ([2607:f8b0:4864:20::642])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hggwe-0000WH-DC
 for ath10k@lists.infradead.org; Fri, 28 Jun 2019 02:49:02 +0000
Received: by mail-pl1-x642.google.com with SMTP id ay6so2341515plb.9
 for <ath10k@lists.infradead.org>; Thu, 27 Jun 2019 19:49:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=welapidHf0LJmAd+v9ILx1+BJAW3zkPnafPWyWKW2Ls=;
 b=cK6KJnGu23SyWv8oB7R+RxLvwqWRegnkEhahn8Aa4yAeeMu0B/c93LFf/eA8TLNU7v
 xml43JVT7AtnJwx/lKJiIDAA+s4daHk07TI0UiuD0pvjOtHVi7/Pcq0d4siyMuASMac1
 z+dLY3Zu7+ZzgXV2Ht/8J16ZBXyNxq5eG127lhFDpBd2bJVX8gOY3x04PtolWbwvVvU3
 gO8pnZ4qaUOtbj8sPwV4AWO6eGNbzavylYGhfdZ9b7mN4gcErcYP8MviZgKkCuqzJmT1
 +sd/KTmy9CfSeRklFb7CUCyPYHD81rjSBAaaKSuvIy6qiZCkPwW9vSGGg9LO6JdN5+l7
 ePcQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=welapidHf0LJmAd+v9ILx1+BJAW3zkPnafPWyWKW2Ls=;
 b=iFXh9dglsOSq3Ef2L4JC6+rf+Fc4Lb+7autliP1DVKNc0z0L3uRdI82NjDpYj0TSUq
 +OCTQPd/4LmExw0PoxLd9+8sXmz/scVaC6Yl+B7/eo8JqBjfLfDhxDUGjbpt+N+xdVdw
 Nw8Sm/w1f2o5//I0oHqw7r+4qUnpEyDM7BalMLWEXEDlC4kD/fUy6LQVhZWxu4AAyPhi
 xB/hDSXoLXiodIwbHemSi8wLO3xUviPxcvV4VUOhPqV8L6h+0MhrEX8O4I0p2pMY4Rgu
 ZVsee2fEXWVh3zvKWFTSU9MldgcVGXl2bpuEN54dJtpnzw+OznlhWBkQAvMnh5CPeyWu
 QpBA==
X-Gm-Message-State: APjAAAXM0wzkbJpEdEUzf7H6/FiZEAVlKMcHs21c6wNKNpaKBoJVnrEx
 i7orCBHG6T1YSBHU77ERvhw=
X-Google-Smtp-Source: APXvYqzOWLC5FEawdns7IxNh+sydSZhszHiCnBovShzTQ0bIdIsBY/jG5hq6baICSZW2TUa5p0ro1g==
X-Received: by 2002:a17:902:542:: with SMTP id 60mr8690017plf.68.1561690139453; 
 Thu, 27 Jun 2019 19:48:59 -0700 (PDT)
Received: from hfq-skylake.ipads-lab.se.sjtu.edu.cn ([202.120.40.82])
 by smtp.googlemail.com with ESMTPSA id a16sm462986pfd.68.2019.06.27.19.48.48
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 27 Jun 2019 19:48:59 -0700 (PDT)
From: Fuqian Huang <huangfq.daxian@gmail.com>
To: 
Subject: [PATCH v2 16/27] net: remove unneeded memset
Date: Fri, 28 Jun 2019 10:48:31 +0800
Message-Id: <20190628024843.15635-1-huangfq.daxian@gmail.com>
X-Mailer: git-send-email 2.11.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190627_194900_471850_6C6CA4C3 
X-CRM114-Status: GOOD (  12.71  )
X-Spam-Score: 1.3 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 1.5 RCVD_IN_SORBS_WEB      RBL: SORBS: sender is an abusable web server
 [202.120.40.82 listed in dnsbl.sorbs.net]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:642 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (huangfq.daxian[at]gmail.com)
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
 =?UTF-8?q?Rafa=C5=82=20Mi=C5=82ecki?= <rafal@milecki.pl>,
 netdev@vger.kernel.org, Avinash Patil <avinashp@quantenna.com>,
 Thomas Gleixner <tglx@linutronix.de>, Manish Chopra <manishc@marvell.com>,
 linux-rdma@vger.kernel.org, Will Deacon <will@kernel.org>,
 Guo-Fu Tseng <cooldavid@cooldavid.org>, Rahul Verma <rahulv@marvell.com>,
 ath10k@lists.infradead.org, brcm80211-dev-list@cypress.com,
 Saeed Mahameed <saeedm@mellanox.com>, linux-hippi@sunsite.dk,
 Allison Randal <allison@lohutok.net>, Fuqian Huang <huangfq.daxian@gmail.com>,
 Franky Lin <franky.lin@broadcom.com>, Yang Wei <yang.wei9@zte.com.cn>,
 Jes Sorensen <jes@trained-monkey.org>, Jay Cliburn <jcliburn@gmail.com>,
 YueHaibing <yuehaibing@huawei.com>,
 Hante Meuleman <hante.meuleman@broadcom.com>,
 Ido Schimmel <idosch@mellanox.com>, Hans de Goede <hdegoede@redhat.com>,
 Jiri Pirko <jiri@mellanox.com>, Wright Feng <wright.feng@cypress.com>,
 Michael Chan <michael.chan@broadcom.com>, zhong jiang <zhongjiang@huawei.com>,
 Kalle Valo <kvalo@codeaurora.org>, Mirko Lindner <mlindner@marvell.com>,
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
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "ath10k" <ath10k-bounces@lists.infradead.org>
Errors-To: ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org

The memset with 0 after zeroing allocator is unneeded.

pci_alloc_persistent calls dma_alloc_coherent directly.
In commit af7ddd8a627c
("Merge tag 'dma-mapping-4.21' of git://git.infradead.org/users/hch/dma-mapping"),
dma_alloc_coherent has already zeroed the memory.
So the memset after these functions is unneeded.

Signed-off-by: Fuqian Huang <huangfq.daxian@gmail.com>
---
 drivers/net/ethernet/atheros/atlx/atl1.c                   | 2 --
 drivers/net/ethernet/atheros/atlx/atl2.c                   | 1 -
 drivers/net/ethernet/broadcom/bnxt/bnxt.c                  | 2 --
 drivers/net/ethernet/chelsio/cxgb4/sched.c                 | 1 -
 drivers/net/ethernet/freescale/fec_main.c                  | 2 --
 drivers/net/ethernet/jme.c                                 | 5 -----
 drivers/net/ethernet/marvell/skge.c                        | 2 --
 drivers/net/ethernet/mellanox/mlx4/eq.c                    | 2 --
 drivers/net/ethernet/mellanox/mlx5/core/eswitch.c          | 1 -
 drivers/net/ethernet/mellanox/mlx5/core/eswitch_offloads.c | 2 --
 drivers/net/ethernet/mellanox/mlxsw/pci.c                  | 1 -
 drivers/net/ethernet/neterion/s2io.c                       | 1 -
 drivers/net/ethernet/qlogic/netxen/netxen_nic_ctx.c        | 3 ---
 drivers/net/ethernet/ti/tlan.c                             | 1 -
 drivers/net/hippi/rrunner.c                                | 2 --
 drivers/net/vmxnet3/vmxnet3_drv.c                          | 1 -
 drivers/net/wireless/ath/ath10k/ce.c                       | 5 -----
 drivers/net/wireless/broadcom/brcm80211/brcmfmac/pcie.c    | 2 --
 drivers/net/wireless/quantenna/qtnfmac/pcie/pearl_pcie.c   | 2 --
 drivers/net/wireless/quantenna/qtnfmac/pcie/topaz_pcie.c   | 2 --
 20 files changed, 40 deletions(-)

diff --git a/drivers/net/ethernet/atheros/atlx/atl1.c b/drivers/net/ethernet/atheros/atlx/atl1.c
index 7c767ce9aafa..b5c6dc914720 100644
--- a/drivers/net/ethernet/atheros/atlx/atl1.c
+++ b/drivers/net/ethernet/atheros/atlx/atl1.c
@@ -1060,8 +1060,6 @@ static s32 atl1_setup_ring_resources(struct atl1_adapter *adapter)
 		goto err_nomem;
 	}
 
-	memset(ring_header->desc, 0, ring_header->size);
-
 	/* init TPD ring */
 	tpd_ring->dma = ring_header->dma;
 	offset = (tpd_ring->dma & 0x7) ? (8 - (ring_header->dma & 0x7)) : 0;
diff --git a/drivers/net/ethernet/atheros/atlx/atl2.c b/drivers/net/ethernet/atheros/atlx/atl2.c
index 3a3fb5ce0fee..3aba38322717 100644
--- a/drivers/net/ethernet/atheros/atlx/atl2.c
+++ b/drivers/net/ethernet/atheros/atlx/atl2.c
@@ -291,7 +291,6 @@ static s32 atl2_setup_ring_resources(struct atl2_adapter *adapter)
 		&adapter->ring_dma);
 	if (!adapter->ring_vir_addr)
 		return -ENOMEM;
-	memset(adapter->ring_vir_addr, 0, adapter->ring_size);
 
 	/* Init TXD Ring */
 	adapter->txd_dma = adapter->ring_dma ;
diff --git a/drivers/net/ethernet/broadcom/bnxt/bnxt.c b/drivers/net/ethernet/broadcom/bnxt/bnxt.c
index f758b2e0591f..1a51edb7de37 100644
--- a/drivers/net/ethernet/broadcom/bnxt/bnxt.c
+++ b/drivers/net/ethernet/broadcom/bnxt/bnxt.c
@@ -2622,8 +2622,6 @@ static int bnxt_alloc_tx_rings(struct bnxt *bp)
 			mapping = txr->tx_push_mapping +
 				sizeof(struct tx_push_bd);
 			txr->data_mapping = cpu_to_le64(mapping);
-
-			memset(txr->tx_push, 0, sizeof(struct tx_push_bd));
 		}
 		qidx = bp->tc_to_qidx[j];
 		ring->queue_id = bp->q_info[qidx].queue_id;
diff --git a/drivers/net/ethernet/chelsio/cxgb4/sched.c b/drivers/net/ethernet/chelsio/cxgb4/sched.c
index ba6c153ee45c..60218dc676a8 100644
--- a/drivers/net/ethernet/chelsio/cxgb4/sched.c
+++ b/drivers/net/ethernet/chelsio/cxgb4/sched.c
@@ -207,7 +207,6 @@ static int t4_sched_queue_bind(struct port_info *pi, struct ch_sched_queue *p)
 		goto out_err;
 
 	/* Bind queue to specified class */
-	memset(qe, 0, sizeof(*qe));
 	qe->cntxt_id = qid;
 	memcpy(&qe->param, p, sizeof(qe->param));
 
diff --git a/drivers/net/ethernet/freescale/fec_main.c b/drivers/net/ethernet/freescale/fec_main.c
index 38f10f7dcbc3..ec87b8b78d21 100644
--- a/drivers/net/ethernet/freescale/fec_main.c
+++ b/drivers/net/ethernet/freescale/fec_main.c
@@ -3143,8 +3143,6 @@ static int fec_enet_init(struct net_device *ndev)
 		return -ENOMEM;
 	}
 
-	memset(cbd_base, 0, bd_size);
-
 	/* Get the Ethernet address */
 	fec_get_mac(ndev);
 	/* make sure MAC we just acquired is programmed into the hw */
diff --git a/drivers/net/ethernet/jme.c b/drivers/net/ethernet/jme.c
index 76b7b7b85e35..0b668357db4d 100644
--- a/drivers/net/ethernet/jme.c
+++ b/drivers/net/ethernet/jme.c
@@ -582,11 +582,6 @@ jme_setup_tx_resources(struct jme_adapter *jme)
 	if (unlikely(!(txring->bufinf)))
 		goto err_free_txring;
 
-	/*
-	 * Initialize Transmit Descriptors
-	 */
-	memset(txring->alloc, 0, TX_RING_ALLOC_SIZE(jme->tx_ring_size));
-
 	return 0;
 
 err_free_txring:
diff --git a/drivers/net/ethernet/marvell/skge.c b/drivers/net/ethernet/marvell/skge.c
index 35a92fd2cf39..9ac854c2b371 100644
--- a/drivers/net/ethernet/marvell/skge.c
+++ b/drivers/net/ethernet/marvell/skge.c
@@ -2558,8 +2558,6 @@ static int skge_up(struct net_device *dev)
 		goto free_pci_mem;
 	}
 
-	memset(skge->mem, 0, skge->mem_size);
-
 	err = skge_ring_alloc(&skge->rx_ring, skge->mem, skge->dma);
 	if (err)
 		goto free_pci_mem;
diff --git a/drivers/net/ethernet/mellanox/mlx4/eq.c b/drivers/net/ethernet/mellanox/mlx4/eq.c
index a5be27772b8e..c790a5fcea73 100644
--- a/drivers/net/ethernet/mellanox/mlx4/eq.c
+++ b/drivers/net/ethernet/mellanox/mlx4/eq.c
@@ -1013,8 +1013,6 @@ static int mlx4_create_eq(struct mlx4_dev *dev, int nent,
 
 		dma_list[i] = t;
 		eq->page_list[i].map = t;
-
-		memset(eq->page_list[i].buf, 0, PAGE_SIZE);
 	}
 
 	eq->eqn = mlx4_bitmap_alloc(&priv->eq_table.bitmap);
diff --git a/drivers/net/ethernet/mellanox/mlx5/core/eswitch.c b/drivers/net/ethernet/mellanox/mlx5/core/eswitch.c
index 6a921e24cd5e..587c51fa3985 100644
--- a/drivers/net/ethernet/mellanox/mlx5/core/eswitch.c
+++ b/drivers/net/ethernet/mellanox/mlx5/core/eswitch.c
@@ -2391,7 +2391,6 @@ int mlx5_eswitch_get_vport_stats(struct mlx5_eswitch *esw,
 	MLX5_SET(query_vport_counter_in, in, vport_number, vport->vport);
 	MLX5_SET(query_vport_counter_in, in, other_vport, 1);
 
-	memset(out, 0, outlen);
 	err = mlx5_cmd_exec(esw->dev, in, sizeof(in), out, outlen);
 	if (err)
 		goto free_out;
diff --git a/drivers/net/ethernet/mellanox/mlx5/core/eswitch_offloads.c b/drivers/net/ethernet/mellanox/mlx5/core/eswitch_offloads.c
index 47b446d30f71..ef5fe3bd95f9 100644
--- a/drivers/net/ethernet/mellanox/mlx5/core/eswitch_offloads.c
+++ b/drivers/net/ethernet/mellanox/mlx5/core/eswitch_offloads.c
@@ -993,7 +993,6 @@ static int esw_create_offloads_fdb_tables(struct mlx5_eswitch *esw, int nvports)
 	}
 
 	/* create send-to-vport group */
-	memset(flow_group_in, 0, inlen);
 	MLX5_SET(create_flow_group_in, flow_group_in, match_criteria_enable,
 		 MLX5_MATCH_MISC_PARAMETERS);
 
@@ -1151,7 +1150,6 @@ static int esw_create_vport_rx_group(struct mlx5_eswitch *esw, int nvports)
 		return -ENOMEM;
 
 	/* create vport rx group */
-	memset(flow_group_in, 0, inlen);
 	MLX5_SET(create_flow_group_in, flow_group_in, match_criteria_enable,
 		 MLX5_MATCH_MISC_PARAMETERS);
 
diff --git a/drivers/net/ethernet/mellanox/mlxsw/pci.c b/drivers/net/ethernet/mellanox/mlxsw/pci.c
index b40455f8293d..be310ac0883a 100644
--- a/drivers/net/ethernet/mellanox/mlxsw/pci.c
+++ b/drivers/net/ethernet/mellanox/mlxsw/pci.c
@@ -835,7 +835,6 @@ static int mlxsw_pci_queue_init(struct mlxsw_pci *mlxsw_pci, char *mbox,
 					     &mem_item->mapaddr);
 	if (!mem_item->buf)
 		return -ENOMEM;
-	memset(mem_item->buf, 0, mem_item->size);
 
 	q->elem_info = kcalloc(q->count, sizeof(*q->elem_info), GFP_KERNEL);
 	if (!q->elem_info) {
diff --git a/drivers/net/ethernet/neterion/s2io.c b/drivers/net/ethernet/neterion/s2io.c
index 3b2ae1a21678..e0b2bf327905 100644
--- a/drivers/net/ethernet/neterion/s2io.c
+++ b/drivers/net/ethernet/neterion/s2io.c
@@ -747,7 +747,6 @@ static int init_shared_mem(struct s2io_nic *nic)
 				return -ENOMEM;
 			}
 			mem_allocated += size;
-			memset(tmp_v_addr, 0, size);
 
 			size = sizeof(struct rxd_info) *
 				rxd_count[nic->rxd_mode];
diff --git a/drivers/net/ethernet/qlogic/netxen/netxen_nic_ctx.c b/drivers/net/ethernet/qlogic/netxen/netxen_nic_ctx.c
index 433052f734ed..5e9f8ee99800 100644
--- a/drivers/net/ethernet/qlogic/netxen/netxen_nic_ctx.c
+++ b/drivers/net/ethernet/qlogic/netxen/netxen_nic_ctx.c
@@ -442,10 +442,8 @@ nx_fw_cmd_create_tx_ctx(struct netxen_adapter *adapter)
 		goto out_free_rq;
 	}
 
-	memset(rq_addr, 0, rq_size);
 	prq = rq_addr;
 
-	memset(rsp_addr, 0, rsp_size);
 	prsp = rsp_addr;
 
 	prq->host_rsp_dma_addr = cpu_to_le64(rsp_phys_addr);
@@ -755,7 +753,6 @@ int netxen_alloc_hw_resources(struct netxen_adapter *adapter)
 		return -ENOMEM;
 	}
 
-	memset(addr, 0, sizeof(struct netxen_ring_ctx));
 	recv_ctx->hwctx = addr;
 	recv_ctx->hwctx->ctx_id = cpu_to_le32(port);
 	recv_ctx->hwctx->cmd_consumer_offset =
diff --git a/drivers/net/ethernet/ti/tlan.c b/drivers/net/ethernet/ti/tlan.c
index b4ab1a5f6cd0..78f0f2d59e22 100644
--- a/drivers/net/ethernet/ti/tlan.c
+++ b/drivers/net/ethernet/ti/tlan.c
@@ -855,7 +855,6 @@ static int tlan_init(struct net_device *dev)
 		       dev->name);
 		return -ENOMEM;
 	}
-	memset(priv->dma_storage, 0, dma_size);
 	priv->rx_list = (struct tlan_list *)
 		ALIGN((unsigned long)priv->dma_storage, 8);
 	priv->rx_list_dma = ALIGN(priv->dma_storage_dma, 8);
diff --git a/drivers/net/hippi/rrunner.c b/drivers/net/hippi/rrunner.c
index 7b9350dbebdd..2a6ec5394966 100644
--- a/drivers/net/hippi/rrunner.c
+++ b/drivers/net/hippi/rrunner.c
@@ -1196,7 +1196,6 @@ static int rr_open(struct net_device *dev)
 		goto error;
 	}
 	rrpriv->rx_ctrl_dma = dma_addr;
-	memset(rrpriv->rx_ctrl, 0, 256*sizeof(struct ring_ctrl));
 
 	rrpriv->info = pci_alloc_consistent(pdev, sizeof(struct rr_info),
 					    &dma_addr);
@@ -1205,7 +1204,6 @@ static int rr_open(struct net_device *dev)
 		goto error;
 	}
 	rrpriv->info_dma = dma_addr;
-	memset(rrpriv->info, 0, sizeof(struct rr_info));
 	wmb();
 
 	spin_lock_irqsave(&rrpriv->lock, flags);
diff --git a/drivers/net/vmxnet3/vmxnet3_drv.c b/drivers/net/vmxnet3/vmxnet3_drv.c
index 89984fcab01e..a5ba7ed07e9c 100644
--- a/drivers/net/vmxnet3/vmxnet3_drv.c
+++ b/drivers/net/vmxnet3/vmxnet3_drv.c
@@ -3429,7 +3429,6 @@ vmxnet3_probe_device(struct pci_dev *pdev,
 			err = -ENOMEM;
 			goto err_ver;
 		}
-		memset(adapter->coal_conf, 0, sizeof(*adapter->coal_conf));
 		adapter->coal_conf->coalMode = VMXNET3_COALESCE_DISABLED;
 		adapter->default_coal_mode = true;
 	}
diff --git a/drivers/net/wireless/ath/ath10k/ce.c b/drivers/net/wireless/ath/ath10k/ce.c
index eca87f7c5b6c..294fbc1e89ab 100644
--- a/drivers/net/wireless/ath/ath10k/ce.c
+++ b/drivers/net/wireless/ath/ath10k/ce.c
@@ -1704,9 +1704,6 @@ ath10k_ce_alloc_dest_ring_64(struct ath10k *ar, unsigned int ce_id,
 	/* Correctly initialize memory to 0 to prevent garbage
 	 * data crashing system when download firmware
 	 */
-	memset(dest_ring->base_addr_owner_space_unaligned, 0,
-	       nentries * sizeof(struct ce_desc_64) + CE_DESC_RING_ALIGN);
-
 	dest_ring->base_addr_owner_space =
 			PTR_ALIGN(dest_ring->base_addr_owner_space_unaligned,
 				  CE_DESC_RING_ALIGN);
@@ -2019,8 +2016,6 @@ void ath10k_ce_alloc_rri(struct ath10k *ar)
 		value |= ar->hw_ce_regs->upd->mask;
 		ath10k_ce_write32(ar, ce_base_addr + ctrl1_regs, value);
 	}
-
-	memset(ce->vaddr_rri, 0, CE_COUNT * sizeof(u32));
 }
 EXPORT_SYMBOL(ath10k_ce_alloc_rri);
 
diff --git a/drivers/net/wireless/broadcom/brcm80211/brcmfmac/pcie.c b/drivers/net/wireless/broadcom/brcm80211/brcmfmac/pcie.c
index 83e4938527f4..3fc08fe7c3a2 100644
--- a/drivers/net/wireless/broadcom/brcm80211/brcmfmac/pcie.c
+++ b/drivers/net/wireless/broadcom/brcm80211/brcmfmac/pcie.c
@@ -1033,8 +1033,6 @@ brcmf_pcie_init_dmabuffer_for_device(struct brcmf_pciedev_info *devinfo,
 			       address & 0xffffffff);
 	brcmf_pcie_write_tcm32(devinfo, tcm_dma_phys_addr + 4, address >> 32);
 
-	memset(ring, 0, size);
-
 	return (ring);
 }
 
diff --git a/drivers/net/wireless/quantenna/qtnfmac/pcie/pearl_pcie.c b/drivers/net/wireless/quantenna/qtnfmac/pcie/pearl_pcie.c
index 3aa3714d4dfd..5ec1c9bc1612 100644
--- a/drivers/net/wireless/quantenna/qtnfmac/pcie/pearl_pcie.c
+++ b/drivers/net/wireless/quantenna/qtnfmac/pcie/pearl_pcie.c
@@ -244,8 +244,6 @@ static int pearl_alloc_bd_table(struct qtnf_pcie_pearl_state *ps)
 
 	/* tx bd */
 
-	memset(vaddr, 0, len);
-
 	ps->bd_table_vaddr = vaddr;
 	ps->bd_table_paddr = paddr;
 	ps->bd_table_len = len;
diff --git a/drivers/net/wireless/quantenna/qtnfmac/pcie/topaz_pcie.c b/drivers/net/wireless/quantenna/qtnfmac/pcie/topaz_pcie.c
index 9a4380ed7f1b..1f91088e3dff 100644
--- a/drivers/net/wireless/quantenna/qtnfmac/pcie/topaz_pcie.c
+++ b/drivers/net/wireless/quantenna/qtnfmac/pcie/topaz_pcie.c
@@ -199,8 +199,6 @@ static int topaz_alloc_bd_table(struct qtnf_pcie_topaz_state *ts,
 	if (!vaddr)
 		return -ENOMEM;
 
-	memset(vaddr, 0, len);
-
 	/* tx bd */
 
 	ts->tx_bd_vbase = vaddr;
-- 
2.11.0


_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k

Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BB5CA1EA771
	for <lists+ath10k@lfdr.de>; Mon,  1 Jun 2020 17:59:38 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Subject:To:From
	:Date:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=Y4bezEoZx6rI0r9+mfltpmUDKvxpYkj49gw/QKlvOaA=; b=iBeofVNvJixwOC
	wvWObuFt/8QCITevwQuZQn7+KEkWdkKkp3MTpcOmJmUk/2CRfWeoU/Mi3txOjJCR7EZRS5J3wYrgC
	WLqSrOG5crUSUW0goHFGsggdFCYEuBJ/XBohQC+U21yAIYQEpPJsSrf9iif1m3A11ImjIPOg6d2aU
	69ukzx8m294kimcuIwFsewinL3hoRSdBqr64Pia8hQ32y3RbkygiXzuUackrsxko0IgBLE4lJYSWu
	Lf5wQMHrbZUT3Gt+nDqP51QNbZ5HrpA+3Wv0gMDCYk0UsFjbGFXLQRctJqNwdBfgf2XIv9Y8UnU2R
	Ux55BHTH+vAUhJAPaWUg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jfmqb-0004GQ-UF; Mon, 01 Jun 2020 15:59:33 +0000
Received: from mga11.intel.com ([192.55.52.93])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jfmqY-0004FP-2e
 for ath10k@lists.infradead.org; Mon, 01 Jun 2020 15:59:31 +0000
IronPort-SDR: uUtxMahtFnVoZsJ0Xn+HvXGW3MYn/jsg0Wgjn4hWTPx6kg4V6r/uJ+PI2Gb/yKFD0DaQbsYrGr
 U0f3A/F1W0HQ==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Jun 2020 08:59:27 -0700
IronPort-SDR: FQY+apHD0ei/HbqJfAxKSMxp7UcB4OzIYgq/9NdCjeGVmx/OFq3NxETkIjBooBa+An+5SXYTN8
 D7LOqRvYgjKw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,461,1583222400"; d="scan'208";a="303930940"
Received: from lkp-server01.sh.intel.com (HELO 78d03bb9d680) ([10.239.97.150])
 by orsmga008.jf.intel.com with ESMTP; 01 Jun 2020 08:59:26 -0700
Received: from kbuild by 78d03bb9d680 with local (Exim 4.92)
 (envelope-from <lkp@intel.com>)
 id 1jfmqT-00005O-JQ; Mon, 01 Jun 2020 15:59:25 +0000
Date: Mon, 01 Jun 2020 23:58:54 +0800
From: kbuild test robot <lkp@intel.com>
To: Kalle Valo <kvalo@codeaurora.org>
Subject: [ath6kl:master-pending] BUILD SUCCESS
 6fe1ed81020e3ee70da97bc7932c45df281cd6a7
Message-ID: <5ed525be.zAVM5LZIDd1bSUDg%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200601_085930_150430_CBE8BB75 
X-CRM114-Status: UNSURE (   6.12  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -3.2 (---)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-3.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [192.55.52.93 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 1.8 LONGWORDS              Long string of long words
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
Cc: ath10k@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "ath10k" <ath10k-bounces@lists.infradead.org>
Errors-To: ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/kvalo/ath.git  master-pending
branch HEAD: 6fe1ed81020e3ee70da97bc7932c45df281cd6a7  Merge branch 'pending' into master-pending

i386-tinyconfig vmlinux size:

+-------+------------------------------------+---------------------------------------------------------+
| DELTA |               SYMBOL               |                         COMMIT                          |
+-------+------------------------------------+---------------------------------------------------------+
|  +220 | TOTAL                              | b2a5ac927378..6fe1ed81020e (ALL COMMITS)                |
|  +216 | TOTAL                              | 6fe1ed81020e Merge branch 'pending' into master-pending |
|  +217 | TEXT                               | 6fe1ed81020e Merge branch 'pending' into master-pending |
|  +136 | arch/x86/events/zhaoxin/built-in.* | 7f69bf1ddcc3 Merge branch 'ath-next'                    |
|  +109 | copy_xstate_to_kernel()            | 6fe1ed81020e Merge branch 'pending' into master-pending |
|   +96 | copy_part()                        | 6fe1ed81020e Merge branch 'pending' into master-pending |
+-------+------------------------------------+---------------------------------------------------------+

elapsed time: 481m

configs tested: 87
configs skipped: 3

The following configs have been built successfully.
More configs may be tested in the coming days.

arm                                 defconfig
arm                              allyesconfig
arm                              allmodconfig
arm                               allnoconfig
arm64                            allyesconfig
arm64                               defconfig
arm64                            allmodconfig
arm64                             allnoconfig
h8300                       h8s-sim_defconfig
arm                       imx_v4_v5_defconfig
mips                     decstation_defconfig
arm                          collie_defconfig
powerpc                       maple_defconfig
powerpc                      chrp32_defconfig
arm                      footbridge_defconfig
arm                          ixp4xx_defconfig
i386                              allnoconfig
i386                             allyesconfig
i386                                defconfig
i386                              debian-10.3
ia64                             allmodconfig
ia64                                defconfig
ia64                              allnoconfig
ia64                             allyesconfig
m68k                             allmodconfig
m68k                              allnoconfig
m68k                           sun3_defconfig
m68k                                defconfig
m68k                             allyesconfig
nios2                               defconfig
nios2                            allyesconfig
openrisc                            defconfig
c6x                              allyesconfig
c6x                               allnoconfig
openrisc                         allyesconfig
nds32                               defconfig
nds32                             allnoconfig
csky                             allyesconfig
csky                                defconfig
alpha                               defconfig
alpha                            allyesconfig
xtensa                           allyesconfig
h8300                            allyesconfig
h8300                            allmodconfig
xtensa                              defconfig
arc                                 defconfig
arc                              allyesconfig
sh                               allmodconfig
sh                                allnoconfig
microblaze                        allnoconfig
mips                             allyesconfig
mips                              allnoconfig
mips                             allmodconfig
parisc                            allnoconfig
parisc                              defconfig
parisc                           allyesconfig
parisc                           allmodconfig
powerpc                             defconfig
powerpc                          allyesconfig
powerpc                          rhel-kconfig
powerpc                          allmodconfig
powerpc                           allnoconfig
riscv                            allyesconfig
riscv                             allnoconfig
riscv                               defconfig
riscv                            allmodconfig
s390                             allyesconfig
s390                              allnoconfig
s390                             allmodconfig
s390                                defconfig
sparc                            allyesconfig
sparc                               defconfig
sparc64                             defconfig
sparc64                           allnoconfig
sparc64                          allyesconfig
sparc64                          allmodconfig
um                                allnoconfig
um                               allyesconfig
um                                  defconfig
um                               allmodconfig
x86_64                                   rhel
x86_64                               rhel-7.6
x86_64                    rhel-7.6-kselftests
x86_64                         rhel-7.2-clear
x86_64                                    lkp
x86_64                              fedora-25
x86_64                                  kexec

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org

_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k

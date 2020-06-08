Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 57B251F2AFB
	for <lists+ath10k@lfdr.de>; Tue,  9 Jun 2020 02:15:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Subject:To:From
	:Date:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=pYjgu8Sf7VnhnobHEbHnWUiOKXQzb30AiYnMgFx7c/A=; b=m8TYc9/Q1QYGuK
	AZLb+Aul9+fxjGcFcNHMFHMANthZEoL3Qhj9jMmEYoIFB7bzXzCgWIETB4LFo4tm7fDpTss67sNyf
	e3FMKADsOM6GhVtOeRnANCqAjmLCrOiYNsdz42oixdQ9ChFU70nIY4ZivXLs8CDyCQKqLPKYTUS9B
	6m3A/QwA9HL0zPfFKS7LikaQ/nRZwM8OOIv3SF+qiqh8yXHOuWe1Cx10sjbkksRPWPqTx/A7dcrda
	7fyeletoVVHHEcLJHu2mUUWOt2022KSgPpkW8PWd3whudTuh6pQf4XEXLcGzMPEfOyS5tu23zrH8Y
	yAYjeBwWT9D+yqZLv+eQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jiRvL-0005Pm-OV; Tue, 09 Jun 2020 00:15:27 +0000
Received: from mga09.intel.com ([134.134.136.24])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jiRvH-0005OI-Fz
 for ath10k@lists.infradead.org; Tue, 09 Jun 2020 00:15:25 +0000
IronPort-SDR: Qt8pzi8MQBWZKdl71sUcHb5G9XUBYcS0ekmIOWgVUXZYnUsHKINMe4mbE9YE2pyMIUVbvd1Jpz
 Pi0zeqKjqi3g==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Jun 2020 17:15:21 -0700
IronPort-SDR: q+gLL33aEnnXmZO0GTwDtUfGvnfIR3JDgEioDsSHIhP7fGXZd0WSVyhHtDoVY9E1qVxbYSZ8ey
 FqTVghV9HVcA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,489,1583222400"; d="scan'208";a="258841957"
Received: from lkp-server01.sh.intel.com (HELO 12d5c0ac8e64) ([10.239.97.150])
 by fmsmga007.fm.intel.com with ESMTP; 08 Jun 2020 17:15:20 -0700
Received: from kbuild by 12d5c0ac8e64 with local (Exim 4.92)
 (envelope-from <lkp@intel.com>)
 id 1jiRvD-00001J-DK; Tue, 09 Jun 2020 00:15:19 +0000
Date: Tue, 09 Jun 2020 01:33:46 +0800
From: kernel test robot <lkp@intel.com>
To: Kalle Valo <kvalo@codeaurora.org>
Subject: [ath6kl:ath11k-qca6390-bringup] BUILD SUCCESS
 132d04765d2a4aca6d30f6f8b7648bf3e2d91449
Message-ID: <5ede767a.J2Fr6phdE0o/ebei%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200608_171523_575535_EEFABD6C 
X-CRM114-Status: UNSURE (   5.87  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.1 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [134.134.136.24 listed in list.dnswl.org]
 1.1 DATE_IN_PAST_06_12     Date: is 6 to 12 hours before Received: date
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [134.134.136.24 listed in wl.mailspike.net]
 1.8 LONGWORDS              Long string of long words
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/kvalo/ath.git  ath11k-qca6390-bringup
branch HEAD: 132d04765d2a4aca6d30f6f8b7648bf3e2d91449  HACK: ath11k: workaround for pktlog handling on QCA6390

elapsed time: 483m

configs tested: 166
configs skipped: 15

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
m68k                         amcore_defconfig
mips                       rbtx49xx_defconfig
um                                  defconfig
sh                     magicpanelr2_defconfig
powerpc                      ep88xc_defconfig
sh                ecovec24-romimage_defconfig
sparc64                          allmodconfig
powerpc                  mpc885_ads_defconfig
mips                           xway_defconfig
arm                       cns3420vb_defconfig
m68k                          sun3x_defconfig
sparc                       sparc32_defconfig
riscv                          rv32_defconfig
arm                           h3600_defconfig
powerpc                    mvme5100_defconfig
openrisc                 simple_smp_defconfig
arm                           efm32_defconfig
arm                        vexpress_defconfig
xtensa                          iss_defconfig
mips                  decstation_64_defconfig
sh                           cayman_defconfig
sh                           se7705_defconfig
mips                     decstation_defconfig
csky                             allyesconfig
arm                              zx_defconfig
mips                        nlm_xlr_defconfig
sh                             shx3_defconfig
c6x                        evmc6678_defconfig
arc                 nsimosci_hs_smp_defconfig
arm                        mvebu_v5_defconfig
arm                          iop32x_defconfig
arm                            mps2_defconfig
openrisc                         allyesconfig
openrisc                            defconfig
sh                           se7619_defconfig
mips                  cavium_octeon_defconfig
nds32                               defconfig
sparc64                             defconfig
sh                           se7343_defconfig
mips                         tb0226_defconfig
h8300                    h8300h-sim_defconfig
arc                          axs101_defconfig
sh                           se7724_defconfig
arm                       aspeed_g5_defconfig
arm                            dove_defconfig
xtensa                           alldefconfig
arm                         shannon_defconfig
um                                allnoconfig
arm                         socfpga_defconfig
arc                                 defconfig
sh                   sh7724_generic_defconfig
powerpc                    amigaone_defconfig
arc                        nsim_700_defconfig
arm                          exynos_defconfig
arm                            qcom_defconfig
sh                             espt_defconfig
powerpc                     mpc512x_defconfig
arm                     davinci_all_defconfig
mips                  maltasmvp_eva_defconfig
arm                            xcep_defconfig
arm                         mv78xx0_defconfig
c6x                        evmc6457_defconfig
m68k                        mvme16x_defconfig
s390                             allmodconfig
ia64                      gensparse_defconfig
arm                            zeus_defconfig
sh                           se7206_defconfig
sh                          rsk7203_defconfig
sh                          polaris_defconfig
arm                       omap2plus_defconfig
i386                             alldefconfig
parisc                generic-32bit_defconfig
arm                          ep93xx_defconfig
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
c6x                              allyesconfig
c6x                               allnoconfig
nds32                             allnoconfig
csky                                defconfig
alpha                               defconfig
alpha                            allyesconfig
xtensa                           allyesconfig
h8300                            allyesconfig
h8300                            allmodconfig
xtensa                              defconfig
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
powerpc                          allyesconfig
powerpc                          rhel-kconfig
powerpc                          allmodconfig
powerpc                           allnoconfig
powerpc                             defconfig
i386                 randconfig-a001-20200607
i386                 randconfig-a006-20200607
i386                 randconfig-a002-20200607
i386                 randconfig-a005-20200607
i386                 randconfig-a004-20200607
i386                 randconfig-a003-20200607
i386                 randconfig-a014-20200608
i386                 randconfig-a011-20200608
i386                 randconfig-a015-20200608
i386                 randconfig-a016-20200608
i386                 randconfig-a012-20200608
i386                 randconfig-a013-20200608
i386                 randconfig-a014-20200607
i386                 randconfig-a015-20200607
i386                 randconfig-a011-20200607
i386                 randconfig-a016-20200607
i386                 randconfig-a012-20200607
i386                 randconfig-a013-20200607
x86_64               randconfig-a002-20200607
x86_64               randconfig-a001-20200607
x86_64               randconfig-a006-20200607
x86_64               randconfig-a003-20200607
x86_64               randconfig-a004-20200607
x86_64               randconfig-a005-20200607
riscv                            allyesconfig
riscv                             allnoconfig
riscv                               defconfig
riscv                            allmodconfig
s390                             allyesconfig
s390                              allnoconfig
s390                                defconfig
sparc                            allyesconfig
sparc                               defconfig
sparc64                           allnoconfig
sparc64                          allyesconfig
um                               allmodconfig
um                               allyesconfig
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

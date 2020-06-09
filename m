Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 01EA91F3FA4
	for <lists+ath10k@lfdr.de>; Tue,  9 Jun 2020 17:42:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Subject:To:From
	:Date:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=cmv33U0b/YuLYuTn6sq+pZY+p66XYVOG+vtvPnMdMPw=; b=uP+MBaBGTKekyD
	95QnhYcBRtZTbFxm4Hu6oxKUkuiIySFaV0hpvJGPJORe1ClgB86/F6yA1762utcZS+90iQzC4rgSN
	YvYKzZ8qOaU8VGWruTCz/XHMcqR6zb4FdpTIb6oI5zMy1XtJy8G2zKaabyBEh/sDmekkRrct0Mw1K
	Htp2U2AOQ27mV/8R3RoFO+08XfjcVG+myLnJPWbpgTD3RSir0u8F0e9CFDOaFHKR/HHnuLzvfDD+r
	gOU9gmk9BPZWhysyLiUn3NO60hAkguImR/iESSUzzU+iBzufG6MkQadQGkJt+95Yvg1dycucX7WdK
	h/rM2/cM3MVBvlx5FCbg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jigO2-0004uP-3t; Tue, 09 Jun 2020 15:42:02 +0000
Received: from mga14.intel.com ([192.55.52.115])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jigNv-0004rp-Jp
 for ath10k@lists.infradead.org; Tue, 09 Jun 2020 15:41:57 +0000
IronPort-SDR: UqDVV0Bfo4MtF15BANAjUyGBvVmsGmRw2x2UxMkqNdfRhfbguKctJGcB5aJ2GdXvzTFiE4Pt1t
 4daoMt7kY8/Q==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Jun 2020 08:41:55 -0700
IronPort-SDR: vq7iWPchFJAwwYgRBNVHLzyzMg7NGzVE2zqd3gWUOT1XTpzXhYVQP5M1hr7XiQIqYqE4naNDgd
 JeLyaAQNlFyQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,492,1583222400"; d="scan'208";a="259024334"
Received: from lkp-server01.sh.intel.com (HELO 4a187143b92d) ([10.239.97.150])
 by fmsmga007.fm.intel.com with ESMTP; 09 Jun 2020 08:41:53 -0700
Received: from kbuild by 4a187143b92d with local (Exim 4.92)
 (envelope-from <lkp@intel.com>)
 id 1jigNt-00003S-5i; Tue, 09 Jun 2020 15:41:53 +0000
Date: Tue, 09 Jun 2020 23:41:44 +0800
From: kernel test robot <lkp@intel.com>
To: Kalle Valo <kvalo@codeaurora.org>
Subject: [ath6kl:master] BUILD SUCCESS 1318a212e716ce576233ab7a17722938b34497cd
Message-ID: <5edfadb8.AE7o6Qq1/EfqJoJq%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200609_084155_702089_8C468EA1 
X-CRM114-Status: UNSURE (   5.12  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -3.2 (---)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-3.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [192.55.52.115 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/kvalo/ath.git  master
branch HEAD: 1318a212e716ce576233ab7a17722938b34497cd  Add localversion-wireless-testing-ath

i386-tinyconfig vmlinux size:

=======================================================================================================
 TOTAL  TEXT  copy_xstate_to_kernel()  copy_part()                                                     
=======================================================================================================
  +216  +217                     +109          +96  dde2209f0066 Merge branch 'ath-next'               
    +4     0                        0            0  1318a212e716 Add localversion-wireless-testing-ath 
  +220  +217                     +109          +96  b2a5ac927378..1318a212e716 (ALL COMMITS)           
=======================================================================================================

elapsed time: 501m

configs tested: 173
configs skipped: 13

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
sparc                            allyesconfig
arm                           efm32_defconfig
arm                        vexpress_defconfig
xtensa                          iss_defconfig
mips                  decstation_64_defconfig
sh                           cayman_defconfig
sh                           se7705_defconfig
mips                     decstation_defconfig
arm                              zx_defconfig
mips                        nlm_xlr_defconfig
sh                             shx3_defconfig
c6x                        evmc6678_defconfig
arc                 nsimosci_hs_smp_defconfig
arm                        mvebu_v5_defconfig
arm                          iop32x_defconfig
arm                            mps2_defconfig
sh                 kfr2r09-romimage_defconfig
arm                          moxart_defconfig
arc                         haps_hs_defconfig
m68k                            mac_defconfig
c6x                               allnoconfig
arm                        oxnas_v6_defconfig
arm                    vt8500_v6_v7_defconfig
mips                         tb0219_defconfig
m68k                        mvme16x_defconfig
mips                          malta_defconfig
arc                          axs101_defconfig
sh                           se7724_defconfig
arm                       aspeed_g5_defconfig
arm                            dove_defconfig
xtensa                           alldefconfig
arm                         shannon_defconfig
um                                allnoconfig
arm                         socfpga_defconfig
sh                   sh7724_generic_defconfig
arc                            hsdk_defconfig
m68k                        m5272c3_defconfig
m68k                        stmark2_defconfig
nios2                            alldefconfig
nios2                         10m50_defconfig
mips                 pnx8335_stb225_defconfig
ia64                                defconfig
mips                      malta_kvm_defconfig
c6x                         dsk6455_defconfig
arm                            qcom_defconfig
sh                             espt_defconfig
powerpc                          allmodconfig
powerpc                     mpc512x_defconfig
arm                     davinci_all_defconfig
mips                  maltasmvp_eva_defconfig
arm                            xcep_defconfig
arm                         mv78xx0_defconfig
c6x                        evmc6457_defconfig
ia64                      gensparse_defconfig
h8300                       h8s-sim_defconfig
mips                            ar7_defconfig
powerpc                          g5_defconfig
m68k                       bvme6000_defconfig
arm                       omap2plus_defconfig
i386                             alldefconfig
s390                              allnoconfig
parisc                generic-32bit_defconfig
arm                          ep93xx_defconfig
s390                                defconfig
xtensa                         virt_defconfig
powerpc                 mpc8272_ads_defconfig
c6x                                 defconfig
mips                         cobalt_defconfig
mips                        nlm_xlp_defconfig
i386                              allnoconfig
i386                             allyesconfig
i386                                defconfig
i386                              debian-10.3
ia64                             allmodconfig
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
powerpc                          allyesconfig
powerpc                          rhel-kconfig
powerpc                           allnoconfig
powerpc                             defconfig
i386                 randconfig-a001-20200607
i386                 randconfig-a006-20200607
i386                 randconfig-a002-20200607
i386                 randconfig-a005-20200607
i386                 randconfig-a004-20200607
i386                 randconfig-a003-20200607
i386                 randconfig-a001-20200609
i386                 randconfig-a002-20200609
i386                 randconfig-a006-20200609
i386                 randconfig-a005-20200609
i386                 randconfig-a003-20200609
i386                 randconfig-a004-20200609
i386                 randconfig-a014-20200607
i386                 randconfig-a015-20200607
i386                 randconfig-a011-20200607
i386                 randconfig-a016-20200607
i386                 randconfig-a012-20200607
i386                 randconfig-a013-20200607
riscv                            allyesconfig
riscv                             allnoconfig
riscv                               defconfig
riscv                            allmodconfig
s390                             allyesconfig
s390                             allmodconfig
sparc                               defconfig
sparc64                             defconfig
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

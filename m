Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 40D741BCF25
	for <lists+ath10k@lfdr.de>; Tue, 28 Apr 2020 23:52:28 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Subject:To:From
	:Date:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=2S/NLZg5nwAbc7xrBw++AKUmxXTYH/TzfyJRo1u8wh4=; b=h8AFxU+udF7AHm
	I/MW+oCLmoFKMWXGPVjFFdK6YyPqDrqM5pt1/iPIQJEb+GN3GKRMV3FDnRycD2tibGX9l00XlWdQw
	QDyGaot8/CvGwWKG8tIRh1Gvf/vhOVWHwnpb6z8YVNXbom2vF1CmkdQw0iwfnoVuB7VekHxfs7l7B
	RY93KqxNgo1cQgyOkRzIfq27IKnZEgKxfOynxgLl4D3CVR2cMjhrOCYyMEdKejb1YAu8mIihZbogN
	h9Mg4qeCkhLdw0itKkH2Bue/yYqvPuiuMZDdoBb8YTO04fBTUNdlEJcykC4eTYzERlOCIvcjsIaWF
	jxY2ZyOWI8eNsjLZ/oJQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jTY9O-0001jE-Ud; Tue, 28 Apr 2020 21:52:22 +0000
Received: from mga09.intel.com ([134.134.136.24])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jTY9J-0001hw-Pj
 for ath10k@lists.infradead.org; Tue, 28 Apr 2020 21:52:19 +0000
IronPort-SDR: mvu96tgJZm+WxNLFV2ru79bPHHT7EY4Fr6na1M00iuLhTK/t7yO2Qq5XDsiqllUCZFEdvzCqkD
 5O4PIpElhLSA==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Apr 2020 14:52:16 -0700
IronPort-SDR: hyV/TwmGTic8JGCaJyfqYXom1APRCU7czx1opAgwQgDd9NZPEys5hhL2Iizea+0tWLOa6tYSz6
 jgCVljOxF8qQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,328,1583222400"; d="scan'208";a="246641385"
Received: from lkp-server01.sh.intel.com (HELO lkp-server01) ([10.239.97.150])
 by orsmga007.jf.intel.com with ESMTP; 28 Apr 2020 14:52:15 -0700
Received: from kbuild by lkp-server01 with local (Exim 4.89)
 (envelope-from <lkp@intel.com>)
 id 1jTY9G-000A1B-R3; Wed, 29 Apr 2020 05:52:14 +0800
Date: Wed, 29 Apr 2020 05:51:36 +0800
From: kbuild test robot <lkp@intel.com>
To: Kalle Valo <kvalo@codeaurora.org>
Subject: [ath6kl:pending] BUILD SUCCESS
 c14039cfc85fb00cb2d0a86536dff50c8ec4f1ae
Message-ID: <5ea8a568.POnpkjigIzeLo6Ov%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200428_145217_888460_54C3E8D4 
X-CRM114-Status: UNSURE (   6.16  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.0 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [134.134.136.24 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [134.134.136.24 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 3.0 HEXHASH_WORD           Multiple instances of word + hexadecimal hash
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

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/kvalo/ath.git  pending
branch HEAD: c14039cfc85fb00cb2d0a86536dff50c8ec4f1ae  carl9170: remove P2P_GO support

elapsed time: 481m

configs tested: 167
configs skipped: 0

The following configs have been built successfully.
More configs may be tested in the coming days.

arm64                            allyesconfig
arm                              allyesconfig
arm64                            allmodconfig
arm                              allmodconfig
arm64                             allnoconfig
arm                               allnoconfig
arm                           efm32_defconfig
arm                         at91_dt_defconfig
arm                        shmobile_defconfig
arm64                               defconfig
arm                          exynos_defconfig
arm                        multi_v5_defconfig
arm                           sunxi_defconfig
arm                        multi_v7_defconfig
sparc                            allyesconfig
um                             i386_defconfig
m68k                             allmodconfig
mips                       capcella_defconfig
microblaze                      mmu_defconfig
mips                         tb0287_defconfig
ia64                             allmodconfig
mips                           ip32_defconfig
powerpc                           allnoconfig
i386                             allyesconfig
ia64                              allnoconfig
i386                              allnoconfig
i386                             alldefconfig
i386                                defconfig
i386                              debian-10.3
ia64                                defconfig
ia64                        generic_defconfig
ia64                          tiger_defconfig
ia64                         bigsur_defconfig
ia64                             allyesconfig
ia64                             alldefconfig
nios2                         3c120_defconfig
nios2                         10m50_defconfig
c6x                        evmc6678_defconfig
xtensa                          iss_defconfig
c6x                              allyesconfig
xtensa                       common_defconfig
openrisc                 simple_smp_defconfig
openrisc                    or1ksim_defconfig
nds32                               defconfig
nds32                             allnoconfig
csky                                defconfig
alpha                               defconfig
h8300                       h8s-sim_defconfig
h8300                     edosk2674_defconfig
m68k                       m5475evb_defconfig
h8300                    h8300h-sim_defconfig
m68k                           sun3_defconfig
m68k                          multi_defconfig
arc                                 defconfig
arc                              allyesconfig
powerpc                             defconfig
powerpc                       ppc64_defconfig
powerpc                          rhel-kconfig
microblaze                    nommu_defconfig
mips                      fuloong2e_defconfig
mips                      malta_kvm_defconfig
mips                            ar7_defconfig
mips                             allyesconfig
mips                         64r6el_defconfig
mips                              allnoconfig
mips                           32r2_defconfig
mips                             allmodconfig
mips                malta_kvm_guest_defconfig
mips                  decstation_64_defconfig
mips                      loongson3_defconfig
mips                          ath79_defconfig
mips                        bcm63xx_defconfig
parisc                            allnoconfig
parisc                generic-64bit_defconfig
parisc                generic-32bit_defconfig
parisc                           allyesconfig
parisc                           allmodconfig
parisc               randconfig-a001-20200428
m68k                 randconfig-a001-20200428
alpha                randconfig-a001-20200428
nds32                randconfig-a001-20200428
riscv                randconfig-a001-20200428
nios2                randconfig-a001-20200428
h8300                randconfig-a001-20200428
c6x                  randconfig-a001-20200428
sparc64              randconfig-a001-20200428
microblaze           randconfig-a001-20200428
sh                   randconfig-a001-20200428
csky                 randconfig-a001-20200428
s390                 randconfig-a001-20200428
xtensa               randconfig-a001-20200428
openrisc             randconfig-a001-20200428
x86_64               randconfig-a001-20200428
i386                 randconfig-a003-20200428
x86_64               randconfig-a003-20200428
i386                 randconfig-a002-20200428
i386                 randconfig-a001-20200428
x86_64               randconfig-a002-20200428
i386                 randconfig-b002-20200428
i386                 randconfig-b001-20200428
i386                 randconfig-b003-20200428
x86_64               randconfig-b002-20200428
i386                 randconfig-c002-20200428
i386                 randconfig-c001-20200428
x86_64               randconfig-c001-20200428
i386                 randconfig-c003-20200428
x86_64               randconfig-c003-20200428
x86_64               randconfig-d001-20200428
i386                 randconfig-d002-20200428
i386                 randconfig-d001-20200428
x86_64               randconfig-d003-20200428
i386                 randconfig-d003-20200428
x86_64               randconfig-f002-20200428
i386                 randconfig-f002-20200428
i386                 randconfig-f003-20200428
x86_64               randconfig-f003-20200428
i386                 randconfig-f001-20200428
x86_64               randconfig-f001-20200428
i386                 randconfig-g003-20200428
x86_64               randconfig-g001-20200428
i386                 randconfig-g001-20200428
x86_64               randconfig-g002-20200428
i386                 randconfig-g002-20200428
x86_64               randconfig-g003-20200428
x86_64               randconfig-h001-20200428
i386                 randconfig-h003-20200428
x86_64               randconfig-h003-20200428
x86_64               randconfig-h002-20200428
i386                 randconfig-h001-20200428
i386                 randconfig-h002-20200428
sparc                randconfig-a001-20200428
ia64                 randconfig-a001-20200428
powerpc              randconfig-a001-20200428
arm64                randconfig-a001-20200428
arc                  randconfig-a001-20200428
riscv                            allyesconfig
riscv                    nommu_virt_defconfig
riscv                             allnoconfig
riscv                               defconfig
riscv                          rv32_defconfig
riscv                            allmodconfig
s390                       zfcpdump_defconfig
s390                          debug_defconfig
s390                             allyesconfig
s390                              allnoconfig
s390                             allmodconfig
s390                             alldefconfig
s390                                defconfig
sh                          rsk7269_defconfig
sh                               allmodconfig
sh                            titan_defconfig
sh                  sh7785lcr_32bit_defconfig
sh                                allnoconfig
sparc                               defconfig
sparc64                             defconfig
sparc64                           allnoconfig
sparc64                          allyesconfig
sparc64                          allmodconfig
um                           x86_64_defconfig
um                                  defconfig
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

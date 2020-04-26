Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BD5691B8ACC
	for <lists+ath10k@lfdr.de>; Sun, 26 Apr 2020 03:28:42 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Subject:To:From
	:Date:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=7oBuerIj4FY7+vNTTNsA1LwcMvn8JB8h8hhjHdIeMO8=; b=hU9TJKJl8tdKOT
	91ZMB5K2xUaX5nmPJJNIxrZvmSeeq+z/Kr6encR8Hdy5AK0NtFuQ9QWe1nW1EsnxZVHwZKpnzixIA
	OLXcjq3oWTrWU8TSF6rBB1myog3aOAoA+yN2OWIvpsT//r3/rOjrTAthYsVWZFOzvwkZMDPJNJoof
	TVKXalveP/Tbx6xuK1kmJqHb+yn1ZHP7IT/fo/dp+3FeqC28YSepPwN3eFwq3naBP/jidIUfsXq0x
	ZP8oah9zLugd3XIi8UcMyv96hOSnja0581/FsmfnQ4WDBYk9SVbubbGIgM7QRBH2udl/e3dsaNfEw
	pd6a6sSiKY1Y6mPk+h7g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jSW65-0005vh-7G; Sun, 26 Apr 2020 01:28:41 +0000
Received: from mga01.intel.com ([192.55.52.88])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jSW5x-0005tK-8V
 for ath10k@lists.infradead.org; Sun, 26 Apr 2020 01:28:34 +0000
IronPort-SDR: KjC823/1xA5eeRFS1v0UY5hL1zb1HsNOHaNfDHjj7F9A/zEcyNZhE05oS28cE48dXus6KaTtEP
 La34jmkRgVaQ==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Apr 2020 18:28:32 -0700
IronPort-SDR: Izz3akf7rDYfOKC3oCc+3JcNuGQQSX6p7RB9LS6M9GKfw1DWk3IZuC1XcehlvDwnz9E4cbsFss
 LScdUHFLseww==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,318,1583222400"; d="scan'208";a="260274032"
Received: from lkp-server01.sh.intel.com (HELO lkp-server01) ([10.239.97.150])
 by orsmga006.jf.intel.com with ESMTP; 25 Apr 2020 18:28:31 -0700
Received: from kbuild by lkp-server01 with local (Exim 4.89)
 (envelope-from <lkp@intel.com>)
 id 1jSW5u-000CXw-B6; Sun, 26 Apr 2020 09:28:30 +0800
Date: Sun, 26 Apr 2020 09:27:55 +0800
From: kbuild test robot <lkp@intel.com>
To: Kalle Valo <kvalo@codeaurora.org>
Subject: [ath6kl:master-pending] BUILD SUCCESS
 3fa9b8b59afe0ef7031ab47ec5704e4cb513ed60
Message-ID: <5ea4e39b.AjyJB6VRrWWnTe9R%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200425_182833_308838_A97956AF 
X-CRM114-Status: UNSURE (   5.44  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.0 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [192.55.52.88 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [192.55.52.88 listed in wl.mailspike.net]
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/kvalo/ath.git  master-pending
branch HEAD: 3fa9b8b59afe0ef7031ab47ec5704e4cb513ed60  Merge branch 'pending' into master-pending

elapsed time: 3132m

configs tested: 185
configs skipped: 0

The following configs have been built successfully.
More configs may be tested in the coming days.

arm                           efm32_defconfig
arm                         at91_dt_defconfig
arm                        shmobile_defconfig
arm64                               defconfig
arm                          exynos_defconfig
arm                        multi_v5_defconfig
arm                           sunxi_defconfig
arm                        multi_v7_defconfig
arm64                            allyesconfig
arm                              allyesconfig
arm64                            allmodconfig
arm                              allmodconfig
arm64                             allnoconfig
arm                               allnoconfig
sparc                            allyesconfig
powerpc                             defconfig
ia64                                defconfig
m68k                          multi_defconfig
ia64                         bigsur_defconfig
arc                              allyesconfig
sparc64                             defconfig
m68k                       m5475evb_defconfig
sh                  sh7785lcr_32bit_defconfig
m68k                           sun3_defconfig
c6x                              allyesconfig
mips                         tb0287_defconfig
c6x                        evmc6678_defconfig
powerpc                       ppc64_defconfig
riscv                             allnoconfig
mips                              allnoconfig
s390                              allnoconfig
ia64                          tiger_defconfig
nds32                             allnoconfig
i386                              allnoconfig
i386                             allyesconfig
i386                             alldefconfig
i386                                defconfig
i386                              debian-10.3
ia64                             allmodconfig
ia64                              allnoconfig
ia64                        generic_defconfig
ia64                             allyesconfig
ia64                             alldefconfig
nios2                         3c120_defconfig
nios2                         10m50_defconfig
xtensa                          iss_defconfig
xtensa                       common_defconfig
openrisc                 simple_smp_defconfig
openrisc                    or1ksim_defconfig
nds32                               defconfig
csky                                defconfig
alpha                               defconfig
h8300                       h8s-sim_defconfig
h8300                     edosk2674_defconfig
m68k                             allmodconfig
h8300                    h8300h-sim_defconfig
arc                                 defconfig
powerpc                          rhel-kconfig
microblaze                      mmu_defconfig
microblaze                    nommu_defconfig
powerpc                           allnoconfig
mips                      fuloong2e_defconfig
mips                      malta_kvm_defconfig
mips                            ar7_defconfig
mips                             allyesconfig
mips                         64r6el_defconfig
mips                           32r2_defconfig
mips                             allmodconfig
mips                malta_kvm_guest_defconfig
mips                       capcella_defconfig
mips                           ip32_defconfig
mips                  decstation_64_defconfig
mips                      loongson3_defconfig
mips                          ath79_defconfig
mips                        bcm63xx_defconfig
parisc                            allnoconfig
parisc                generic-64bit_defconfig
parisc                generic-32bit_defconfig
parisc                           allyesconfig
parisc                           allmodconfig
parisc               randconfig-a001-20200424
alpha                randconfig-a001-20200424
m68k                 randconfig-a001-20200424
riscv                randconfig-a001-20200424
nds32                randconfig-a001-20200424
nios2                randconfig-a001-20200424
c6x                  randconfig-a001-20200424
h8300                randconfig-a001-20200424
sparc64              randconfig-a001-20200424
microblaze           randconfig-a001-20200424
nios2                randconfig-a001-20200423
h8300                randconfig-a001-20200423
c6x                  randconfig-a001-20200423
sparc64              randconfig-a001-20200423
microblaze           randconfig-a001-20200423
nios2                randconfig-a001-20200426
c6x                  randconfig-a001-20200426
h8300                randconfig-a001-20200426
sparc64              randconfig-a001-20200426
microblaze           randconfig-a001-20200426
nios2                randconfig-a001-20200425
c6x                  randconfig-a001-20200425
h8300                randconfig-a001-20200425
sparc64              randconfig-a001-20200425
microblaze           randconfig-a001-20200425
sh                   randconfig-a001-20200424
csky                 randconfig-a001-20200424
s390                 randconfig-a001-20200424
xtensa               randconfig-a001-20200424
openrisc             randconfig-a001-20200424
sh                   randconfig-a001-20200423
csky                 randconfig-a001-20200423
xtensa               randconfig-a001-20200423
openrisc             randconfig-a001-20200423
i386                 randconfig-c002-20200424
i386                 randconfig-c001-20200424
x86_64               randconfig-c001-20200424
i386                 randconfig-c003-20200424
x86_64               randconfig-c003-20200424
x86_64               randconfig-d002-20200426
i386                 randconfig-d002-20200426
i386                 randconfig-d001-20200426
i386                 randconfig-d003-20200426
x86_64               randconfig-a001-20200424
i386                 randconfig-a003-20200424
x86_64               randconfig-a003-20200424
i386                 randconfig-a002-20200424
i386                 randconfig-a001-20200424
x86_64               randconfig-a002-20200424
i386                 randconfig-a003-20200423
i386                 randconfig-a001-20200423
i386                 randconfig-a002-20200423
x86_64               randconfig-a002-20200423
x86_64               randconfig-a001-20200426
i386                 randconfig-a003-20200426
x86_64               randconfig-a003-20200426
i386                 randconfig-a002-20200426
i386                 randconfig-a001-20200426
x86_64               randconfig-a002-20200426
i386                 randconfig-g003-20200424
i386                 randconfig-g001-20200424
x86_64               randconfig-g001-20200424
x86_64               randconfig-g002-20200424
i386                 randconfig-g002-20200424
x86_64               randconfig-g003-20200424
sparc                randconfig-a001-20200423
ia64                 randconfig-a001-20200423
arm                  randconfig-a001-20200423
arm64                randconfig-a001-20200423
arc                  randconfig-a001-20200423
sparc                randconfig-a001-20200426
ia64                 randconfig-a001-20200426
powerpc              randconfig-a001-20200426
arm                  randconfig-a001-20200426
arm64                randconfig-a001-20200426
arc                  randconfig-a001-20200426
riscv                            allyesconfig
riscv                    nommu_virt_defconfig
riscv                               defconfig
riscv                          rv32_defconfig
riscv                            allmodconfig
s390                       zfcpdump_defconfig
s390                          debug_defconfig
s390                             allyesconfig
s390                             allmodconfig
s390                             alldefconfig
s390                                defconfig
sh                          rsk7269_defconfig
sh                               allmodconfig
sh                            titan_defconfig
sh                                allnoconfig
sparc                               defconfig
sparc64                           allnoconfig
sparc64                          allyesconfig
sparc64                          allmodconfig
um                           x86_64_defconfig
um                             i386_defconfig
um                                  defconfig
x86_64                                   rhel
x86_64                                    lkp
x86_64                              fedora-25
x86_64                                  kexec
x86_64                         rhel-7.2-clear
x86_64                    rhel-7.6-kselftests
x86_64                               rhel-7.6

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org

_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k

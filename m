Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DAC3B1BBCB8
	for <lists+ath10k@lfdr.de>; Tue, 28 Apr 2020 13:44:38 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Subject:To:From
	:Date:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=086nTgI03PTVjmRY1nSUstoPht+96ocQq27xW0MTlMQ=; b=SZ4R3OKx45WhqB
	gV1lJ/31xR2rE5PLr862a2asJ90GBsApjMsLkNJYQpaxDINRQuBIbEmIgMYslc5NB3faQhAVKAN9Y
	sKWupih5s3aLkhFH8J04pX6Q8RLrzE1JHeO0OYrdpvWYHyCOLP2wmu1bi5BCCS+8DOHW2nuczrGiW
	z08yAk9hT+NXueILHlF+TgXOAOX9mbXRQCzDCWhrQMvtjQAs0nBblOP7UHXOcLO9cwyU9lxWH0c6S
	8Ks572oOpRmU0eKVC03hVk+cKpSF1f2rT0qpWQ1czY+Dp+itpxhOctM2IcBvGtorqtO+xWNPlXeUT
	z7kKRygD0IXek//nGaYg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jTOfC-0005AA-4E; Tue, 28 Apr 2020 11:44:34 +0000
Received: from mga11.intel.com ([192.55.52.93])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jTOep-0004rB-HQ
 for ath10k@lists.infradead.org; Tue, 28 Apr 2020 11:44:15 +0000
IronPort-SDR: d3XarVrw+hb4bYR7meW0xpjczPbxypLyHZV1cPadLXgGhGSBQnhvSelHcXZJja/GvRQPNr6vxU
 S0kvzu3NUWgg==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Apr 2020 04:44:09 -0700
IronPort-SDR: mwkp3+Y1AHW7mabzy4+B8hWgiaF/f14suSD2DaVlzpZe3/9Ve45AiM24ekO+Kn6Hg13v4I5MxF
 r3zZ9+BEj2Xg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,327,1583222400"; d="scan'208";a="302686967"
Received: from lkp-server01.sh.intel.com (HELO lkp-server01) ([10.239.97.150])
 by FMSMGA003.fm.intel.com with ESMTP; 28 Apr 2020 04:44:08 -0700
Received: from kbuild by lkp-server01 with local (Exim 4.89)
 (envelope-from <lkp@intel.com>)
 id 1jTOel-0004aI-Vf; Tue, 28 Apr 2020 19:44:07 +0800
Date: Tue, 28 Apr 2020 19:43:09 +0800
From: kbuild test robot <lkp@intel.com>
To: Kalle Valo <kvalo@codeaurora.org>
Subject: [ath6kl:master] BUILD SUCCESS be3d3488dcd480c333104b8f0db4918cb43d01cf
Message-ID: <5ea816cd.T8gLhFbgNbO2ly9y%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200428_044411_682878_2C8390A8 
X-CRM114-Status: UNSURE (   5.41  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.0 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [192.55.52.93 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/kvalo/ath.git  master
branch HEAD: be3d3488dcd480c333104b8f0db4918cb43d01cf  Add localversion-wireless-testing-ath

elapsed time: 1445m

configs tested: 166
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
mips                      loongson3_defconfig
ia64                             alldefconfig
powerpc                             defconfig
ia64                                defconfig
s390                          debug_defconfig
sparc64                          allmodconfig
microblaze                    nommu_defconfig
riscv                             allnoconfig
csky                                defconfig
i386                              allnoconfig
i386                             allyesconfig
i386                             alldefconfig
i386                                defconfig
i386                              debian-10.3
ia64                             allmodconfig
ia64                              allnoconfig
ia64                        generic_defconfig
ia64                          tiger_defconfig
ia64                         bigsur_defconfig
ia64                             allyesconfig
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
alpha                               defconfig
h8300                       h8s-sim_defconfig
h8300                     edosk2674_defconfig
m68k                       m5475evb_defconfig
m68k                             allmodconfig
h8300                    h8300h-sim_defconfig
m68k                           sun3_defconfig
m68k                          multi_defconfig
arc                                 defconfig
arc                              allyesconfig
powerpc                       ppc64_defconfig
powerpc                          rhel-kconfig
microblaze                      mmu_defconfig
powerpc                           allnoconfig
mips                      fuloong2e_defconfig
mips                      malta_kvm_defconfig
mips                            ar7_defconfig
mips                             allyesconfig
mips                         64r6el_defconfig
mips                              allnoconfig
mips                           32r2_defconfig
mips                             allmodconfig
mips                malta_kvm_guest_defconfig
mips                         tb0287_defconfig
mips                       capcella_defconfig
mips                           ip32_defconfig
mips                  decstation_64_defconfig
mips                          ath79_defconfig
mips                        bcm63xx_defconfig
parisc                            allnoconfig
parisc                generic-64bit_defconfig
parisc                generic-32bit_defconfig
parisc                           allyesconfig
parisc                           allmodconfig
parisc               randconfig-a001-20200427
alpha                randconfig-a001-20200427
mips                 randconfig-a001-20200427
m68k                 randconfig-a001-20200427
riscv                randconfig-a001-20200427
nds32                randconfig-a001-20200427
nios2                randconfig-a001-20200427
c6x                  randconfig-a001-20200427
h8300                randconfig-a001-20200427
sparc64              randconfig-a001-20200427
microblaze           randconfig-a001-20200427
sh                   randconfig-a001-20200427
csky                 randconfig-a001-20200427
xtensa               randconfig-a001-20200427
openrisc             randconfig-a001-20200427
i386                 randconfig-b002-20200427
x86_64               randconfig-b001-20200427
i386                 randconfig-b001-20200427
i386                 randconfig-b003-20200427
x86_64               randconfig-b002-20200427
x86_64               randconfig-b003-20200427
i386                 randconfig-c002-20200427
i386                 randconfig-c001-20200427
x86_64               randconfig-c002-20200427
x86_64               randconfig-c001-20200427
i386                 randconfig-c003-20200427
x86_64               randconfig-c003-20200427
i386                 randconfig-a003-20200427
i386                 randconfig-a001-20200427
i386                 randconfig-a002-20200427
x86_64               randconfig-a002-20200427
x86_64               randconfig-d001-20200427
x86_64               randconfig-d002-20200427
i386                 randconfig-d002-20200427
i386                 randconfig-d001-20200427
x86_64               randconfig-d003-20200427
i386                 randconfig-d003-20200427
i386                 randconfig-e003-20200427
x86_64               randconfig-e002-20200427
x86_64               randconfig-e003-20200427
i386                 randconfig-e002-20200427
i386                 randconfig-e001-20200427
x86_64               randconfig-e001-20200427
i386                 randconfig-g003-20200427
i386                 randconfig-g001-20200427
x86_64               randconfig-g001-20200427
i386                 randconfig-g002-20200427
x86_64               randconfig-g003-20200427
i386                 randconfig-h003-20200427
x86_64               randconfig-h002-20200427
i386                 randconfig-h002-20200427
i386                 randconfig-h001-20200427
sparc                randconfig-a001-20200427
ia64                 randconfig-a001-20200427
arm                  randconfig-a001-20200427
arm64                randconfig-a001-20200427
arc                  randconfig-a001-20200427
riscv                            allyesconfig
riscv                    nommu_virt_defconfig
riscv                               defconfig
riscv                          rv32_defconfig
riscv                            allmodconfig
s390                       zfcpdump_defconfig
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
um                           x86_64_defconfig
um                             i386_defconfig
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

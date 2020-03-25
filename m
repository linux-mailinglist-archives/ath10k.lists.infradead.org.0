Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D2931192099
	for <lists+ath10k@lfdr.de>; Wed, 25 Mar 2020 06:27:31 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Subject:To:From
	:Date:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=BIDOIhPyO9qKKs7Bi2Bs9EkZQ3g9+hja5RP5QM0q8fc=; b=BOdQ2Ue2YZqvZB
	Rov95xd75V5xcUiGg9T7bTDIZTQMVjDeAkJ6KARk8NcCRAK22M0k5sXA44S7mI5hLnhFvC9WHqHJe
	nSWOjCDMrwbOZlf3/W0PBukvRRTiraCb/fB0+VEeW3IKS2IYb8BQ8d60NGE4kQiXsGfWcAwDSWe21
	CqF3B9QqhZOIoQCToXJwXlAPHIYV2RjH2WWBHSqcaUB6jD/DA60bUfG5XxJ+LXTkzuxrrnnQdow6V
	CmgUNiknK/vsLLbCJMujcR4hGwucR3uOV+U4uqqx90IGZNOtJJwxySleiEUkjIeeqYYFV3+XZh8RN
	FeLOyskm8mX2gRUEdEYA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jGyZa-0004JV-92; Wed, 25 Mar 2020 05:27:26 +0000
Received: from mga14.intel.com ([192.55.52.115])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jGyZW-0004In-9y
 for ath10k@lists.infradead.org; Wed, 25 Mar 2020 05:27:23 +0000
IronPort-SDR: 3OlW4VIkI6UF+xn27y+7DjymFy68XlcBHIXbpJmY0z32/V8jHyrCHhuAOq5V2A6S2w2zksJGkP
 7Qt2mJ1ZpNLw==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Mar 2020 22:27:17 -0700
IronPort-SDR: CsWp8EurYPggRoJ+Poz/iMGRYDP45P8qUQhKRQtHTsu4q9OyFpn2iIwBAPU0xMcou2L8z0FIEQ
 NrppDwzAQRSQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.72,303,1580803200"; d="scan'208";a="240306561"
Received: from lkp-server01.sh.intel.com (HELO lkp-server01) ([10.239.97.150])
 by fmsmga008.fm.intel.com with ESMTP; 24 Mar 2020 22:27:15 -0700
Received: from kbuild by lkp-server01 with local (Exim 4.89)
 (envelope-from <lkp@intel.com>)
 id 1jGyZP-0007in-AT; Wed, 25 Mar 2020 13:27:15 +0800
Date: Wed, 25 Mar 2020 13:26:15 +0800
From: kbuild test robot <lkp@intel.com>
To: Kalle Valo <kvalo@codeaurora.org>
Subject: [ath6kl:master-pending] BUILD SUCCESS
 06c6e07739d846facb0102f1e58c514ae3512ff7
Message-ID: <5e7aeb77.yvYof8hOoC8g4gac%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200324_222722_354580_8E6FDC7A 
X-CRM114-Status: UNSURE (   5.57  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [192.55.52.115 listed in list.dnswl.org]
 0.0 HEXHASH_WORD           Multiple instances of word + hexadecimal hash
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
branch HEAD: 06c6e07739d846facb0102f1e58c514ae3512ff7  Merge branch 'pending' into master-pending

elapsed time: 695m

configs tested: 162
configs skipped: 0

The following configs have been built successfully.
More configs may be tested in the coming days.

arm                              allmodconfig
arm                               allnoconfig
arm                              allyesconfig
arm64                            allmodconfig
arm64                             allnoconfig
arm64                            allyesconfig
arm                           efm32_defconfig
arm                         at91_dt_defconfig
arm                        shmobile_defconfig
arm64                               defconfig
arm                          exynos_defconfig
arm                        multi_v5_defconfig
arm                           sunxi_defconfig
arm                        multi_v7_defconfig
sparc                            allyesconfig
parisc                generic-64bit_defconfig
powerpc                       ppc64_defconfig
s390                             alldefconfig
sparc                               defconfig
sh                  sh7785lcr_32bit_defconfig
nds32                               defconfig
nds32                             allnoconfig
i386                                defconfig
m68k                       m5475evb_defconfig
xtensa                          iss_defconfig
alpha                               defconfig
i386                             allyesconfig
i386                             alldefconfig
i386                              allnoconfig
ia64                             alldefconfig
ia64                             allmodconfig
ia64                              allnoconfig
ia64                             allyesconfig
ia64                                defconfig
c6x                              allyesconfig
c6x                        evmc6678_defconfig
nios2                         10m50_defconfig
nios2                         3c120_defconfig
openrisc                    or1ksim_defconfig
openrisc                 simple_smp_defconfig
xtensa                       common_defconfig
csky                                defconfig
h8300                     edosk2674_defconfig
h8300                    h8300h-sim_defconfig
h8300                       h8s-sim_defconfig
m68k                             allmodconfig
m68k                          multi_defconfig
m68k                           sun3_defconfig
arc                                 defconfig
arc                              allyesconfig
powerpc                             defconfig
powerpc                          rhel-kconfig
microblaze                      mmu_defconfig
microblaze                    nommu_defconfig
powerpc                           allnoconfig
mips                           32r2_defconfig
mips                         64r6el_defconfig
mips                             allmodconfig
mips                              allnoconfig
mips                             allyesconfig
mips                      fuloong2e_defconfig
mips                      malta_kvm_defconfig
parisc                            allnoconfig
parisc                           allyesconfig
parisc                generic-32bit_defconfig
i386                 randconfig-a002-20200324
x86_64               randconfig-a002-20200324
i386                 randconfig-a001-20200324
x86_64               randconfig-a001-20200324
i386                 randconfig-a003-20200324
x86_64               randconfig-a003-20200324
mips                 randconfig-a001-20200324
nds32                randconfig-a001-20200324
m68k                 randconfig-a001-20200324
parisc               randconfig-a001-20200324
alpha                randconfig-a001-20200324
riscv                randconfig-a001-20200324
c6x                  randconfig-a001-20200324
h8300                randconfig-a001-20200324
microblaze           randconfig-a001-20200324
nios2                randconfig-a001-20200324
sparc64              randconfig-a001-20200324
csky                 randconfig-a001-20200324
openrisc             randconfig-a001-20200324
s390                 randconfig-a001-20200324
xtensa               randconfig-a001-20200324
x86_64               randconfig-b001-20200324
x86_64               randconfig-b002-20200324
x86_64               randconfig-b003-20200324
i386                 randconfig-b001-20200324
i386                 randconfig-b002-20200324
i386                 randconfig-b003-20200324
x86_64               randconfig-c001-20200324
x86_64               randconfig-c002-20200324
x86_64               randconfig-c003-20200324
i386                 randconfig-c001-20200324
i386                 randconfig-c002-20200324
i386                 randconfig-c003-20200324
x86_64               randconfig-d001-20200324
x86_64               randconfig-d002-20200324
x86_64               randconfig-d003-20200324
i386                 randconfig-d001-20200324
i386                 randconfig-d002-20200324
i386                 randconfig-d003-20200324
x86_64               randconfig-e001-20200324
x86_64               randconfig-e002-20200324
x86_64               randconfig-e003-20200324
i386                 randconfig-e001-20200324
i386                 randconfig-e002-20200324
i386                 randconfig-e003-20200324
x86_64               randconfig-f001-20200324
x86_64               randconfig-f002-20200324
x86_64               randconfig-f003-20200324
i386                 randconfig-f001-20200324
i386                 randconfig-f002-20200324
i386                 randconfig-f003-20200324
i386                 randconfig-g003-20200324
x86_64               randconfig-g002-20200324
i386                 randconfig-g001-20200324
i386                 randconfig-g002-20200324
x86_64               randconfig-g001-20200324
x86_64               randconfig-g003-20200324
x86_64               randconfig-h001-20200324
x86_64               randconfig-h002-20200324
x86_64               randconfig-h003-20200324
i386                 randconfig-h001-20200324
i386                 randconfig-h002-20200324
i386                 randconfig-h003-20200324
arm                  randconfig-a001-20200325
arm64                randconfig-a001-20200325
ia64                 randconfig-a001-20200325
sparc                randconfig-a001-20200325
arc                  randconfig-a001-20200325
riscv                            allyesconfig
riscv                    nommu_virt_defconfig
riscv                             allnoconfig
riscv                               defconfig
riscv                          rv32_defconfig
riscv                            allmodconfig
s390                       zfcpdump_defconfig
s390                              allnoconfig
s390                             allmodconfig
s390                             allyesconfig
s390                          debug_defconfig
s390                                defconfig
sh                               allmodconfig
sh                                allnoconfig
sh                          rsk7269_defconfig
sh                            titan_defconfig
sparc64                          allmodconfig
sparc64                           allnoconfig
sparc64                          allyesconfig
sparc64                             defconfig
um                           x86_64_defconfig
um                             i386_defconfig
um                                  defconfig
x86_64                                   rhel
x86_64                               rhel-7.6
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

Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A95191A04F7
	for <lists+ath10k@lfdr.de>; Tue,  7 Apr 2020 04:37:11 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Subject:To:From
	:Date:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=wg4DTfCNKw/N+U/9EqHxnnz98iSeYMDr9xQXlEjevas=; b=ltNHDP0hW2+zb8
	eny/fgZNTf7JzuyzUWC+qzGOFXsyU0SJPww9/4iLRkEgIYE0IhZxmRIsCy+JwEyfVfFuyjJqHqfVJ
	WxGQb4SugpKr4IJ/zjE1NLZor29H0GLuAf88Uaaqg488j7kVUOl3zfeft+H+6G4NxQIJ9wUIk1fGu
	PY44NtjZa+61OcjzrgRyLWfaqWsuACVU3nwNyy9GAPEcKiFSLH0e8i9EDmYWN9ShXd4VQv/pyr81S
	njgE/Yd71eWjNUYqHLGYDursFGvl1HYyKqD0zk0VqsRM9m5mq+tt5+TUwBg7bR37qYc7VnDUYKZin
	+WjEUd/HldnchJcylrWQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jLe6v-0002on-Hf; Tue, 07 Apr 2020 02:37:09 +0000
Received: from mga05.intel.com ([192.55.52.43])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jLe6l-0002kT-Vg
 for ath10k@lists.infradead.org; Tue, 07 Apr 2020 02:37:01 +0000
IronPort-SDR: Eeg0Eourz0oh2dlpfZXnKUTE23NyZv0D4mSPbD01KYmv/SBYr+sZex6Is+p8JHEIXNVrQKDhMJ
 6DoOZHi0IIxQ==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Apr 2020 19:36:59 -0700
IronPort-SDR: T7GC5W2tlKHrWAiM3UILrbPff3Qjkfw/14bTtTiGR52lhOlWYOSs2+qCjcvtAojkEMJFfNBQ/O
 t646qqP0fhDw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.72,353,1580803200"; d="scan'208";a="269278220"
Received: from lkp-server01.sh.intel.com (HELO lkp-server01) ([10.239.97.150])
 by orsmga002.jf.intel.com with ESMTP; 06 Apr 2020 19:36:57 -0700
Received: from kbuild by lkp-server01 with local (Exim 4.89)
 (envelope-from <lkp@intel.com>)
 id 1jLe6i-0001T1-Fw; Tue, 07 Apr 2020 10:36:56 +0800
Date: Tue, 07 Apr 2020 10:36:30 +0800
From: kbuild test robot <lkp@intel.com>
To: Kalle Valo <kvalo@codeaurora.org>
Subject: [ath6kl:ath-next] BUILD SUCCESS
 795def8b14ffa334881264823444eaab4d1879c3
Message-ID: <5e8be72e.DYPBZSFqtDMoy0x3%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200406_193700_034214_1537F964 
X-CRM114-Status: UNSURE (   5.85  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [192.55.52.43 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/kvalo/ath.git  ath-next
branch HEAD: 795def8b14ffa334881264823444eaab4d1879c3  ath10k: enable radar detection in secondary segment

elapsed time: 484m

configs tested: 193
configs skipped: 0

The following configs have been built successfully.
More configs may be tested in the coming days.

arm                              allmodconfig
arm                               allnoconfig
arm                              allyesconfig
arm64                            allmodconfig
arm64                             allnoconfig
arm64                            allyesconfig
arm                         at91_dt_defconfig
arm                           efm32_defconfig
arm                          exynos_defconfig
arm                        multi_v5_defconfig
arm                        multi_v7_defconfig
arm                        shmobile_defconfig
arm                           sunxi_defconfig
arm64                               defconfig
sparc                            allyesconfig
ia64                                defconfig
powerpc                             defconfig
mips                              allnoconfig
i386                              allnoconfig
ia64                             alldefconfig
sh                  sh7785lcr_32bit_defconfig
i386                             alldefconfig
i386                             allyesconfig
i386                              debian-10.3
i386                                defconfig
ia64                             allmodconfig
ia64                              allnoconfig
ia64                             allyesconfig
c6x                              allyesconfig
c6x                        evmc6678_defconfig
nios2                         10m50_defconfig
nios2                         3c120_defconfig
openrisc                    or1ksim_defconfig
openrisc                 simple_smp_defconfig
xtensa                       common_defconfig
xtensa                          iss_defconfig
alpha                               defconfig
csky                                defconfig
nds32                             allnoconfig
nds32                               defconfig
h8300                     edosk2674_defconfig
h8300                    h8300h-sim_defconfig
h8300                       h8s-sim_defconfig
m68k                             allmodconfig
m68k                       m5475evb_defconfig
m68k                          multi_defconfig
m68k                           sun3_defconfig
arc                              allyesconfig
arc                                 defconfig
microblaze                      mmu_defconfig
microblaze                    nommu_defconfig
powerpc                           allnoconfig
powerpc                       ppc64_defconfig
powerpc                          rhel-kconfig
mips                           32r2_defconfig
mips                         64r6el_defconfig
mips                             allmodconfig
mips                             allyesconfig
mips                      fuloong2e_defconfig
mips                      malta_kvm_defconfig
parisc                            allnoconfig
parisc                           allyesconfig
parisc                generic-32bit_defconfig
parisc                generic-64bit_defconfig
x86_64               randconfig-a001-20200406
x86_64               randconfig-a002-20200406
x86_64               randconfig-a003-20200406
i386                 randconfig-a001-20200406
i386                 randconfig-a002-20200406
i386                 randconfig-a003-20200406
alpha                randconfig-a001-20200406
m68k                 randconfig-a001-20200406
nds32                randconfig-a001-20200406
parisc               randconfig-a001-20200406
riscv                randconfig-a001-20200406
sparc64              randconfig-a001-20200406
h8300                randconfig-a001-20200406
nios2                randconfig-a001-20200406
c6x                  randconfig-a001-20200406
microblaze           randconfig-a001-20200406
c6x                  randconfig-a001-20200407
h8300                randconfig-a001-20200407
microblaze           randconfig-a001-20200407
nios2                randconfig-a001-20200407
sparc64              randconfig-a001-20200407
s390                 randconfig-a001-20200406
xtensa               randconfig-a001-20200406
csky                 randconfig-a001-20200406
openrisc             randconfig-a001-20200406
sh                   randconfig-a001-20200406
x86_64               randconfig-b001-20200406
x86_64               randconfig-b002-20200406
x86_64               randconfig-b003-20200406
i386                 randconfig-b001-20200406
i386                 randconfig-b002-20200406
i386                 randconfig-b003-20200406
x86_64               randconfig-c001-20200407
x86_64               randconfig-c002-20200407
x86_64               randconfig-c003-20200407
i386                 randconfig-c001-20200407
i386                 randconfig-c002-20200407
i386                 randconfig-c003-20200407
x86_64               randconfig-c001-20200406
x86_64               randconfig-c002-20200406
x86_64               randconfig-c003-20200406
i386                 randconfig-c001-20200406
i386                 randconfig-c002-20200406
i386                 randconfig-c003-20200406
x86_64               randconfig-d001-20200406
x86_64               randconfig-d002-20200406
x86_64               randconfig-d003-20200406
i386                 randconfig-d001-20200406
i386                 randconfig-d002-20200406
i386                 randconfig-d003-20200406
x86_64               randconfig-e001-20200407
x86_64               randconfig-e002-20200407
x86_64               randconfig-e003-20200407
i386                 randconfig-e001-20200407
i386                 randconfig-e002-20200407
i386                 randconfig-e003-20200407
x86_64               randconfig-e001-20200406
x86_64               randconfig-e002-20200406
x86_64               randconfig-e003-20200406
i386                 randconfig-e001-20200406
i386                 randconfig-e002-20200406
i386                 randconfig-e003-20200406
x86_64               randconfig-f001-20200406
x86_64               randconfig-f002-20200406
x86_64               randconfig-f003-20200406
i386                 randconfig-f001-20200406
i386                 randconfig-f002-20200406
i386                 randconfig-f003-20200406
x86_64               randconfig-g001-20200407
x86_64               randconfig-g002-20200407
x86_64               randconfig-g003-20200407
i386                 randconfig-g001-20200407
i386                 randconfig-g002-20200407
i386                 randconfig-g003-20200407
x86_64               randconfig-g001-20200406
x86_64               randconfig-g002-20200406
x86_64               randconfig-g003-20200406
i386                 randconfig-g001-20200406
i386                 randconfig-g002-20200406
i386                 randconfig-g003-20200406
x86_64               randconfig-h001-20200406
x86_64               randconfig-h002-20200406
x86_64               randconfig-h003-20200406
i386                 randconfig-h001-20200406
i386                 randconfig-h002-20200406
i386                 randconfig-h003-20200406
arc                  randconfig-a001-20200406
arm                  randconfig-a001-20200406
arm64                randconfig-a001-20200406
ia64                 randconfig-a001-20200406
powerpc              randconfig-a001-20200406
sparc                randconfig-a001-20200406
arc                  randconfig-a001-20200407
arm                  randconfig-a001-20200407
arm64                randconfig-a001-20200407
ia64                 randconfig-a001-20200407
powerpc              randconfig-a001-20200407
sparc                randconfig-a001-20200407
riscv                            allmodconfig
riscv                             allnoconfig
riscv                            allyesconfig
riscv                               defconfig
riscv                    nommu_virt_defconfig
riscv                          rv32_defconfig
s390                             alldefconfig
s390                             allmodconfig
s390                              allnoconfig
s390                             allyesconfig
s390                          debug_defconfig
s390                                defconfig
s390                       zfcpdump_defconfig
sh                               allmodconfig
sh                                allnoconfig
sh                          rsk7269_defconfig
sh                            titan_defconfig
sparc                               defconfig
sparc64                          allmodconfig
sparc64                           allnoconfig
sparc64                          allyesconfig
sparc64                             defconfig
um                                  defconfig
um                             i386_defconfig
um                           x86_64_defconfig
x86_64                              fedora-25
x86_64                                  kexec
x86_64                                    lkp
x86_64                                   rhel
x86_64                         rhel-7.2-clear
x86_64                               rhel-7.6

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org

_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k

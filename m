Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CC2321A3EC9
	for <lists+ath10k@lfdr.de>; Fri, 10 Apr 2020 05:34:12 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Subject:To:From
	:Date:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=U5TdQVXsSvEoA1fwgTxQ44GRmh17NsNJ8A0rpHJOiuY=; b=HqAC53dr2PHXDO
	F8q/15lSOJ7WFf7zIRJ5UaVfMnUpMPKCLf5N5UZBKMSpAxZhcCc3BxvBOKcA1BXYSAtnaFXL8EQDs
	7Ha65agUCunMROTCwQ0r/L6vr6qAOdVkPFQVn9Be2DjCo7rCBnImCntik/3qXficOGl2xo+y6sTMl
	47kVd1mttdKikdnTEGm7BSTcjwAdmCUNGM/6tZOQ7SlaMfj9QtH5BxrhyhZ9aeBnO7cXKhz5P7jnG
	FMMSjRsCDOQ5DyjjWiP8C9kA92hMZ61Y9cMzbWBVMvNhTGw+lNsjNaiHnoSlBHgPj3PXxDTadmbzN
	S+qnEXrU7gpq+zvglbLA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jMkQl-0000pe-D9; Fri, 10 Apr 2020 03:34:11 +0000
Received: from mga11.intel.com ([192.55.52.93])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jMkQb-0000jd-0B
 for ath10k@lists.infradead.org; Fri, 10 Apr 2020 03:34:04 +0000
IronPort-SDR: 3qHhT39597xY+jZmHHs0tvWsg3oY/IV4m2fLcpCnTyr/wZiq6/eEZiWzW8gK/1vOtdda+mnFGw
 8MJiDveP8yeA==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Apr 2020 20:33:59 -0700
IronPort-SDR: Pah5fSyAUGsCfICUsQPcQFk8+xfd1ne619bpsi2FR4PQ8pe5xwPvsGLqBvsKQK7wPaL5bXxelQ
 YpdxJX/xBJsw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.72,364,1580803200"; d="scan'208";a="252093513"
Received: from lkp-server01.sh.intel.com (HELO lkp-server01) ([10.239.97.150])
 by orsmga003.jf.intel.com with ESMTP; 09 Apr 2020 20:33:58 -0700
Received: from kbuild by lkp-server01 with local (Exim 4.89)
 (envelope-from <lkp@intel.com>)
 id 1jMkQX-0001lK-Fy; Fri, 10 Apr 2020 11:33:57 +0800
Date: Fri, 10 Apr 2020 11:33:50 +0800
From: kbuild test robot <lkp@intel.com>
To: Kalle Valo <kvalo@codeaurora.org>
Subject: [ath6kl:pending] BUILD SUCCESS
 77fa0ee9473acc8337885485f7081d3880b94285
Message-ID: <5e8fe91e./uobii8DjiXjt+WN%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200409_203401_055630_A9556D1D 
X-CRM114-Status: UNSURE (   5.25  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.0 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [192.55.52.93 listed in list.dnswl.org]
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

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/kvalo/ath.git  pending
branch HEAD: 77fa0ee9473acc8337885485f7081d3880b94285  ath11k: add tx hw 802.11 encapusaltion offloading support

elapsed time: 480m

configs tested: 206
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
s390                              allnoconfig
nds32                             allnoconfig
riscv                            allmodconfig
i386                              allnoconfig
i386                             alldefconfig
i386                             allyesconfig
i386                              debian-10.3
i386                                defconfig
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
xtensa                          iss_defconfig
nds32                               defconfig
csky                                defconfig
alpha                               defconfig
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
powerpc                             defconfig
powerpc                       ppc64_defconfig
powerpc                          rhel-kconfig
mips                           32r2_defconfig
mips                         64r6el_defconfig
mips                             allmodconfig
mips                              allnoconfig
mips                             allyesconfig
mips                      fuloong2e_defconfig
mips                      malta_kvm_defconfig
parisc                            allnoconfig
parisc                generic-64bit_defconfig
parisc                generic-32bit_defconfig
parisc                           allyesconfig
x86_64               randconfig-a001-20200409
x86_64               randconfig-a002-20200409
x86_64               randconfig-a003-20200409
i386                 randconfig-a001-20200409
i386                 randconfig-a002-20200409
i386                 randconfig-a003-20200409
x86_64               randconfig-a001-20200410
x86_64               randconfig-a002-20200410
x86_64               randconfig-a003-20200410
i386                 randconfig-a001-20200410
i386                 randconfig-a002-20200410
i386                 randconfig-a003-20200410
alpha                randconfig-a001-20200409
m68k                 randconfig-a001-20200409
mips                 randconfig-a001-20200409
nds32                randconfig-a001-20200409
parisc               randconfig-a001-20200409
riscv                randconfig-a001-20200409
mips                 randconfig-a001-20200410
nds32                randconfig-a001-20200410
m68k                 randconfig-a001-20200410
riscv                randconfig-a001-20200410
alpha                randconfig-a001-20200410
parisc               randconfig-a001-20200410
c6x                  randconfig-a001-20200410
h8300                randconfig-a001-20200410
microblaze           randconfig-a001-20200410
nios2                randconfig-a001-20200410
sparc64              randconfig-a001-20200410
c6x                  randconfig-a001-20200409
h8300                randconfig-a001-20200409
microblaze           randconfig-a001-20200409
nios2                randconfig-a001-20200409
sparc64              randconfig-a001-20200409
s390                 randconfig-a001-20200410
xtensa               randconfig-a001-20200410
sh                   randconfig-a001-20200410
openrisc             randconfig-a001-20200410
csky                 randconfig-a001-20200410
csky                 randconfig-a001-20200409
openrisc             randconfig-a001-20200409
s390                 randconfig-a001-20200409
sh                   randconfig-a001-20200409
xtensa               randconfig-a001-20200409
x86_64               randconfig-b001-20200409
x86_64               randconfig-b002-20200409
x86_64               randconfig-b003-20200409
i386                 randconfig-b001-20200409
i386                 randconfig-b002-20200409
i386                 randconfig-b003-20200409
x86_64               randconfig-c001-20200409
x86_64               randconfig-c002-20200409
x86_64               randconfig-c003-20200409
i386                 randconfig-c001-20200409
i386                 randconfig-c002-20200409
i386                 randconfig-c003-20200409
x86_64               randconfig-d001-20200410
x86_64               randconfig-d002-20200410
x86_64               randconfig-d003-20200410
i386                 randconfig-d001-20200410
i386                 randconfig-d002-20200410
i386                 randconfig-d003-20200410
x86_64               randconfig-d001-20200409
x86_64               randconfig-d002-20200409
x86_64               randconfig-d003-20200409
i386                 randconfig-d001-20200409
i386                 randconfig-d002-20200409
i386                 randconfig-d003-20200409
x86_64               randconfig-e001-20200410
x86_64               randconfig-e002-20200410
x86_64               randconfig-e003-20200410
i386                 randconfig-e001-20200410
i386                 randconfig-e002-20200410
i386                 randconfig-e003-20200410
x86_64               randconfig-e001-20200409
x86_64               randconfig-e002-20200409
x86_64               randconfig-e003-20200409
i386                 randconfig-e001-20200409
i386                 randconfig-e002-20200409
i386                 randconfig-e003-20200409
x86_64               randconfig-f001-20200409
x86_64               randconfig-f002-20200409
x86_64               randconfig-f003-20200409
i386                 randconfig-f001-20200409
i386                 randconfig-f002-20200409
i386                 randconfig-f003-20200409
x86_64               randconfig-g001-20200409
x86_64               randconfig-g002-20200409
x86_64               randconfig-g003-20200409
i386                 randconfig-g001-20200409
i386                 randconfig-g002-20200409
i386                 randconfig-g003-20200409
x86_64               randconfig-g001-20200410
x86_64               randconfig-g002-20200410
x86_64               randconfig-g003-20200410
i386                 randconfig-g001-20200410
i386                 randconfig-g002-20200410
i386                 randconfig-g003-20200410
x86_64               randconfig-h001-20200409
x86_64               randconfig-h002-20200409
x86_64               randconfig-h003-20200409
i386                 randconfig-h001-20200409
i386                 randconfig-h002-20200409
i386                 randconfig-h003-20200409
arc                  randconfig-a001-20200410
arm                  randconfig-a001-20200410
arm64                randconfig-a001-20200410
ia64                 randconfig-a001-20200410
powerpc              randconfig-a001-20200410
sparc                randconfig-a001-20200410
riscv                            allyesconfig
riscv                    nommu_virt_defconfig
riscv                             allnoconfig
riscv                               defconfig
riscv                          rv32_defconfig
s390                             alldefconfig
s390                             allmodconfig
s390                             allyesconfig
s390                          debug_defconfig
s390                                defconfig
s390                       zfcpdump_defconfig
sh                               allmodconfig
sh                                allnoconfig
sh                          rsk7269_defconfig
sh                  sh7785lcr_32bit_defconfig
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
x86_64                    rhel-7.6-kselftests

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org

_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k

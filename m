Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A35811C60C5
	for <lists+ath10k@lfdr.de>; Tue,  5 May 2020 21:07:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Subject:To:From
	:Date:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=cpJ/kK4HcZ2lRwXNmt8/fqYZ66IN7AgJDsinpFLym5o=; b=jbGjFegaku7+i6
	84zjnuB9f6+kgHccsnQnSZIKOlc9MxzojlA3ltHNeXuXKONvubTbiWlatWtvSHkDtQxPrlBF3ZuuR
	M7Vk2yKGu536iG9LNKY2/zhuV84Bib9V+6qO+hw4VQkq8pE0wyzQx2V1ZQay4KmSFEQPD2k07MkJP
	buPQa4wzNul6AhMROwHI9f65xVTkvm7zttFhwA8fSpWBgtUJtEUWYN1ukv3/slyExlLld/k1hXwtC
	9F4s2g1B2eXa6SV2TK1HTIzmqOgtej7+4HuVK2IKY4QURSaR1MD5Oa/P4QOL8AYYJjiesOJWVtE8a
	dm3gnpFYMg+VXGGPrUGA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jW2uc-0005AQ-3V; Tue, 05 May 2020 19:07:26 +0000
Received: from mga02.intel.com ([134.134.136.20])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jW2uX-00059O-IE
 for ath10k@lists.infradead.org; Tue, 05 May 2020 19:07:23 +0000
IronPort-SDR: +cWoqQzUisBRPdsHCqNj/oU0oGu239kCBlgEAnij+HqxNR+fqYm0mU4eUNbi5aua7kQRSVtqQ4
 cHba86exfinw==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 May 2020 12:07:20 -0700
IronPort-SDR: 6Dmn+9qhXr6S1KWr/xhnuLUa6i01/tSqrGu4yh93ehtqhVXa+JBGGxuyw5K260S3j0I0RxA3H/
 cStG2cC68zJw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,356,1583222400"; d="scan'208";a="263287531"
Received: from lkp-server01.sh.intel.com (HELO lkp-server01) ([10.239.97.150])
 by orsmga006.jf.intel.com with ESMTP; 05 May 2020 12:07:19 -0700
Received: from kbuild by lkp-server01 with local (Exim 4.89)
 (envelope-from <lkp@intel.com>)
 id 1jW2uU-000Dku-Df; Wed, 06 May 2020 03:07:18 +0800
Date: Wed, 06 May 2020 03:06:55 +0800
From: kbuild test robot <lkp@intel.com>
To: Kalle Valo <kvalo@codeaurora.org>
Subject: [ath6kl:ath-next] BUILD SUCCESS
 52f274b519939f5e306b26f2a3cf7c63ef45c203
Message-ID: <5eb1b94f.Cz7pQNrJcjSMeUAj%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200505_120721_645699_9226F3AA 
X-CRM114-Status: UNSURE (   5.27  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [134.134.136.20 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [134.134.136.20 listed in wl.mailspike.net]
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

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/kvalo/ath.git  ath-next
branch HEAD: 52f274b519939f5e306b26f2a3cf7c63ef45c203  ath11k: fix resource unavailability for htt stats after peer stats display

elapsed time: 484m

configs tested: 214
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
xtensa                       common_defconfig
s390                             allyesconfig
m68k                           sun3_defconfig
powerpc                     mpc512x_defconfig
i386                             alldefconfig
riscv                               defconfig
microblaze                    nommu_defconfig
ia64                             allyesconfig
powerpc                           allnoconfig
i386                                defconfig
mips                      loongson3_defconfig
i386                              allnoconfig
i386                             allyesconfig
i386                              debian-10.3
ia64                             allmodconfig
ia64                                defconfig
ia64                              allnoconfig
ia64                        generic_defconfig
ia64                          tiger_defconfig
ia64                         bigsur_defconfig
ia64                             alldefconfig
m68k                       m5475evb_defconfig
m68k                             allmodconfig
m68k                       bvme6000_defconfig
m68k                          multi_defconfig
nios2                         3c120_defconfig
nios2                         10m50_defconfig
c6x                        evmc6678_defconfig
c6x                              allyesconfig
openrisc                 simple_smp_defconfig
openrisc                    or1ksim_defconfig
nds32                               defconfig
nds32                             allnoconfig
csky                                defconfig
alpha                               defconfig
h8300                       h8s-sim_defconfig
h8300                     edosk2674_defconfig
xtensa                          iss_defconfig
h8300                    h8300h-sim_defconfig
arc                                 defconfig
arc                              allyesconfig
microblaze                      mmu_defconfig
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
powerpc                      chrp32_defconfig
powerpc                             defconfig
powerpc                       holly_defconfig
powerpc                       ppc64_defconfig
powerpc                          rhel-kconfig
powerpc                  mpc866_ads_defconfig
powerpc                    amigaone_defconfig
powerpc                    adder875_defconfig
powerpc                     ep8248e_defconfig
powerpc                          g5_defconfig
m68k                 randconfig-a001-20200502
mips                 randconfig-a001-20200502
nds32                randconfig-a001-20200502
alpha                randconfig-a001-20200502
parisc               randconfig-a001-20200502
riscv                randconfig-a001-20200502
m68k                 randconfig-a001-20200505
mips                 randconfig-a001-20200505
nds32                randconfig-a001-20200505
parisc               randconfig-a001-20200505
alpha                randconfig-a001-20200505
riscv                randconfig-a001-20200505
m68k                 randconfig-a001-20200503
mips                 randconfig-a001-20200503
nds32                randconfig-a001-20200503
alpha                randconfig-a001-20200503
parisc               randconfig-a001-20200503
riscv                randconfig-a001-20200503
h8300                randconfig-a001-20200503
nios2                randconfig-a001-20200503
microblaze           randconfig-a001-20200503
c6x                  randconfig-a001-20200503
sparc64              randconfig-a001-20200503
s390                 randconfig-a001-20200505
xtensa               randconfig-a001-20200505
sh                   randconfig-a001-20200505
openrisc             randconfig-a001-20200505
csky                 randconfig-a001-20200505
xtensa               randconfig-a001-20200503
sh                   randconfig-a001-20200503
openrisc             randconfig-a001-20200503
csky                 randconfig-a001-20200503
i386                 randconfig-b003-20200503
x86_64               randconfig-b002-20200503
i386                 randconfig-b001-20200503
x86_64               randconfig-b003-20200503
x86_64               randconfig-b001-20200503
i386                 randconfig-b002-20200503
i386                 randconfig-b003-20200505
x86_64               randconfig-b002-20200505
i386                 randconfig-b001-20200505
x86_64               randconfig-b001-20200505
x86_64               randconfig-b003-20200505
i386                 randconfig-b002-20200505
x86_64               randconfig-a002-20200503
i386                 randconfig-a002-20200503
i386                 randconfig-a003-20200503
i386                 randconfig-a001-20200503
x86_64               randconfig-c002-20200502
i386                 randconfig-c002-20200502
i386                 randconfig-c001-20200502
i386                 randconfig-c003-20200502
x86_64               randconfig-d001-20200505
i386                 randconfig-d003-20200505
i386                 randconfig-d001-20200505
x86_64               randconfig-d003-20200505
x86_64               randconfig-d002-20200505
i386                 randconfig-d002-20200505
x86_64               randconfig-e003-20200503
x86_64               randconfig-e002-20200503
i386                 randconfig-e003-20200503
x86_64               randconfig-e001-20200503
i386                 randconfig-e002-20200503
i386                 randconfig-e001-20200503
i386                 randconfig-f003-20200505
x86_64               randconfig-f001-20200505
x86_64               randconfig-f003-20200505
i386                 randconfig-f001-20200505
i386                 randconfig-f002-20200505
i386                 randconfig-f003-20200503
x86_64               randconfig-f002-20200503
i386                 randconfig-f001-20200503
i386                 randconfig-f002-20200503
x86_64               randconfig-a003-20200505
x86_64               randconfig-a001-20200505
i386                 randconfig-a001-20200505
i386                 randconfig-a003-20200505
i386                 randconfig-a002-20200505
x86_64               randconfig-g003-20200503
i386                 randconfig-g003-20200503
i386                 randconfig-g002-20200503
x86_64               randconfig-g001-20200503
i386                 randconfig-g001-20200503
i386                 randconfig-h002-20200505
i386                 randconfig-h001-20200505
i386                 randconfig-h003-20200505
x86_64               randconfig-h003-20200505
x86_64               randconfig-h001-20200505
ia64                 randconfig-a001-20200505
powerpc              randconfig-a001-20200505
arm                  randconfig-a001-20200505
ia64                 randconfig-a001-20200503
arm64                randconfig-a001-20200503
arc                  randconfig-a001-20200503
arm                  randconfig-a001-20200503
sparc                randconfig-a001-20200503
riscv                            allyesconfig
riscv                    nommu_virt_defconfig
riscv                             allnoconfig
riscv                          rv32_defconfig
riscv                            allmodconfig
s390                       zfcpdump_defconfig
s390                          debug_defconfig
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

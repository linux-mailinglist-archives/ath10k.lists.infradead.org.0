Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 521091A3ECB
	for <lists+ath10k@lfdr.de>; Fri, 10 Apr 2020 05:34:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Subject:To:From
	:Date:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=hysubtFkK4s5Pxg6s60LK4CZ0bnzsh91Z4Et/RKS/Pc=; b=WYix5idvCwlGnQ
	nC7n8xzw9o1rEwtwgl1TCC95H/vp90R4RoiViTfkV6ksLMakrg/BO2m3yJalfcCz0cGPMapS4kiq4
	SZhrCad12Cg0mArrHYrNC8q6bvKM8MaWw/6C2JVPim60TNIelVBxpxqyH9dsfpWPbp0LVW8P5e72K
	h7ZtPgiQ2tiGcaYWx6LvGyd2PTDT8fQqo4z4KzPeeM+wWsFf30ARKgCbJsA8Ee13Uput0AFO2GiYn
	rHQ3VR9GhzGUEF5l1t91afw0DkFrL+nmYvFb09jkOVCHDmyfTxngxMa8YmR7D/qKqg75a0M2XxSgc
	3CCV1Ry+3wMYWiDPcfNg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jMkQv-00010i-Mh; Fri, 10 Apr 2020 03:34:21 +0000
Received: from mga11.intel.com ([192.55.52.93])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jMkQe-0000jd-4L
 for ath10k@lists.infradead.org; Fri, 10 Apr 2020 03:34:06 +0000
IronPort-SDR: WWgInomC/hlKnjXdREM0brL3cAnap2wq88Ro5YFbauHOxqjXQk1xFa/z2rfci3Bt9H/+MmE5i8
 8m9Ekb3wX/3Q==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Apr 2020 20:34:00 -0700
IronPort-SDR: s6LvqVuGiBtz4/0W1FFbepyr+9F2MdIsD1QgTKNmkYYreOmc0WZ6fTZxgWth5sXE4g1ob2izox
 65wJi4Jr+Xng==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.72,364,1580803200"; d="scan'208";a="242830191"
Received: from lkp-server01.sh.intel.com (HELO lkp-server01) ([10.239.97.150])
 by fmsmga007.fm.intel.com with ESMTP; 09 Apr 2020 20:33:58 -0700
Received: from kbuild by lkp-server01 with local (Exim 4.89)
 (envelope-from <lkp@intel.com>)
 id 1jMkQX-0001lp-IQ; Fri, 10 Apr 2020 11:33:57 +0800
Date: Fri, 10 Apr 2020 11:33:43 +0800
From: kbuild test robot <lkp@intel.com>
To: Kalle Valo <kvalo@codeaurora.org>
Subject: [ath6kl:ath-next] BUILD SUCCESS
 c61a748370438ca1ae8389071664b2520f16820c
Message-ID: <5e8fe917.M/9S46FKnP+fSC6U%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200409_203404_185501_7862085C 
X-CRM114-Status: UNSURE (   5.40  )
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

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/kvalo/ath.git  ath-next
branch HEAD: c61a748370438ca1ae8389071664b2520f16820c  ath10k: change ATH10K_SDIO_BUS_REQUEST_MAX_NUM from 64 to 1024

elapsed time: 480m

configs tested: 212
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
openrisc                    or1ksim_defconfig
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
parisc                           allyesconfig
parisc                generic-32bit_defconfig
parisc                generic-64bit_defconfig
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
csky                 randconfig-a001-20200409
openrisc             randconfig-a001-20200409
s390                 randconfig-a001-20200409
sh                   randconfig-a001-20200409
xtensa               randconfig-a001-20200409
csky                 randconfig-a001-20200410
openrisc             randconfig-a001-20200410
s390                 randconfig-a001-20200410
sh                   randconfig-a001-20200410
xtensa               randconfig-a001-20200410
x86_64               randconfig-b001-20200409
x86_64               randconfig-b002-20200409
x86_64               randconfig-b003-20200409
i386                 randconfig-b001-20200409
i386                 randconfig-b002-20200409
i386                 randconfig-b003-20200409
x86_64               randconfig-b001-20200410
x86_64               randconfig-b002-20200410
x86_64               randconfig-b003-20200410
i386                 randconfig-b001-20200410
i386                 randconfig-b002-20200410
i386                 randconfig-b003-20200410
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
arc                  randconfig-a001-20200409
arm                  randconfig-a001-20200409
arm64                randconfig-a001-20200409
ia64                 randconfig-a001-20200409
powerpc              randconfig-a001-20200409
sparc                randconfig-a001-20200409
arc                  randconfig-a001-20200410
arm                  randconfig-a001-20200410
arm64                randconfig-a001-20200410
ia64                 randconfig-a001-20200410
powerpc              randconfig-a001-20200410
sparc                randconfig-a001-20200410
riscv                             allnoconfig
riscv                            allyesconfig
riscv                               defconfig
riscv                    nommu_virt_defconfig
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

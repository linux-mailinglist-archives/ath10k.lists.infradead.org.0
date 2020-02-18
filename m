Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9CB6F163670
	for <lists+ath10k@lfdr.de>; Tue, 18 Feb 2020 23:50:14 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Subject:To:From
	:Date:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=HRxsIPIKaTv86y/hzP//8dJzyTKwOugSf++Av6QYzwE=; b=jVzUKhUoQw/WNn
	dWHef2HQhi33VpA3OzYSpyYFhCqncv4Do+pakAshnE6h0K3hEAAxF2FjPO6plhBqmq7lGT0PRs2xX
	/V8VcJ05a4Hp/G+ryEz74Nki9jfFvcgJNeBnOUWWuWwo0kZzsuaHI9m0KWVZCQRBYD7DTfVXdqk/6
	DItq343YWPitCXgqyeZ36aqGGJYX40c5J417YSF7bc9bVEiI4naLYBjZ06mAxAcuZv/6qMZos8R1t
	xHxL8ir2twq2gSJzRrkEtnKRtGXjdGwF3uEwepVVH106M0DkxfOLYEHTLRgwK4qZCh91TfAYDYH3s
	e4sFVWbO4wQUhiA+2fvg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j4Bgu-0003Z7-I4; Tue, 18 Feb 2020 22:50:08 +0000
Received: from mga07.intel.com ([134.134.136.100])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j4Bgo-0002ra-VR
 for ath10k@lists.infradead.org; Tue, 18 Feb 2020 22:50:04 +0000
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga105.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 18 Feb 2020 14:49:53 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,458,1574150400"; d="scan'208";a="348782968"
Received: from lkp-server01.sh.intel.com (HELO lkp-server01) ([10.239.97.150])
 by fmsmga001.fm.intel.com with ESMTP; 18 Feb 2020 14:49:51 -0800
Received: from kbuild by lkp-server01 with local (Exim 4.89)
 (envelope-from <lkp@intel.com>)
 id 1j4Bgd-0004bD-9Z; Wed, 19 Feb 2020 06:49:51 +0800
Date: Wed, 19 Feb 2020 06:48:53 +0800
From: kbuild test robot <lkp@intel.com>
To: Kalle Valo <kvalo@codeaurora.org>
Subject: [ath6kl:pending] BUILD SUCCESS
 1f8c2911c15362db4e6f4fad2fcf3b7dbb2e903d
Message-ID: <5e4c69d5.0SQ3Uz20rMv94rEs%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200218_145003_073272_C9685299 
X-CRM114-Status: UNSURE (   6.73  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -1.3 (-)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-1.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [134.134.136.100 listed in list.dnswl.org]
 1.0 HEXHASH_WORD           Multiple instances of word + hexadecimal hash
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
branch HEAD: 1f8c2911c15362db4e6f4fad2fcf3b7dbb2e903d  ath10k: improve power save performance for sdio

elapsed time: 6015m

configs tested: 257
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
parisc                           allyesconfig
m68k                          multi_defconfig
c6x                              allyesconfig
riscv                             allnoconfig
powerpc                       ppc64_defconfig
sh                                allnoconfig
sparc64                           allnoconfig
h8300                     edosk2674_defconfig
i386                             allyesconfig
i386                              allnoconfig
csky                                defconfig
mips                              allnoconfig
openrisc                    or1ksim_defconfig
um                           x86_64_defconfig
m68k                           sun3_defconfig
nios2                         3c120_defconfig
s390                                defconfig
m68k                             allmodconfig
arc                                 defconfig
parisc                            allnoconfig
parisc                generic-32bit_defconfig
riscv                    nommu_virt_defconfig
alpha                               defconfig
h8300                       h8s-sim_defconfig
mips                             allmodconfig
ia64                                defconfig
riscv                               defconfig
sh                               allmodconfig
mips                             allyesconfig
nds32                               defconfig
powerpc                           allnoconfig
c6x                        evmc6678_defconfig
um                                  defconfig
xtensa                          iss_defconfig
i386                                defconfig
s390                             allmodconfig
i386                             alldefconfig
ia64                             alldefconfig
ia64                             allmodconfig
ia64                              allnoconfig
ia64                             allyesconfig
nios2                         10m50_defconfig
openrisc                 simple_smp_defconfig
xtensa                       common_defconfig
nds32                             allnoconfig
h8300                    h8300h-sim_defconfig
m68k                       m5475evb_defconfig
arc                              allyesconfig
microblaze                      mmu_defconfig
microblaze                    nommu_defconfig
powerpc                             defconfig
powerpc                          rhel-kconfig
mips                           32r2_defconfig
mips                         64r6el_defconfig
mips                      fuloong2e_defconfig
mips                      malta_kvm_defconfig
parisc                generic-64bit_defconfig
x86_64               randconfig-a001-20200218
x86_64               randconfig-a002-20200218
x86_64               randconfig-a003-20200218
i386                 randconfig-a001-20200218
i386                 randconfig-a002-20200218
i386                 randconfig-a003-20200218
alpha                randconfig-a001-20200219
m68k                 randconfig-a001-20200219
nds32                randconfig-a001-20200219
parisc               randconfig-a001-20200219
riscv                randconfig-a001-20200219
alpha                randconfig-a001-20200218
m68k                 randconfig-a001-20200218
mips                 randconfig-a001-20200218
nds32                randconfig-a001-20200218
parisc               randconfig-a001-20200218
riscv                randconfig-a001-20200218
alpha                randconfig-a001-20200214
m68k                 randconfig-a001-20200214
mips                 randconfig-a001-20200214
nds32                randconfig-a001-20200214
parisc               randconfig-a001-20200214
c6x                  randconfig-a001-20200215
microblaze           randconfig-a001-20200215
sparc64              randconfig-a001-20200215
h8300                randconfig-a001-20200215
nios2                randconfig-a001-20200215
c6x                  randconfig-a001-20200219
h8300                randconfig-a001-20200219
microblaze           randconfig-a001-20200219
nios2                randconfig-a001-20200219
sparc64              randconfig-a001-20200219
csky                 randconfig-a001-20200214
openrisc             randconfig-a001-20200214
s390                 randconfig-a001-20200214
sh                   randconfig-a001-20200214
xtensa               randconfig-a001-20200214
x86_64               randconfig-b001-20200214
x86_64               randconfig-b002-20200214
x86_64               randconfig-b003-20200214
i386                 randconfig-b001-20200214
i386                 randconfig-b002-20200214
i386                 randconfig-b003-20200214
x86_64               randconfig-b001-20200218
x86_64               randconfig-b002-20200218
x86_64               randconfig-b003-20200218
i386                 randconfig-b001-20200218
i386                 randconfig-b002-20200218
i386                 randconfig-b003-20200218
x86_64               randconfig-b001-20200219
x86_64               randconfig-b002-20200219
x86_64               randconfig-b003-20200219
i386                 randconfig-b001-20200219
i386                 randconfig-b002-20200219
i386                 randconfig-b003-20200219
x86_64               randconfig-c001-20200219
x86_64               randconfig-c002-20200219
x86_64               randconfig-c003-20200219
i386                 randconfig-c001-20200219
i386                 randconfig-c002-20200219
i386                 randconfig-c003-20200219
x86_64               randconfig-c001-20200214
x86_64               randconfig-c002-20200214
x86_64               randconfig-c003-20200214
i386                 randconfig-c001-20200214
i386                 randconfig-c002-20200214
i386                 randconfig-c003-20200214
x86_64               randconfig-c001-20200218
x86_64               randconfig-c002-20200218
x86_64               randconfig-c003-20200218
i386                 randconfig-c001-20200218
i386                 randconfig-c002-20200218
i386                 randconfig-c003-20200218
x86_64               randconfig-c001-20200215
x86_64               randconfig-c002-20200215
x86_64               randconfig-c003-20200215
i386                 randconfig-c001-20200215
i386                 randconfig-c002-20200215
i386                 randconfig-c003-20200215
x86_64               randconfig-d001-20200218
x86_64               randconfig-d002-20200218
x86_64               randconfig-d003-20200218
i386                 randconfig-d001-20200218
i386                 randconfig-d002-20200218
i386                 randconfig-d003-20200218
x86_64               randconfig-d001-20200219
x86_64               randconfig-d002-20200219
x86_64               randconfig-d003-20200219
i386                 randconfig-d001-20200219
i386                 randconfig-d002-20200219
i386                 randconfig-d003-20200219
x86_64               randconfig-e001-20200219
x86_64               randconfig-e002-20200219
x86_64               randconfig-e003-20200219
i386                 randconfig-e001-20200219
i386                 randconfig-e002-20200219
i386                 randconfig-e003-20200219
x86_64               randconfig-e001-20200218
x86_64               randconfig-e002-20200218
x86_64               randconfig-e003-20200218
i386                 randconfig-e001-20200218
i386                 randconfig-e002-20200218
i386                 randconfig-e003-20200218
x86_64               randconfig-e001-20200214
x86_64               randconfig-e002-20200214
x86_64               randconfig-e003-20200214
i386                 randconfig-e001-20200214
i386                 randconfig-e002-20200214
i386                 randconfig-e003-20200214
x86_64               randconfig-f001-20200218
x86_64               randconfig-f002-20200218
x86_64               randconfig-f003-20200218
i386                 randconfig-f001-20200218
i386                 randconfig-f002-20200218
i386                 randconfig-f003-20200218
x86_64               randconfig-f001-20200214
x86_64               randconfig-f002-20200214
x86_64               randconfig-f003-20200214
i386                 randconfig-f001-20200214
i386                 randconfig-f002-20200214
i386                 randconfig-f003-20200214
x86_64               randconfig-g001-20200218
x86_64               randconfig-g002-20200218
x86_64               randconfig-g003-20200218
i386                 randconfig-g001-20200218
i386                 randconfig-g002-20200218
i386                 randconfig-g003-20200218
x86_64               randconfig-g001-20200214
x86_64               randconfig-g002-20200214
x86_64               randconfig-g003-20200214
i386                 randconfig-g001-20200214
i386                 randconfig-g002-20200214
i386                 randconfig-g003-20200214
x86_64               randconfig-h001-20200214
x86_64               randconfig-h002-20200214
x86_64               randconfig-h003-20200214
i386                 randconfig-h001-20200214
i386                 randconfig-h002-20200214
i386                 randconfig-h003-20200214
x86_64               randconfig-h001-20200218
x86_64               randconfig-h002-20200218
x86_64               randconfig-h003-20200218
i386                 randconfig-h001-20200218
i386                 randconfig-h002-20200218
i386                 randconfig-h003-20200218
x86_64               randconfig-h001-20200219
x86_64               randconfig-h002-20200219
x86_64               randconfig-h003-20200219
i386                 randconfig-h001-20200219
i386                 randconfig-h002-20200219
i386                 randconfig-h003-20200219
arc                  randconfig-a001-20200218
arm                  randconfig-a001-20200218
arm64                randconfig-a001-20200218
ia64                 randconfig-a001-20200218
powerpc              randconfig-a001-20200218
sparc                randconfig-a001-20200218
arc                  randconfig-a001-20200214
arm                  randconfig-a001-20200214
arm64                randconfig-a001-20200214
ia64                 randconfig-a001-20200214
powerpc              randconfig-a001-20200214
sparc                randconfig-a001-20200214
riscv                            allyesconfig
riscv                          rv32_defconfig
riscv                            allmodconfig
s390                             alldefconfig
s390                              allnoconfig
s390                             allyesconfig
s390                          debug_defconfig
s390                       zfcpdump_defconfig
sh                          rsk7269_defconfig
sh                            titan_defconfig
sh                  sh7785lcr_32bit_defconfig
sparc                               defconfig
sparc64                          allmodconfig
sparc64                          allyesconfig
sparc64                             defconfig
um                             i386_defconfig
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

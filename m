Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9EF2B1BCF27
	for <lists+ath10k@lfdr.de>; Tue, 28 Apr 2020 23:52:38 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Subject:To:From
	:Date:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=sNb+JABpvDUcHk0KRjlgq4IKfahDbJNQOwFtEOcprQ0=; b=uS4NXsHLdljf4U
	xtRjwagRR6uTeyvK8QPQFEh0iVkGS5kibGIF68NpF5R8mB6t+987/5gxEijcG4CVwxCgPOkCePttu
	lJXg6d7dcvexRXIWMEf+AJLeTkNd2vmIjS2eLw3G1C2pwVfImiPU8merXBenf/jaqwhsXshottuGu
	8+8Dk4zmiyqBbN23DadMwuGflvy4EvC1OblIOVxP2OExIkNuNclOwvpLac2wLZEkFPpVLrOGpjo4G
	VO0t94pXM8+3asSmbtSgvz+wqf/YrnJC7Fxl5wwSxVXaNU/s7S+FhvyTs9sw919T+6YmywRfe2Awo
	HnhZCQrAbXiFQvW1bbCA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jTY9b-0001tn-OV; Tue, 28 Apr 2020 21:52:35 +0000
Received: from mga05.intel.com ([192.55.52.43])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jTY9L-0001iF-G5
 for ath10k@lists.infradead.org; Tue, 28 Apr 2020 21:52:21 +0000
IronPort-SDR: hBpoleW0loZmUCOzOGqfczn1QKuM68ODB89Re1jXkipN7f+amPxADLj9CwMEqB9Y1sdIH4TNnD
 Xxm1IjsBNn1Q==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Apr 2020 14:52:16 -0700
IronPort-SDR: JQGgu7zf93gGIqRKB0WWjwJiWcQcu1pRqle6Uw53lrkGEcXZKMn6pWSaSTMsFD+n33b7Ycop2S
 1o4a7Y0yXOWQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,328,1583222400"; d="scan'208";a="459373065"
Received: from lkp-server01.sh.intel.com (HELO lkp-server01) ([10.239.97.150])
 by fmsmga006.fm.intel.com with ESMTP; 28 Apr 2020 14:52:15 -0700
Received: from kbuild by lkp-server01 with local (Exim 4.89)
 (envelope-from <lkp@intel.com>)
 id 1jTY9G-0009yf-FJ; Wed, 29 Apr 2020 05:52:14 +0800
Date: Wed, 29 Apr 2020 05:51:33 +0800
From: kbuild test robot <lkp@intel.com>
To: Kalle Valo <kvalo@codeaurora.org>
Subject: [ath6kl:master-pending] BUILD SUCCESS
 28bba048decfe96d3daa1c7559bf2fb3dc659fa3
Message-ID: <5ea8a565.eQFHx8vnsIQBm8ah%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200428_145219_809737_355C8793 
X-CRM114-Status: UNSURE (   5.10  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [192.55.52.43 listed in list.dnswl.org]
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

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/kvalo/ath.git  master-pending
branch HEAD: 28bba048decfe96d3daa1c7559bf2fb3dc659fa3  Merge branch 'pending' into master-pending

elapsed time: 481m

configs tested: 161
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
mips                       capcella_defconfig
microblaze                      mmu_defconfig
mips                         tb0287_defconfig
m68k                             allmodconfig
ia64                             allmodconfig
mips                           ip32_defconfig
powerpc                           allnoconfig
openrisc                    or1ksim_defconfig
i386                             allyesconfig
i386                              allnoconfig
i386                             alldefconfig
i386                                defconfig
i386                              debian-10.3
ia64                                defconfig
ia64                              allnoconfig
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
mips                malta_kvm_guest_defconfig
mips                  decstation_64_defconfig
mips                      loongson3_defconfig
mips                          ath79_defconfig
mips                        bcm63xx_defconfig
mips                      fuloong2e_defconfig
mips                      malta_kvm_defconfig
mips                            ar7_defconfig
mips                             allyesconfig
mips                         64r6el_defconfig
mips                              allnoconfig
mips                           32r2_defconfig
mips                             allmodconfig
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
x86_64               randconfig-a001-20200428
i386                 randconfig-a003-20200428
x86_64               randconfig-a003-20200428
i386                 randconfig-a002-20200428
i386                 randconfig-a001-20200428
x86_64               randconfig-a002-20200428
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
ia64                 randconfig-a001-20200428
powerpc              randconfig-a001-20200428
arm64                randconfig-a001-20200428
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

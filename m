Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1894A18B879
	for <lists+ath10k@lfdr.de>; Thu, 19 Mar 2020 15:00:41 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Subject:To:From
	:Date:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=PVErPfXkVjUDkKe7pBlMqp75X/vE93JHpvTtvcr4Ans=; b=M0jKfvxEj26UWj
	SkWT5zmU8CAupNxT/5LJ/JuC9kpYdNKdf0wP1e2J7xV8SbLnMJQiANvs09O1de0q0QzqV5klWi5gG
	EtpsyFbADVKI0/eIW8e1HCuuo/xBB2iiLAtq5Fq7mYQSyL/zQxATcF7EB0EJLciRzKcX4d0xUX/QL
	dHRO/qhiY2SUbKmvR9F8xeYp7wSEKJKga+KNsXgq5q0VfMKxnnPLZjd2j3C3JMArwlX+omM/ZwlHv
	j6rzNZvVuEmHCF2DszovJXUisDpr5K5hPBWjgMp+9W0evD1T3chHQeyOtk5LfevKSaZVNWQLhm4hp
	b6PAk6zSWnC7CvCUKE3A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jEvix-0004cM-Fj; Thu, 19 Mar 2020 14:00:39 +0000
Received: from mga18.intel.com ([134.134.136.126])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jEvis-0004WS-Mr
 for ath10k@lists.infradead.org; Thu, 19 Mar 2020 14:00:36 +0000
IronPort-SDR: 2UHAH7UfOega6JB7Mjj62rOE3nWw3K7iE+w/JArOWbOeHOw3OJZBdhX1BCGjR+RQ5NQbPqSEWi
 bCz6thrRft5w==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Mar 2020 07:00:29 -0700
IronPort-SDR: 2RVAzTpJ82T/EAmar9EZ3Eoz2dtVxHIQBhoWSoYJOyra5QPijKcdWASP8BfphjJi0on5vkhH1i
 11c1fsLrRV+g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,571,1574150400"; d="scan'208";a="236945363"
Received: from lkp-server01.sh.intel.com (HELO lkp-server01) ([10.239.97.150])
 by fmsmga007.fm.intel.com with ESMTP; 19 Mar 2020 07:00:28 -0700
Received: from kbuild by lkp-server01 with local (Exim 4.89)
 (envelope-from <lkp@intel.com>)
 id 1jEvil-00015G-PN; Thu, 19 Mar 2020 22:00:27 +0800
Date: Thu, 19 Mar 2020 21:59:36 +0800
From: kbuild test robot <lkp@intel.com>
To: Kalle Valo <kvalo@codeaurora.org>
Subject: [ath6kl:ath-qca] BUILD SUCCESS
 78fa6be82052fe65de326a00de4e1ee35129a06d
Message-ID: <5e737ac8.1rY6sQEozNnJMT0r%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200319_070034_801806_0189AF65 
X-CRM114-Status: UNSURE (   6.25  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -1.3 (-)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-1.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [134.134.136.126 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/kvalo/ath.git  ath-qca
branch HEAD: 78fa6be82052fe65de326a00de4e1ee35129a06d  Merge branch 'ath-next' into ath-qca

elapsed time: 1012m

configs tested: 152
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
riscv                          rv32_defconfig
riscv                            allyesconfig
microblaze                      mmu_defconfig
um                                  defconfig
i386                              allnoconfig
i386                             alldefconfig
i386                             allyesconfig
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
arc                                 defconfig
arc                              allyesconfig
powerpc                             defconfig
powerpc                       ppc64_defconfig
powerpc                          rhel-kconfig
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
parisc                generic-64bit_defconfig
x86_64               randconfig-a001-20200318
x86_64               randconfig-a002-20200318
x86_64               randconfig-a003-20200318
i386                 randconfig-a001-20200318
i386                 randconfig-a002-20200318
i386                 randconfig-a003-20200318
alpha                randconfig-a001-20200318
m68k                 randconfig-a001-20200318
mips                 randconfig-a001-20200318
nds32                randconfig-a001-20200318
parisc               randconfig-a001-20200318
riscv                randconfig-a001-20200318
c6x                  randconfig-a001-20200318
h8300                randconfig-a001-20200318
microblaze           randconfig-a001-20200318
nios2                randconfig-a001-20200318
sparc64              randconfig-a001-20200318
csky                 randconfig-a001-20200318
openrisc             randconfig-a001-20200318
s390                 randconfig-a001-20200318
sh                   randconfig-a001-20200318
xtensa               randconfig-a001-20200318
x86_64               randconfig-b001-20200318
x86_64               randconfig-b002-20200318
x86_64               randconfig-b003-20200318
i386                 randconfig-b001-20200318
i386                 randconfig-b002-20200318
i386                 randconfig-b003-20200318
x86_64               randconfig-c001-20200318
x86_64               randconfig-c002-20200318
x86_64               randconfig-c003-20200318
i386                 randconfig-c001-20200318
i386                 randconfig-c002-20200318
i386                 randconfig-c003-20200318
x86_64               randconfig-d001-20200318
x86_64               randconfig-d002-20200318
x86_64               randconfig-d003-20200318
i386                 randconfig-d001-20200318
i386                 randconfig-d002-20200318
i386                 randconfig-d003-20200318
x86_64               randconfig-e001-20200318
x86_64               randconfig-e002-20200318
x86_64               randconfig-e003-20200318
i386                 randconfig-e001-20200318
i386                 randconfig-e002-20200318
i386                 randconfig-e003-20200318
x86_64               randconfig-f001-20200318
x86_64               randconfig-f002-20200318
x86_64               randconfig-f003-20200318
i386                 randconfig-f001-20200318
i386                 randconfig-f002-20200318
i386                 randconfig-f003-20200318
x86_64               randconfig-h001-20200318
x86_64               randconfig-h002-20200318
x86_64               randconfig-h003-20200318
i386                 randconfig-h001-20200318
i386                 randconfig-h002-20200318
i386                 randconfig-h003-20200318
riscv                             allnoconfig
riscv                               defconfig
riscv                    nommu_virt_defconfig
riscv                            allmodconfig
s390                             alldefconfig
s390                             allmodconfig
s390                              allnoconfig
s390                             allyesconfig
s390                          debug_defconfig
s390                                defconfig
s390                       zfcpdump_defconfig
sh                          rsk7269_defconfig
sh                               allmodconfig
sh                            titan_defconfig
sh                  sh7785lcr_32bit_defconfig
sh                                allnoconfig
sparc                               defconfig
sparc64                          allmodconfig
sparc64                           allnoconfig
sparc64                          allyesconfig
sparc64                             defconfig
um                           x86_64_defconfig
um                             i386_defconfig
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

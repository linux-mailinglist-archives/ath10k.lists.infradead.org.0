Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0B5941A12C2
	for <lists+ath10k@lfdr.de>; Tue,  7 Apr 2020 19:34:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Subject:To:From
	:Date:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=4uld1VVmAOnlRSk+o+x0BD72Vfai+cp0ogAHQjegW6g=; b=bbPr7uYPz0D9tG
	4bjnsBgtciqIftekn8c6QLQjxB5TuYUHl2tb6zFuwZ5+JNjP0rhTKoFTNcgOGAS+3oWZEEfpjc/ux
	g9H2LzE9z8dcVSgdMjgYO94fM6GFcG3+zjY/tIZX3R8U8sx8YFk6WGnZFd2my6+2aRahHE79PIT51
	FOzMr1FxbQNrtv1baYucwcEr4kOsbPkyIb4glYGZKZv7xVSUkTbLvGHt38WSHc/b/90MyCGsd2xl/
	ozwHiwYBla1CeLJwKnuXWGButxMyjVu+03M80GAmtEWwY7I4bSJMt2HWnffnWhI7B659TPAUhnwEE
	a/Oj3t8Q1e++icM+dKkw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jLs78-0007PY-1o; Tue, 07 Apr 2020 17:34:18 +0000
Received: from mga04.intel.com ([192.55.52.120])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jLs74-0007P2-3p
 for ath10k@lists.infradead.org; Tue, 07 Apr 2020 17:34:15 +0000
IronPort-SDR: HB7JAMMjGE6hsMcaZ+cK95DP8c6a40VVemNBcEQ/V5ESHBKaOxtBjcXe0T09O1iaJiRi91Qch2
 m59cLgbnLGwA==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Apr 2020 10:34:12 -0700
IronPort-SDR: OKipPB5qWsMAatQR/5RRa4Vb1FrtTPxg/dIrpmU+ptBmiqm8fyrU6SjRRHm5ETG2NcCRBmCE3p
 MzecE1ipqTKQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.72,356,1580803200"; d="scan'208";a="242135432"
Received: from lkp-server01.sh.intel.com (HELO lkp-server01) ([10.239.97.150])
 by fmsmga007.fm.intel.com with ESMTP; 07 Apr 2020 10:34:09 -0700
Received: from kbuild by lkp-server01 with local (Exim 4.89)
 (envelope-from <lkp@intel.com>)
 id 1jLs6y-0003bO-Ab; Wed, 08 Apr 2020 01:34:08 +0800
Date: Wed, 08 Apr 2020 01:33:51 +0800
From: kbuild test robot <lkp@intel.com>
To: Kalle Valo <kvalo@codeaurora.org>
Subject: [ath6kl:master] BUILD SUCCESS 24a48bc80f7d4d4905c511a92ea157b8fd434c83
Message-ID: <5e8cb97f.GU+NDRfe3shVCgKi%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200407_103414_226872_65D62266 
X-CRM114-Status: UNSURE (   5.10  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [192.55.52.120 listed in list.dnswl.org]
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
branch HEAD: 24a48bc80f7d4d4905c511a92ea157b8fd434c83  Add localversion-wireless-testing-ath

elapsed time: 713m

configs tested: 140
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
arm                          exynos_defconfig
arm                        multi_v5_defconfig
arm                        multi_v7_defconfig
arm                           sunxi_defconfig
arm64                               defconfig
sparc                            allyesconfig
riscv                            allyesconfig
s390                                defconfig
arc                                 defconfig
microblaze                    nommu_defconfig
sh                          rsk7269_defconfig
ia64                             allmodconfig
xtensa                       common_defconfig
ia64                                defconfig
s390                             alldefconfig
powerpc                             defconfig
i386                              allnoconfig
i386                             allyesconfig
i386                             alldefconfig
i386                                defconfig
i386                              debian-10.3
ia64                             alldefconfig
ia64                              allnoconfig
ia64                             allyesconfig
nios2                         3c120_defconfig
nios2                         10m50_defconfig
c6x                        evmc6678_defconfig
xtensa                          iss_defconfig
c6x                              allyesconfig
openrisc                 simple_smp_defconfig
openrisc                    or1ksim_defconfig
nds32                               defconfig
nds32                             allnoconfig
csky                                defconfig
alpha                               defconfig
h8300                       h8s-sim_defconfig
h8300                     edosk2674_defconfig
m68k                       m5475evb_defconfig
m68k                             allmodconfig
h8300                    h8300h-sim_defconfig
m68k                           sun3_defconfig
m68k                          multi_defconfig
arc                              allyesconfig
microblaze                      mmu_defconfig
powerpc                           allnoconfig
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
x86_64               randconfig-a003-20200407
i386                 randconfig-a002-20200407
x86_64               randconfig-a002-20200407
x86_64               randconfig-a001-20200407
i386                 randconfig-a001-20200407
i386                 randconfig-a003-20200407
alpha                randconfig-a001-20200407
m68k                 randconfig-a001-20200407
nds32                randconfig-a001-20200407
parisc               randconfig-a001-20200407
riscv                randconfig-a001-20200407
c6x                  randconfig-a001-20200407
h8300                randconfig-a001-20200407
microblaze           randconfig-a001-20200407
nios2                randconfig-a001-20200407
sparc64              randconfig-a001-20200407
csky                 randconfig-a001-20200407
openrisc             randconfig-a001-20200407
s390                 randconfig-a001-20200407
sh                   randconfig-a001-20200407
xtensa               randconfig-a001-20200407
x86_64               randconfig-b001-20200407
x86_64               randconfig-b002-20200407
x86_64               randconfig-b003-20200407
i386                 randconfig-b001-20200407
i386                 randconfig-b002-20200407
i386                 randconfig-b003-20200407
x86_64               randconfig-d001-20200407
x86_64               randconfig-d002-20200407
x86_64               randconfig-d003-20200407
i386                 randconfig-d001-20200407
i386                 randconfig-d002-20200407
i386                 randconfig-d003-20200407
x86_64               randconfig-f001-20200407
x86_64               randconfig-f002-20200407
x86_64               randconfig-f003-20200407
i386                 randconfig-f001-20200407
i386                 randconfig-f002-20200407
i386                 randconfig-f003-20200407
x86_64               randconfig-g003-20200407
i386                 randconfig-g003-20200407
x86_64               randconfig-g002-20200407
i386                 randconfig-g001-20200407
i386                 randconfig-g002-20200407
x86_64               randconfig-g001-20200407
riscv                    nommu_virt_defconfig
riscv                             allnoconfig
riscv                               defconfig
riscv                          rv32_defconfig
riscv                            allmodconfig
s390                             allmodconfig
s390                              allnoconfig
s390                             allyesconfig
s390                          debug_defconfig
s390                       zfcpdump_defconfig
sh                               allmodconfig
sh                                allnoconfig
sh                  sh7785lcr_32bit_defconfig
sh                            titan_defconfig
sparc                               defconfig
sparc64                          allmodconfig
sparc64                           allnoconfig
sparc64                          allyesconfig
sparc64                             defconfig
um                           x86_64_defconfig
um                             i386_defconfig
um                                  defconfig
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

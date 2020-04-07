Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 56F091A16E0
	for <lists+ath10k@lfdr.de>; Tue,  7 Apr 2020 22:35:47 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Subject:To:From
	:Date:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=xuIHkr9TkUYu/AIwU1GUeLZOA5OpzSpaoU1PL9sb+mc=; b=aTSbX++ikVUvfk
	3StSIqh9r4S/O0b3rW8n9QmnNCF76w0a5vi4/cjmXoxMGwhGYNzuaUH77sO8c/CgFkwCTL5MH+nPE
	uHXjERLQKZItl/0t0HUK0LEebO4HLiMsBexyqPrByeJ9py3FJSKLT8zBjBmAeKfVdggFgvcmOR0+K
	XhyB7J68aF6KOdHg4LezfZeToVN+apnvRrrbozOYpje8xrONSbLbZJrwjQgESRmnqudBiDWqJe7R0
	DI6D5udDK+eLh7k/dnJ76dkM+tA247E9zLx5Zy/QGc0Yoldg/Y7Bm5mB7bh5dddi8Lr23WdwLlxIR
	gq+2DjXL9dg3G2CB/YBQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jLuwh-0003W8-2r; Tue, 07 Apr 2020 20:35:43 +0000
Received: from mga17.intel.com ([192.55.52.151])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jLuwc-0003Q5-Dp
 for ath10k@lists.infradead.org; Tue, 07 Apr 2020 20:35:40 +0000
IronPort-SDR: 6JA4dLV16TM/k2gW0l7xxl/zI1PQXOOYUdHwpd95t6JVcZpJKqHJM1lcnhtNNe5LYxRMh4SDu4
 3/1BGOqtaWeQ==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Apr 2020 13:35:37 -0700
IronPort-SDR: 3qeBxNCrWuzhYNjjsT4gCCajStRFxJNkFLEYyZiJp2fCqBQmki7pqS5YxzwrCKtNRr1hQhrXQm
 Qu1y7U2cP2uw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.72,356,1580803200"; d="scan'208";a="397979433"
Received: from lkp-server01.sh.intel.com (HELO lkp-server01) ([10.239.97.150])
 by orsmga004.jf.intel.com with ESMTP; 07 Apr 2020 13:35:35 -0700
Received: from kbuild by lkp-server01 with local (Exim 4.89)
 (envelope-from <lkp@intel.com>)
 id 1jLuwZ-000HOW-52; Wed, 08 Apr 2020 04:35:35 +0800
Date: Wed, 08 Apr 2020 04:34:52 +0800
From: kbuild test robot <lkp@intel.com>
To: Kalle Valo <kvalo@codeaurora.org>
Subject: [ath6kl:ath-next] BUILD SUCCESS
 2bbcaaee1fcbd83272e29f31e2bb7e70d8c49e05
Message-ID: <5e8ce3ec.qawTqmCCp4+w0sei%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200407_133538_526116_A3692C8A 
X-CRM114-Status: UNSURE (   5.00  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [192.55.52.151 listed in list.dnswl.org]
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

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/kvalo/ath.git  ath-next
branch HEAD: 2bbcaaee1fcbd83272e29f31e2bb7e70d8c49e05  ath9k: Fix general protection fault in ath9k_hif_usb_rx_cb

elapsed time: 894m

configs tested: 138
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
sparc                            allyesconfig
ia64                             allmodconfig
xtensa                       common_defconfig
sparc64                          allyesconfig
ia64                                defconfig
powerpc                             defconfig
i386                              allnoconfig
i386                             allyesconfig
i386                             alldefconfig
i386                                defconfig
i386                              debian-10.3
ia64                              allnoconfig
ia64                             allyesconfig
ia64                             alldefconfig
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
arc                                 defconfig
arc                              allyesconfig
powerpc                          rhel-kconfig
microblaze                      mmu_defconfig
microblaze                    nommu_defconfig
powerpc                           allnoconfig
powerpc                       ppc64_defconfig
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
x86_64               randconfig-c001-20200407
x86_64               randconfig-c002-20200407
x86_64               randconfig-c003-20200407
i386                 randconfig-c001-20200407
i386                 randconfig-c002-20200407
i386                 randconfig-c003-20200407
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
x86_64               randconfig-g001-20200407
x86_64               randconfig-g002-20200407
x86_64               randconfig-g003-20200407
i386                 randconfig-g001-20200407
i386                 randconfig-g002-20200407
i386                 randconfig-g003-20200407
x86_64               randconfig-h001-20200407
x86_64               randconfig-h002-20200407
x86_64               randconfig-h003-20200407
i386                 randconfig-h001-20200407
i386                 randconfig-h002-20200407
i386                 randconfig-h003-20200407
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
sh                          rsk7269_defconfig
sh                               allmodconfig
sh                            titan_defconfig
sh                  sh7785lcr_32bit_defconfig
sh                                allnoconfig
sparc                               defconfig
sparc64                          allmodconfig
sparc64                           allnoconfig
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

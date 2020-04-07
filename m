Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CD1511A04F6
	for <lists+ath10k@lfdr.de>; Tue,  7 Apr 2020 04:37:07 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Subject:To:From
	:Date:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=pqSRIM2a0mKnRETNlTJcBrBcxxFDcBda79elFmU5ZgE=; b=ZyerBKY2bpGXNB
	bWMHqBGJ84A7Iy9qKHI8DGzatVEIliSkS8/GOaup6d7xEY0l/r/QKRFIpMJRZj4IYoAmpOTG4xy0h
	bqhuDbRplHDWRFJUapOnkNY6JpD6Y9jaW/syJRR4NSQBLQLzsQ30PVJejP+EdogMeYTx3JVqTOBS3
	zdIpYuEqOGNkHwOaGOYE9PGGV4gcr/B9rbj+9V45mRHFnry9P5UOeW5FMvXeL/09s2w/cg26ny0YN
	7nSlSVN30jhCaCVSEzWHAGwaEGbaymDa+glNSeSyL61BufBIX9fScx/IhTOYvhXRzYZF7b+YOIeKv
	n1AI6vg+yGG96KwQubBA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jLe6k-0002id-MI; Tue, 07 Apr 2020 02:36:58 +0000
Received: from mga01.intel.com ([192.55.52.88])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jLe6f-0002hj-UY
 for ath10k@lists.infradead.org; Tue, 07 Apr 2020 02:36:55 +0000
IronPort-SDR: zmgHHHU7a9EBx0IUrKVme5UHLsYL1DurwIX8j/uRJLDIltrgQh60aZSjrRQ46F1a1wTgAh82BE
 RhL+gwiH3iTA==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Apr 2020 19:36:53 -0700
IronPort-SDR: fRFS8UtzX+0dX0TlC6r3Uz9Fo+34x4WICTaCDBETXSULIuv1LS4J/MQZcEQeV7sMfi6WcoBmkn
 s6sTh8GKyPlQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.72,353,1580803200"; d="scan'208";a="251080352"
Received: from lkp-server01.sh.intel.com (HELO lkp-server01) ([10.239.97.150])
 by orsmga003.jf.intel.com with ESMTP; 06 Apr 2020 19:36:51 -0700
Received: from kbuild by lkp-server01 with local (Exim 4.89)
 (envelope-from <lkp@intel.com>)
 id 1jLe6c-0000HU-Ps; Tue, 07 Apr 2020 10:36:50 +0800
Date: Tue, 07 Apr 2020 10:36:28 +0800
From: kbuild test robot <lkp@intel.com>
To: Kalle Valo <kvalo@codeaurora.org>
Subject: [ath6kl:master] BUILD SUCCESS 0a0ab84f3c86f3986f94790ba9ae1501c6c043cb
Message-ID: <5e8be72c.awOsmVydHLvle+66%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200406_193653_997725_71D85A1B 
X-CRM114-Status: UNSURE (   5.43  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.0 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [192.55.52.88 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [192.55.52.88 listed in wl.mailspike.net]
 -0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
branch HEAD: 0a0ab84f3c86f3986f94790ba9ae1501c6c043cb  Add localversion-wireless-testing-ath

elapsed time: 483m

configs tested: 147
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
ia64                             alldefconfig
sh                  sh7785lcr_32bit_defconfig
mips                              allnoconfig
i386                              allnoconfig
i386                             alldefconfig
i386                             allyesconfig
i386                              debian-10.3
i386                                defconfig
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
s390                 randconfig-a001-20200406
xtensa               randconfig-a001-20200406
csky                 randconfig-a001-20200406
openrisc             randconfig-a001-20200406
sh                   randconfig-a001-20200406
x86_64               randconfig-c001-20200407
x86_64               randconfig-c002-20200407
x86_64               randconfig-c003-20200407
i386                 randconfig-c001-20200407
i386                 randconfig-c002-20200407
i386                 randconfig-c003-20200407
x86_64               randconfig-d001-20200406
x86_64               randconfig-d002-20200406
x86_64               randconfig-d003-20200406
i386                 randconfig-d001-20200406
i386                 randconfig-d002-20200406
i386                 randconfig-d003-20200406
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

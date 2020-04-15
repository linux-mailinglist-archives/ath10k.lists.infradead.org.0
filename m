Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F1E041A93CE
	for <lists+ath10k@lfdr.de>; Wed, 15 Apr 2020 09:03:14 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Subject:To:From
	:Date:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=pVaQa7oeWQVwjWyY3PmpYmLvEjh2Fq+AQvrT62eQrtE=; b=Prnk5TqNnlOhr7
	izRBHn1x6Y7Jgn5/7SpdUKRIWVPFwBq7sAOQun4zCXBKaR+vGQDApiug2o3H8JpvHloxMfJIs7a5y
	ItV6xuupf15mM0hF49tfT7F6fLYUZ8ZdsaBUf8GGMUOWFIkE9ertGMymzKm2vnCpS+29a8t9qEasK
	V60nRkTOplMqdMrMDwjYswVXUCex0a/xymNau20VJCDGzNLdKQ//LDwqObf8khNWAMPaEBD1c89/P
	cE5JeHkoXsiCLs49PHLdwcM9wmo6HnFZHtowpp/O2TaOU+UM0UGGSv24sh1R/E/6g4jDKHJC9lExA
	yXFIGbGzDYQfJUUobAvg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jOc4l-0005ZO-DH; Wed, 15 Apr 2020 07:03:11 +0000
Received: from mga18.intel.com ([134.134.136.126])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jOc4h-0005Yy-Mh
 for ath10k@lists.infradead.org; Wed, 15 Apr 2020 07:03:09 +0000
IronPort-SDR: juu1F0ADSvCkI/cz/wr7jaa45QV4ikmEA+cx545l4ep9GiLbNNP9u2Ep/dMQEzDi+nhUbr6Toh
 pRsgiZTe8HXQ==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Apr 2020 00:03:05 -0700
IronPort-SDR: iQbci45hzw6QrAc/aYKQ1RGuuud/sVXNEaVR8pOZ5V3xAiNQP9wSDLyQ1atWuh9CtzyUDmKhfp
 VBI6GvFD0Khg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.72,386,1580803200"; d="scan'208";a="256770513"
Received: from lkp-server01.sh.intel.com (HELO lkp-server01) ([10.239.97.150])
 by orsmga006.jf.intel.com with ESMTP; 15 Apr 2020 00:03:03 -0700
Received: from kbuild by lkp-server01 with local (Exim 4.89)
 (envelope-from <lkp@intel.com>)
 id 1jOc4d-000EwI-8Z; Wed, 15 Apr 2020 15:03:03 +0800
Date: Wed, 15 Apr 2020 15:02:09 +0800
From: kbuild test robot <lkp@intel.com>
To: Kalle Valo <kvalo@codeaurora.org>
Subject: [ath6kl:ath-next] BUILD SUCCESS
 7395fb496577f0f9abf7fd278f00a8941b2f7ad8
Message-ID: <5e96b171.G4qXA4HcdmNbrxDv%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200415_000307_787917_7686491F 
X-CRM114-Status: UNSURE (   5.71  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [134.134.136.126 listed in list.dnswl.org]
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
branch HEAD: 7395fb496577f0f9abf7fd278f00a8941b2f7ad8  ath11k: rx path optimizations

elapsed time: 1037m

configs tested: 208
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
arm                        multi_v5_defconfig
arm                        multi_v7_defconfig
arm                        shmobile_defconfig
arm                           sunxi_defconfig
arm                          exynos_defconfig
arm64                               defconfig
sparc                            allyesconfig
um                           x86_64_defconfig
powerpc                             defconfig
m68k                       m5475evb_defconfig
sh                  sh7785lcr_32bit_defconfig
nios2                         3c120_defconfig
powerpc                           allnoconfig
mips                      fuloong2e_defconfig
riscv                               defconfig
s390                             alldefconfig
ia64                                defconfig
mips                              allnoconfig
s390                             allyesconfig
s390                              allnoconfig
um                                  defconfig
riscv                             allnoconfig
i386                              allnoconfig
i386                             alldefconfig
i386                             allyesconfig
i386                              debian-10.3
i386                                defconfig
ia64                             allmodconfig
ia64                              allnoconfig
ia64                             allyesconfig
ia64                             alldefconfig
c6x                              allyesconfig
c6x                        evmc6678_defconfig
nios2                         10m50_defconfig
openrisc                    or1ksim_defconfig
openrisc                 simple_smp_defconfig
xtensa                       common_defconfig
xtensa                          iss_defconfig
alpha                               defconfig
csky                                defconfig
nds32                             allnoconfig
nds32                               defconfig
h8300                       h8s-sim_defconfig
h8300                     edosk2674_defconfig
m68k                             allmodconfig
h8300                    h8300h-sim_defconfig
m68k                           sun3_defconfig
m68k                          multi_defconfig
arc                              allyesconfig
arc                                 defconfig
microblaze                      mmu_defconfig
microblaze                    nommu_defconfig
powerpc                       ppc64_defconfig
powerpc                          rhel-kconfig
mips                           32r2_defconfig
mips                         64r6el_defconfig
mips                             allmodconfig
mips                             allyesconfig
mips                      malta_kvm_defconfig
parisc                            allnoconfig
parisc                generic-64bit_defconfig
parisc                generic-32bit_defconfig
parisc                           allyesconfig
x86_64               randconfig-a001-20200414
x86_64               randconfig-a002-20200414
x86_64               randconfig-a003-20200414
i386                 randconfig-a001-20200414
i386                 randconfig-a002-20200414
i386                 randconfig-a003-20200414
i386                 randconfig-a002-20200415
x86_64               randconfig-a001-20200415
x86_64               randconfig-a002-20200415
i386                 randconfig-a003-20200415
i386                 randconfig-a001-20200415
x86_64               randconfig-a003-20200415
alpha                randconfig-a001-20200414
m68k                 randconfig-a001-20200414
nds32                randconfig-a001-20200414
parisc               randconfig-a001-20200414
riscv                randconfig-a001-20200414
alpha                randconfig-a001-20200415
m68k                 randconfig-a001-20200415
mips                 randconfig-a001-20200415
nds32                randconfig-a001-20200415
parisc               randconfig-a001-20200415
riscv                randconfig-a001-20200415
c6x                  randconfig-a001-20200414
h8300                randconfig-a001-20200414
microblaze           randconfig-a001-20200414
nios2                randconfig-a001-20200414
sparc64              randconfig-a001-20200414
c6x                  randconfig-a001-20200415
h8300                randconfig-a001-20200415
microblaze           randconfig-a001-20200415
nios2                randconfig-a001-20200415
sparc64              randconfig-a001-20200415
csky                 randconfig-a001-20200414
openrisc             randconfig-a001-20200414
s390                 randconfig-a001-20200414
sh                   randconfig-a001-20200414
xtensa               randconfig-a001-20200414
s390                 randconfig-a001-20200415
xtensa               randconfig-a001-20200415
sh                   randconfig-a001-20200415
openrisc             randconfig-a001-20200415
csky                 randconfig-a001-20200415
x86_64               randconfig-b003-20200415
i386                 randconfig-b001-20200415
i386                 randconfig-b003-20200415
x86_64               randconfig-b001-20200414
x86_64               randconfig-b002-20200414
x86_64               randconfig-b003-20200414
i386                 randconfig-b001-20200414
i386                 randconfig-b002-20200414
i386                 randconfig-b003-20200414
x86_64               randconfig-b002-20200415
x86_64               randconfig-b001-20200415
i386                 randconfig-b002-20200415
x86_64               randconfig-c001-20200414
x86_64               randconfig-c002-20200414
x86_64               randconfig-c003-20200414
i386                 randconfig-c001-20200414
i386                 randconfig-c002-20200414
i386                 randconfig-c003-20200414
i386                 randconfig-d002-20200415
x86_64               randconfig-d003-20200415
i386                 randconfig-d003-20200415
x86_64               randconfig-d001-20200415
i386                 randconfig-d001-20200415
x86_64               randconfig-d002-20200415
x86_64               randconfig-e001-20200415
x86_64               randconfig-e002-20200415
x86_64               randconfig-e003-20200415
i386                 randconfig-e001-20200415
i386                 randconfig-e002-20200415
i386                 randconfig-e003-20200415
i386                 randconfig-f003-20200415
i386                 randconfig-f002-20200415
i386                 randconfig-f001-20200415
x86_64               randconfig-f001-20200414
x86_64               randconfig-f003-20200414
x86_64               randconfig-g001-20200414
x86_64               randconfig-g002-20200414
x86_64               randconfig-g003-20200414
i386                 randconfig-g001-20200414
i386                 randconfig-g002-20200414
i386                 randconfig-g003-20200414
x86_64               randconfig-g001-20200415
x86_64               randconfig-g003-20200415
i386                 randconfig-g001-20200415
i386                 randconfig-g002-20200415
i386                 randconfig-g003-20200415
x86_64               randconfig-g002-20200415
x86_64               randconfig-h001-20200414
x86_64               randconfig-h002-20200414
x86_64               randconfig-h003-20200414
i386                 randconfig-h002-20200414
i386                 randconfig-h003-20200414
i386                 randconfig-h001-20200414
x86_64               randconfig-h001-20200415
i386                 randconfig-h003-20200415
i386                 randconfig-h002-20200415
i386                 randconfig-h001-20200415
x86_64               randconfig-h002-20200415
arc                  randconfig-a001-20200414
arm                  randconfig-a001-20200414
arm64                randconfig-a001-20200414
ia64                 randconfig-a001-20200414
powerpc              randconfig-a001-20200414
sparc                randconfig-a001-20200414
arc                  randconfig-a001-20200415
arm64                randconfig-a001-20200415
ia64                 randconfig-a001-20200415
powerpc              randconfig-a001-20200415
sparc                randconfig-a001-20200415
riscv                            allmodconfig
riscv                            allyesconfig
riscv                    nommu_virt_defconfig
riscv                          rv32_defconfig
s390                             allmodconfig
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
um                             i386_defconfig
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

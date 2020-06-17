Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B12E31FC60E
	for <lists+ath10k@lfdr.de>; Wed, 17 Jun 2020 08:15:40 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Subject:To:From
	:Date:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=+sEyQEgkpoPsCel5gcgM4nSYvb6eSQ1PrX93kn3OBn4=; b=IIlG9I5v9+EngN
	i74dqH8f5Y0cUTF5cXVkIaEoluJfeP697pP+VRBY7CJkj360ngIBuKD1TujfjdEo2ANoGAjvHj6ae
	9DqZs9CBJO5CNXxiwLtIGie0VVkku53DUH4KCoB7nHtHzfKiDvsqYnC3QA08ZrCPleXvI/DJADCJH
	bCx/86JhWlWn7jwoQK1qGvvLEYm/Qh+aPcrPzmBfsHtCI1vFxjWjqBCqHmEC5Onw2IXAoShI0PaTe
	MlOx34Npf4lRxhTnae0J/GyDpS2KaKpywUrCDFzo9/0RUwv7f++mlZvAPFWIObuyzvGGei2FpgNrZ
	NXmCzvpppy3SeViUKSjg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jlRMJ-0003p5-0b; Wed, 17 Jun 2020 06:15:39 +0000
Received: from mga09.intel.com ([134.134.136.24])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jlRMB-0003jK-BS
 for ath10k@lists.infradead.org; Wed, 17 Jun 2020 06:15:32 +0000
IronPort-SDR: i9idnr+a/JHZGU6NpJZf0G7Od2YSIT/RCcZkVmMSJRMRvWOFUegH0fn5fgK0AI/nQa470DYe7d
 MUtM6bGPx3Rg==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Jun 2020 23:15:27 -0700
IronPort-SDR: JDXrzkN3PEIx2N5uXTJ1J99cg1X5YIDbUwgC5PzUD+QkBu62yGyg9Pti3wvY9l619fXgPH6mh0
 BQkApI9cF7bA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,521,1583222400"; d="scan'208";a="317440590"
Received: from lkp-server02.sh.intel.com (HELO 19cb4f8aa5d7) ([10.239.97.151])
 by FMSMGA003.fm.intel.com with ESMTP; 16 Jun 2020 23:15:26 -0700
Received: from kbuild by 19cb4f8aa5d7 with local (Exim 4.92)
 (envelope-from <lkp@intel.com>)
 id 1jlRM5-00002C-Ty; Wed, 17 Jun 2020 06:15:25 +0000
Date: Wed, 17 Jun 2020 14:14:33 +0800
From: kernel test robot <lkp@intel.com>
To: Kalle Valo <kvalo@codeaurora.org>
Subject: [ath6kl:master-pending] BUILD SUCCESS
 5801c5baace2da5048cf6ebb79f2cce11f781aba
Message-ID: <5ee9b4c9./FBbgVEGzuimFJjv%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200616_231531_435370_DACE2683 
X-CRM114-Status: UNSURE (   5.74  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -3.2 (---)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-3.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [134.134.136.24 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [134.134.136.24 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 1.8 LONGWORDS              Long string of long words
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
branch HEAD: 5801c5baace2da5048cf6ebb79f2cce11f781aba  Merge branch 'pending' into master-pending

elapsed time: 721m

configs tested: 113
configs skipped: 4

The following configs have been built successfully.
More configs may be tested in the coming days.

arm                                 defconfig
arm                              allyesconfig
arm                              allmodconfig
arm                               allnoconfig
arm64                            allyesconfig
arm64                               defconfig
arm64                            allmodconfig
arm64                             allnoconfig
arm                         axm55xx_defconfig
mips                         bigsur_defconfig
mips                      bmips_stb_defconfig
c6x                              allyesconfig
sh                            migor_defconfig
powerpc                      pasemi_defconfig
arm                       cns3420vb_defconfig
xtensa                              defconfig
sh                          urquell_defconfig
mips                           mtx1_defconfig
mips                       capcella_defconfig
mips                  mips_paravirt_defconfig
mips                      pistachio_defconfig
mips                   sb1250_swarm_defconfig
mips                           ip28_defconfig
mips                           ip27_defconfig
c6x                        evmc6678_defconfig
arm                       netwinder_defconfig
sh                           se7721_defconfig
arm                         ebsa110_defconfig
powerpc                     mpc512x_defconfig
sh                        sh7757lcr_defconfig
arm                           sunxi_defconfig
i386                              allnoconfig
i386                             allyesconfig
i386                                defconfig
i386                              debian-10.3
ia64                             allmodconfig
ia64                                defconfig
ia64                              allnoconfig
ia64                             allyesconfig
m68k                             allmodconfig
m68k                              allnoconfig
m68k                           sun3_defconfig
m68k                                defconfig
m68k                             allyesconfig
nios2                               defconfig
nios2                            allyesconfig
openrisc                            defconfig
c6x                               allnoconfig
openrisc                         allyesconfig
nds32                               defconfig
nds32                             allnoconfig
csky                             allyesconfig
csky                                defconfig
alpha                               defconfig
alpha                            allyesconfig
xtensa                           allyesconfig
h8300                            allyesconfig
h8300                            allmodconfig
arc                                 defconfig
arc                              allyesconfig
sh                               allmodconfig
sh                                allnoconfig
microblaze                        allnoconfig
mips                             allyesconfig
mips                              allnoconfig
mips                             allmodconfig
parisc                            allnoconfig
parisc                              defconfig
parisc                           allyesconfig
parisc                           allmodconfig
powerpc                          allyesconfig
powerpc                          rhel-kconfig
powerpc                          allmodconfig
powerpc                           allnoconfig
powerpc                             defconfig
i386                 randconfig-a006-20200615
i386                 randconfig-a002-20200615
i386                 randconfig-a001-20200615
i386                 randconfig-a004-20200615
i386                 randconfig-a005-20200615
i386                 randconfig-a003-20200615
i386                 randconfig-a015-20200615
i386                 randconfig-a011-20200615
i386                 randconfig-a014-20200615
i386                 randconfig-a013-20200615
i386                 randconfig-a016-20200615
i386                 randconfig-a012-20200615
riscv                            allyesconfig
riscv                             allnoconfig
riscv                               defconfig
riscv                            allmodconfig
s390                             allyesconfig
s390                              allnoconfig
s390                             allmodconfig
s390                                defconfig
sparc                            allyesconfig
sparc                               defconfig
sparc64                             defconfig
sparc64                           allnoconfig
sparc64                          allyesconfig
sparc64                          allmodconfig
um                               allmodconfig
um                                allnoconfig
um                               allyesconfig
um                                  defconfig
x86_64                                   rhel
x86_64                         rhel-7.2-clear
x86_64                                    lkp
x86_64                              fedora-25
x86_64                               rhel-7.6
x86_64                    rhel-7.6-kselftests
x86_64                               rhel-8.3
x86_64                                  kexec

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org

_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k

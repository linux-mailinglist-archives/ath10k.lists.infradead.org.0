Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 03ED71FC0A5
	for <lists+ath10k@lfdr.de>; Tue, 16 Jun 2020 23:07:53 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Subject:To:From
	:Date:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=8dkfUQ1L6hdu5usbeCp7K08qaV4o8DQvm0sEXotjPfY=; b=XW7Ikwc9bo0vpX
	XkiEocfB9gMHuv5aUaEpqumSX+w0fxXJ1HVcOhqUJezXiYERPvaZ8/v77hoMapYMuC2EB9WdfLhkR
	cknlBcsrdG4UPjwhfOrC5MMsO4muVGxfFYXwSa/uDxsr7prVHnhb1oslwWyj5hisbNxwdb7uazZSe
	YlS8B5GEPN+w1xiHZduIq+X5NXOVQIJciBQIu9hqbVrWMwkC1C4Ohy2YxrP78NvG4/ozmkNFvFCiJ
	DW8pXnD0Cvy9M+1NAnX5wypuu0t7SPugVJ8Em2xB3QNBdoQ2XpyQV6GqgsQPKrKH2R5iPwqrMZCOC
	QxMwzxLj/cPUNramtdcg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jlIo9-0002zZ-Vz; Tue, 16 Jun 2020 21:07:49 +0000
Received: from mga01.intel.com ([192.55.52.88])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jlIo6-0002yh-3p
 for ath10k@lists.infradead.org; Tue, 16 Jun 2020 21:07:47 +0000
IronPort-SDR: 493ZJ3JS1UeVcGkDKtvayC4CV+HdUgNh8vZeRXfVsf3p8KyI8chv7eCV/voyEHPPkgK0mo5j66
 nQ42ZSAAmBSw==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Jun 2020 14:07:45 -0700
IronPort-SDR: NwGTgmZS7iSA4qqjNmWo0svyBLPYBbvgnkl5ccdEBlFFVeMUwL7F6w1zcmC2jgewADw/k1ZRje
 vEHc+ait/SmQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,519,1583222400"; d="scan'208";a="277055009"
Received: from lkp-server01.sh.intel.com (HELO b4e26a9a4e5e) ([10.239.97.150])
 by orsmga006.jf.intel.com with ESMTP; 16 Jun 2020 14:07:43 -0700
Received: from kbuild by b4e26a9a4e5e with local (Exim 4.92)
 (envelope-from <lkp@intel.com>)
 id 1jlIo2-0000Fb-IE; Tue, 16 Jun 2020 21:07:42 +0000
Date: Wed, 17 Jun 2020 05:06:43 +0800
From: kernel test robot <lkp@intel.com>
To: Kalle Valo <kvalo@codeaurora.org>
Subject: [ath6kl:master] BUILD SUCCESS 91885ac638c6efed06a9d47774c08b063edb4dce
Message-ID: <5ee93463.i4aXT7yz9oBSqYFR%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200616_140746_198152_7249BECC 
X-CRM114-Status: UNSURE (   4.72  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -3.2 (---)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-3.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [192.55.52.88 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [192.55.52.88 listed in wl.mailspike.net]
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

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/kvalo/ath.git  master
branch HEAD: 91885ac638c6efed06a9d47774c08b063edb4dce  Add localversion-wireless-testing-ath

elapsed time: 484m

configs tested: 101
configs skipped: 1

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
arm                             pxa_defconfig
um                           x86_64_defconfig
mips                      pic32mzda_defconfig
arm                       versatile_defconfig
ia64                      gensparse_defconfig
i386                             allyesconfig
i386                                defconfig
i386                              debian-10.3
i386                              allnoconfig
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
xtensa                              defconfig
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
powerpc                             defconfig
powerpc                          allyesconfig
powerpc                          rhel-kconfig
powerpc                          allmodconfig
powerpc                           allnoconfig
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
x86_64                               rhel-7.6
x86_64                    rhel-7.6-kselftests
x86_64                               rhel-8.3
x86_64                                  kexec
x86_64                                   rhel
x86_64                         rhel-7.2-clear
x86_64                                    lkp
x86_64                              fedora-25

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org

_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k

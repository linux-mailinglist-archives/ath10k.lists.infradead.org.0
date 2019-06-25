Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0F70B55BB5
	for <lists+ath10k@lfdr.de>; Wed, 26 Jun 2019 00:53:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kXzIfrvRLAVLsZliPzub7AWpyuI+uTtBjYJK7+ABjHU=; b=ax6MIxCoJwkUWa
	us25tK9hjJ4WAMTsOrjXwuUI7iNLiu/sL+JjrvN0M69ZYON/7f7BVbVOQhWPOf1W6GzCJMvD9WHlp
	UqEzc45am/2suVIAa2dJfcFQegBN2l1duJXywdd/j2jpERtEW0qczNWtWZOHeeGK8dZZ4uNXqmKPJ
	M27BLt1ox/s52XDKQvuSuGud4yNxg9N4cLw2cKJLp3clzXRxgJUanFoQA+T3od7pSQVAAMFXeTjPx
	UnfVOKN3r4slv0V8K4mZAq8oRHxowRiE0IybUFQff5LU0AwnT79FCdDN+f4IvrYJodlXaEo4sq49X
	9Ysp2q5uW/brJ/7O9log==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hfuJY-0000L7-DS; Tue, 25 Jun 2019 22:53:24 +0000
Received: from mga09.intel.com ([134.134.136.24])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hfuJQ-0000KO-IY
 for ath10k@lists.infradead.org; Tue, 25 Jun 2019 22:53:18 +0000
X-Amp-Result: UNSCANNABLE
X-Amp-File-Uploaded: False
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga102.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 25 Jun 2019 15:53:15 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.63,417,1557212400"; d="scan'208";a="188447174"
Received: from lkp-server01.sh.intel.com (HELO lkp-server01) ([10.239.97.150])
 by fmsmga002.fm.intel.com with ESMTP; 25 Jun 2019 15:53:08 -0700
Received: from kbuild by lkp-server01 with local (Exim 4.89)
 (envelope-from <lkp@intel.com>)
 id 1hfuJH-000Cwq-Tu; Wed, 26 Jun 2019 06:53:07 +0800
Date: Wed, 26 Jun 2019 06:52:59 +0800
From: kbuild test robot <lkp@intel.com>
To: Alastair D'Silva <alastair@au1.ibm.com>
Subject: Re: [PATCH v4 4/7] lib/hexdump.c: Replace ascii bool in
 hex_dump_to_buffer with flags
Message-ID: <201906260657.2cnctJGF%lkp@intel.com>
References: <20190625031726.12173-5-alastair@au1.ibm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190625031726.12173-5-alastair@au1.ibm.com>
X-Patchwork-Hint: ignore
User-Agent: Mutt/1.5.23 (2014-03-12)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190625_155316_689497_9F499BD9 
X-CRM114-Status: GOOD (  15.62  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [134.134.136.24 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: linux-fbdev@vger.kernel.org, Stanislaw Gruszka <sgruszka@redhat.com>,
 Petr Mladek <pmladek@suse.com>, David Airlie <airlied@linux.ie>,
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 dri-devel@lists.freedesktop.org, devel@driverdev.osuosl.org,
 linux-scsi@vger.kernel.org, Jassi Brar <jassisinghbrar@gmail.com>,
 ath10k@lists.infradead.org, Steven Rostedt <rostedt@goodmis.org>,
 alastair@d-silva.org, intel-gfx@lists.freedesktop.org,
 Dan Carpenter <dan.carpenter@oracle.com>, Jose Abreu <Jose.Abreu@synopsys.com>,
 Tom Lendacky <thomas.lendacky@amd.com>,
 "James E.J. Bottomley" <jejb@linux.ibm.com>,
 Jani Nikula <jani.nikula@linux.intel.com>, linux-fsdevel@vger.kernel.org,
 Alexander Viro <viro@zeniv.linux.org.uk>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>, Benson Leung <bleung@chromium.org>,
 Kalle Valo <kvalo@codeaurora.org>, Karsten Keil <isdn@linux-pingi.de>,
 "Martin K. Petersen" <martin.petersen@oracle.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 linux-wireless@vger.kernel.org, linux-kernel@vger.kernel.org,
 Sergey Senozhatsky <sergey.senozhatsky@gmail.com>,
 David Laight <David.Laight@ACULAB.COM>, kbuild-all@01.org,
 Daniel Vetter <daniel@ffwll.ch>, netdev@vger.kernel.org,
 Enric Balletbo i Serra <enric.balletbo@collabora.com>,
 Andrew Morton <akpm@linux-foundation.org>,
 "David S. Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "ath10k" <ath10k-bounces@lists.infradead.org>
Errors-To: ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org

Hi Alastair,

Thank you for the patch! Perhaps something to improve:

[auto build test WARNING on linus/master]
[also build test WARNING on v5.2-rc6 next-20190625]
[if your patch is applied to the wrong git tree, please drop us a note to help improve the system]

url:    https://github.com/0day-ci/linux/commits/Alastair-D-Silva/Hexdump-Enhancements/20190625-224046
reproduce:
        # apt-get install sparse
        # sparse version: v0.6.1-rc1-7-g2b96cd8-dirty
        make ARCH=x86_64 allmodconfig
        make C=1 CF='-fdiagnostic-prefix -D__CHECK_ENDIAN__'

If you fix the issue, kindly add following tag
Reported-by: kbuild test robot <lkp@intel.com>


sparse warnings: (new ones prefixed by >>)

   sound/soc/intel/skylake/skl-debug.c:191:34: sparse: sparse: incorrect type in argument 1 (different address spaces) @@    expected void [noderef] <asn:2> *to @@    got eref] <asn:2> *to @@
   sound/soc/intel/skylake/skl-debug.c:191:34: sparse:    expected void [noderef] <asn:2> *to
   sound/soc/intel/skylake/skl-debug.c:191:34: sparse:    got unsigned char *
   sound/soc/intel/skylake/skl-debug.c:191:51: sparse: sparse: incorrect type in argument 2 (different address spaces) @@    expected void const *from @@    got void [noderef] <asn:2> void const *from @@
   sound/soc/intel/skylake/skl-debug.c:191:51: sparse:    expected void const *from
   sound/soc/intel/skylake/skl-debug.c:191:51: sparse:    got void [noderef] <asn:2> *[assigned] fw_reg_addr
>> sound/soc/intel/skylake/skl-debug.c:195:35: sparse: sparse: too many arguments for function hex_dump_to_buffer
--
>> drivers/gpu/drm/tinydrm/core/tinydrm-helpers.c:93:27: sparse: sparse: too many arguments for function hex_dump_to_buffer
--
>> sound/soc/sof/xtensa/core.c:125:35: sparse: sparse: too many arguments for function hex_dump_to_buffer

vim +195 sound/soc/intel/skylake/skl-debug.c

d14700a0 Vinod Koul  2017-06-30  170  
bdd0384a Vunny Sodhi 2017-06-30  171  static ssize_t fw_softreg_read(struct file *file, char __user *user_buf,
bdd0384a Vunny Sodhi 2017-06-30  172  			       size_t count, loff_t *ppos)
bdd0384a Vunny Sodhi 2017-06-30  173  {
bdd0384a Vunny Sodhi 2017-06-30  174  	struct skl_debug *d = file->private_data;
bdd0384a Vunny Sodhi 2017-06-30  175  	struct sst_dsp *sst = d->skl->skl_sst->dsp;
bdd0384a Vunny Sodhi 2017-06-30  176  	size_t w0_stat_sz = sst->addr.w0_stat_sz;
bdd0384a Vunny Sodhi 2017-06-30  177  	void __iomem *in_base = sst->mailbox.in_base;
bdd0384a Vunny Sodhi 2017-06-30  178  	void __iomem *fw_reg_addr;
bdd0384a Vunny Sodhi 2017-06-30  179  	unsigned int offset;
bdd0384a Vunny Sodhi 2017-06-30  180  	char *tmp;
bdd0384a Vunny Sodhi 2017-06-30  181  	ssize_t ret = 0;
bdd0384a Vunny Sodhi 2017-06-30  182  
bdd0384a Vunny Sodhi 2017-06-30  183  	tmp = kzalloc(FW_REG_BUF, GFP_KERNEL);
bdd0384a Vunny Sodhi 2017-06-30  184  	if (!tmp)
bdd0384a Vunny Sodhi 2017-06-30  185  		return -ENOMEM;
bdd0384a Vunny Sodhi 2017-06-30  186  
bdd0384a Vunny Sodhi 2017-06-30  187  	fw_reg_addr = in_base - w0_stat_sz;
bdd0384a Vunny Sodhi 2017-06-30  188  	memset(d->fw_read_buff, 0, FW_REG_BUF);
bdd0384a Vunny Sodhi 2017-06-30  189  
bdd0384a Vunny Sodhi 2017-06-30  190  	if (w0_stat_sz > 0)
bdd0384a Vunny Sodhi 2017-06-30 @191  		__iowrite32_copy(d->fw_read_buff, fw_reg_addr, w0_stat_sz >> 2);
bdd0384a Vunny Sodhi 2017-06-30  192  
bdd0384a Vunny Sodhi 2017-06-30  193  	for (offset = 0; offset < FW_REG_SIZE; offset += 16) {
bdd0384a Vunny Sodhi 2017-06-30  194  		ret += snprintf(tmp + ret, FW_REG_BUF - ret, "%#.4x: ", offset);
bdd0384a Vunny Sodhi 2017-06-30 @195  		hex_dump_to_buffer(d->fw_read_buff + offset, 16, 16, 4,
bdd0384a Vunny Sodhi 2017-06-30  196  				   tmp + ret, FW_REG_BUF - ret, 0);
bdd0384a Vunny Sodhi 2017-06-30  197  		ret += strlen(tmp + ret);
bdd0384a Vunny Sodhi 2017-06-30  198  
bdd0384a Vunny Sodhi 2017-06-30  199  		/* print newline for each offset */
bdd0384a Vunny Sodhi 2017-06-30  200  		if (FW_REG_BUF - ret > 0)
bdd0384a Vunny Sodhi 2017-06-30  201  			tmp[ret++] = '\n';
bdd0384a Vunny Sodhi 2017-06-30  202  	}
bdd0384a Vunny Sodhi 2017-06-30  203  
bdd0384a Vunny Sodhi 2017-06-30  204  	ret = simple_read_from_buffer(user_buf, count, ppos, tmp, ret);
bdd0384a Vunny Sodhi 2017-06-30  205  	kfree(tmp);
bdd0384a Vunny Sodhi 2017-06-30  206  
bdd0384a Vunny Sodhi 2017-06-30  207  	return ret;
bdd0384a Vunny Sodhi 2017-06-30  208  }
bdd0384a Vunny Sodhi 2017-06-30  209  

:::::: The code at line 195 was first introduced by commit
:::::: bdd0384a5ada8bb5745e5f29c10a5ba88827efad ASoC: Intel: Skylake: Add support to read firmware registers

:::::: TO: Vunny Sodhi <vunnyx.sodhi@intel.com>
:::::: CC: Mark Brown <broonie@kernel.org>

---
0-DAY kernel test infrastructure                Open Source Technology Center
https://lists.01.org/pipermail/kbuild-all                   Intel Corporation

_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k

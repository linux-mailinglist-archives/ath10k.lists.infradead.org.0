Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C47DA1DDF3B
	for <lists+ath10k@lfdr.de>; Fri, 22 May 2020 07:20:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=f5xsnADQAD4Wt0BjLFM+vw6wot2Izcvw68R46BaBuss=; b=Xr8EygVqQF3XDF
	cNhsxnE86Mhd+WuOvmRZ0tiXDnmp9JAqF8q9DQZI6+HGl7bB/K4ku7ON0RUwSfHZtocKzMASmdqyd
	9wN8X02g/Gu2fUOn/3UKvKfRz0dbUjJ/kkv9m/upEnsGzSpj5C7omzA5U+8tdX049fd588aB04WyH
	sizWPZSC8D5vBlbE4lzFMYLFLdfTseVTZnmBjuKo5gResG7KtORfPed09vZyWEWjrDiBpGBgffVNl
	TljvnzYZTZCzb95HWFHC83ErVs6ajcFinxIyni1rmiFCxVlz30C314AZqLiVA6ZbJExpN3JZALFpq
	od99yS0hsQ2YH3TqeLZA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jc074-0004kJ-28; Fri, 22 May 2020 05:20:54 +0000
Received: from mail-pf1-f196.google.com ([209.85.210.196])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jc070-0004jO-9e
 for ath10k@lists.infradead.org; Fri, 22 May 2020 05:20:52 +0000
Received: by mail-pf1-f196.google.com with SMTP id x2so4695324pfx.7
 for <ath10k@lists.infradead.org>; Thu, 21 May 2020 22:20:49 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=XV4g1eLH5eU7HQYN5ExRZo8EC66pHuJWFUL/99/5lUQ=;
 b=GsB3lWH4XWmyPf84A2AgbH4+eRpNiSVQjhs4d1TQQ+e08NQlgbF8YH4svbPAKvpBOY
 pOJHesUuVmsUVhE5FQ20GLaBPaVc9OqW1kcyNjm6ICRuqMereBpxr636iUrhnlL4mCPu
 nTyXiSseB6CTGMS4j1rAOc8VI27gHNY5uUV0qWwISPhCUKOMP9x9dNcdP9TcAw7s+xHz
 RtHW2d6Hasf+qcFe/XKsz1Ismnb8Vnfk1B7QdpdHbg/ObokV2TmXf192DmM3XTaFPlLj
 jVHRMynL+pKlp6Gm6t/As3cyODLPMi/ZPGNFRwOsoVZTTDtLk//s2RUNo6aFMydZAK+2
 Vejg==
X-Gm-Message-State: AOAM532zbaX7ztmSdlyL2YUL44oRoVpPP8N5taynKs5fzBRNRyk4Ot2D
 Fy2LrdsrUnxYbzONosgnTFM=
X-Google-Smtp-Source: ABdhPJzQMULwCgw2xtMvegjYDudMSTpjW6Ghu7LwHLqK8H2+SLu0p3ctbuD5WXVwcIhChmgssYsjgQ==
X-Received: by 2002:a63:d318:: with SMTP id b24mr11236491pgg.403.1590124848774; 
 Thu, 21 May 2020 22:20:48 -0700 (PDT)
Received: from 42.do-not-panic.com (42.do-not-panic.com. [157.230.128.187])
 by smtp.gmail.com with ESMTPSA id d126sm5897716pfc.81.2020.05.21.22.20.47
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 21 May 2020 22:20:47 -0700 (PDT)
Received: by 42.do-not-panic.com (Postfix, from userid 1000)
 id 929FA4088B; Fri, 22 May 2020 05:20:46 +0000 (UTC)
Date: Fri, 22 May 2020 05:20:46 +0000
From: Luis Chamberlain <mcgrof@kernel.org>
To: Jakub Kicinski <kuba@kernel.org>
Subject: Re: [RFC 1/2] devlink: add simple fw crash helpers
Message-ID: <20200522052046.GY11244@42.do-not-panic.com>
References: <20200519010530.GS11244@42.do-not-panic.com>
 <20200519211531.3702593-1-kuba@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200519211531.3702593-1-kuba@kernel.org>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200521_222050_337354_566240C2 
X-CRM114-Status: GOOD (  25.90  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.196 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [mcgrof[at]gmail.com]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.196 listed in wl.mailspike.net]
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
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
Cc: linux-wireless@vger.kernel.org, aquini@redhat.com, peterz@infradead.org,
 daniel.vetter@ffwll.ch, mchehab+samsung@kernel.org, will@kernel.org,
 greearb@candelatech.com, bhe@redhat.com, briannorris@chromium.org,
 ath10k@lists.infradead.org, derosier@gmail.com, tiwai@suse.de,
 mingo@redhat.com, dyoung@redhat.com, pmladek@suse.com, jiri@resnulli.us,
 keescook@chromium.org, arnd@arndb.de, gpiccoli@canonical.com,
 rostedt@goodmis.org, cai@lca.pw, tglx@linutronix.de,
 andriy.shevchenko@linux.intel.com, johannes@sipsolutions.net,
 kvalo@codeaurora.org, netdev@vger.kernel.org, schlad@suse.de,
 linux-kernel@vger.kernel.org, jeyu@kernel.org, akpm@linux-foundation.org,
 davem@davemloft.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "ath10k" <ath10k-bounces@lists.infradead.org>
Errors-To: ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org

On Tue, May 19, 2020 at 02:15:30PM -0700, Jakub Kicinski wrote:
> Add infra for creating devlink instances for a device to report

Thanks for doing this series as a PoC, counter to the module_firmware_crash()
which I proposed to taint the kernel with a firmware crash flag to the kernel
and module.

For those not famliar about devlink:

https://lwn.net/Articles/677967/
https://www.kernel.org/doc/html/latest/networking/devlink/index.html

The github page also is now 404 as Jiri merged that stuff into iproute2:

git://git.kernel.org/pub/scm/network/iproute2/iproute2.git

> fw crashes. This patch expects the devlink instance to be registered
> at probe time. I belive to be the cleanest. We can also add a devm
> version of the helpers, so that we don't have to do the clean up.
> Or we can go even further and register the devlink instance only
> once error has happened (for the first time, then we can just
> find out if already registered by traversing the list like we
> do here).
> 
> With the patch applied and a sample driver converted we get:
> 
> $ devlink dev
> pci/0000:07:00.0
> 
> Then monitor for errors:
> 
> $ devlink mon health
> [health,status] pci/0000:07:00.0:
>   reporter fw
>     state error error 1 recover 0
> [health,status] pci/0000:07:00.0:
>   reporter fw
>     state error error 2 recover 0
> 
> These are the events I triggered on purpose. One can also inspect
> the health of all devices capable of reporting fw errors:
> 
> $ devlink health
> pci/0000:07:00.0:
>   reporter fw
>     state error error 7 recover 0
> 
> Obviously drivers may upgrade to the full devlink health API
> which includes state dump, state dump auto-collect and automatic
> error recovery control.
> 
> Signed-off-by: Jakub Kicinski <kuba@kernel.org>
> ---
>  include/linux/devlink.h               |  11 +++
>  net/core/Makefile                     |   2 +-
>  net/core/devlink_simple_fw_reporter.c | 101 ++++++++++++++++++++++++++
>  3 files changed, 113 insertions(+), 1 deletion(-)
>  create mode 100644 include/linux/devlink.h
>  create mode 100644 net/core/devlink_simple_fw_reporter.c
> 
> diff --git a/include/linux/devlink.h b/include/linux/devlink.h
> new file mode 100644
> index 000000000000..2b73987eefca
> --- /dev/null
> +++ b/include/linux/devlink.h
> @@ -0,0 +1,11 @@
> +/* SPDX-License-Identifier: GPL-2.0-or-later */
> +#ifndef _LINUX_DEVLINK_H_
> +#define _LINUX_DEVLINK_H_
> +
> +struct device;
> +
> +void devlink_simple_fw_reporter_prepare(struct device *dev);
> +void devlink_simple_fw_reporter_cleanup(struct device *dev);
> +void devlink_simple_fw_reporter_report_crash(struct device *dev);
> +
> +#endif
> diff --git a/net/core/Makefile b/net/core/Makefile
> index 3e2c378e5f31..6f1513781c17 100644
> --- a/net/core/Makefile
> +++ b/net/core/Makefile
> @@ -31,7 +31,7 @@ obj-$(CONFIG_LWTUNNEL_BPF) += lwt_bpf.o
>  obj-$(CONFIG_BPF_STREAM_PARSER) += sock_map.o
>  obj-$(CONFIG_DST_CACHE) += dst_cache.o
>  obj-$(CONFIG_HWBM) += hwbm.o
> -obj-$(CONFIG_NET_DEVLINK) += devlink.o
> +obj-$(CONFIG_NET_DEVLINK) += devlink.o devlink_simple_fw_reporter.o

This was looking super sexy up to here. This is networking specific.
We want something generic for *anything* that requests firmware.

I'm afraid this won't work for something generic. I don't think its
throw-away work though, the idea to provide a generic interface to
dump firmware through netlink might be nice for networking, or other
things.

But I have a feeling we'll want something still more generic than this.

So networking may want to be aware that a firmware crash happened as
part of this network device health thing, but firmware crashing is a
generic thing.

I have now extended my patch set to include uvents and I am more set on
that we need the taint now more than ever.

  Luis

>  obj-$(CONFIG_GRO_CELLS) += gro_cells.o
>  obj-$(CONFIG_FAILOVER) += failover.o
>  obj-$(CONFIG_BPF_SYSCALL) += bpf_sk_storage.o
> diff --git a/net/core/devlink_simple_fw_reporter.c b/net/core/devlink_simple_fw_reporter.c
> new file mode 100644
> index 000000000000..48dde9123c3c
> --- /dev/null
> +++ b/net/core/devlink_simple_fw_reporter.c
> @@ -0,0 +1,101 @@
> +#include <linux/devlink.h>
> +#include <linux/list.h>
> +#include <linux/mutex.h>
> +#include <net/devlink.h>
> +
> +struct devlink_simple_fw_reporter {
> +	struct list_head list;
> +	struct devlink_health_reporter *reporter;
> +};
> +
> +
> +static LIST_HEAD(devlink_simple_fw_reporters);
> +static DEFINE_MUTEX(devlink_simple_fw_reporters_mutex);
> +
> +static const struct devlink_health_reporter_ops simple_devlink_health = {
> +	.name = "fw",
> +};
> +
> +static const struct devlink_ops simple_devlink_ops = {
> +};
> +
> +static struct devlink_simple_fw_reporter *
> +devlink_simple_fw_reporter_find_for_dev(struct device *dev)
> +{
> +	struct devlink_simple_fw_reporter *simple_devlink, *ret = NULL;
> +	struct devlink *devlink;
> +
> +	mutex_lock(&devlink_simple_fw_reporters_mutex);
> +	list_for_each_entry(simple_devlink, &devlink_simple_fw_reporters,
> +			    list) {
> +		devlink = priv_to_devlink(simple_devlink);
> +		if (devlink->dev == dev) {
> +			ret = simple_devlink;
> +			break;
> +		}
> +	}
> +	mutex_unlock(&devlink_simple_fw_reporters_mutex);
> +
> +	return ret;
> +}
> +
> +void devlink_simple_fw_reporter_report_crash(struct device *dev)
> +{
> +	struct devlink_simple_fw_reporter *simple_devlink;
> +
> +	simple_devlink = devlink_simple_fw_reporter_find_for_dev(dev);
> +	if (!simple_devlink)
> +		return;
> +
> +	devlink_health_report(simple_devlink->reporter, "firmware crash", NULL);
> +}
> +EXPORT_SYMBOL_GPL(devlink_simple_fw_reporter_report_crash);
> +
> +void devlink_simple_fw_reporter_prepare(struct device *dev)
> +{
> +	struct devlink_simple_fw_reporter *simple_devlink;
> +	struct devlink *devlink;
> +
> +	devlink = devlink_alloc(&simple_devlink_ops,
> +				sizeof(struct devlink_simple_fw_reporter));
> +	if (!devlink)
> +		return;
> +
> +	if (devlink_register(devlink, dev))
> +		goto err_free;
> +
> +	simple_devlink = devlink_priv(devlink);
> +	simple_devlink->reporter =
> +		devlink_health_reporter_create(devlink, &simple_devlink_health,
> +					       0, NULL);
> +	if (IS_ERR(simple_devlink->reporter))
> +		goto err_unregister;
> +
> +	mutex_lock(&devlink_simple_fw_reporters_mutex);
> +	list_add_tail(&simple_devlink->list, &devlink_simple_fw_reporters);
> +	mutex_unlock(&devlink_simple_fw_reporters_mutex);
> +
> +	return;
> +
> +err_unregister:
> +	devlink_unregister(devlink);
> +err_free:
> +	devlink_free(devlink);
> +}
> +EXPORT_SYMBOL_GPL(devlink_simple_fw_reporter_prepare);
> +
> +void devlink_simple_fw_reporter_cleanup(struct device *dev)
> +{
> +	struct devlink_simple_fw_reporter *simple_devlink;
> +	struct devlink *devlink;
> +
> +	simple_devlink = devlink_simple_fw_reporter_find_for_dev(dev);
> +	if (!simple_devlink)
> +		return;
> +
> +	devlink = priv_to_devlink(simple_devlink);
> +	devlink_health_reporter_destroy(simple_devlink->reporter);
> +	devlink_unregister(devlink);
> +	devlink_free(devlink);
> +}
> +EXPORT_SYMBOL_GPL(devlink_simple_fw_reporter_cleanup);
> -- 
> 2.25.4
> 

_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k

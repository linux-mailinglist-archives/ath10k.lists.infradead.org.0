Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5144CBB1A3
	for <lists+ath10k@lfdr.de>; Mon, 23 Sep 2019 11:49:12 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:In-Reply-To:
	Date:References:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=eDWqv/zHldm1ZILKJVJDr5QyOmtgUuYvtLti9wVfFpA=; b=fosB5j9WF34m8A
	PM2ey6gRQ+el473Xv8qhxgFrXCSaBWWv1Vu4Ct7P+slZy5ssaUAd9bMY2DyXl9OoCrSi3jeRt5OLc
	36oJ3F0RJIS5MEmj8kzkYsdmHrCaShTZbon2KTCSx6ISVOTBPE+4UIiC95jmYco2NvvXrdZ6q2whG
	9lu3xpKQWemi/DQHXVPqoIEfsrNsXNcNvyH87X18mZewTm1yBJcAFwmgH3qy8uRZs9Wf8HEEggzo5
	JsKBNNJqZ+3aD9dXqZvRPDy5rrQ570Chd7cCNyvniSmdC9Kcxd8lC3MARGCghSI/h/jr6Piy9Zxk0
	7FKjBVeJLFEcMqgxRJCg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iCKxy-0005dH-Mk; Mon, 23 Sep 2019 09:49:10 +0000
Received: from smtp.codeaurora.org ([198.145.29.96])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iCKxt-0005cv-De
 for ath10k@lists.infradead.org; Mon, 23 Sep 2019 09:49:06 +0000
Received: by smtp.codeaurora.org (Postfix, from userid 1000)
 id 107BF60265; Mon, 23 Sep 2019 09:49:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=codeaurora.org;
 s=default; t=1569232145;
 bh=l+G9gwJkMnxph70rqdX1rD9rOffkiVc7oJo/k+NvESY=;
 h=From:To:Cc:Subject:References:Date:In-Reply-To:From;
 b=IKBos90GHXlfK2JuiZhirbfaklsQ+qGaunjJ0dRZdPY9QQG9nJgQULBiO6B3W03fN
 X2/UQ8cyc02HB2im3bK+v6OGGJNUM1i2L99ZNXpfXgaU+GXTfe4Ez1jvOdQ0FMjS6R
 ovbHceBHgPZk3RQ/MP1tIh8kgoxiroiVBiSVrKWk=
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
 pdx-caf-mail.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=2.0 tests=ALL_TRUSTED,BAYES_00,
 DKIM_INVALID,DKIM_SIGNED,SPF_NONE autolearn=no autolearn_force=no
 version=3.4.0
Received: from x230.qca.qualcomm.com (37-136-106-186.rev.dnainternet.fi
 [37.136.106.186])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 (Authenticated sender: kvalo@smtp.codeaurora.org)
 by smtp.codeaurora.org (Postfix) with ESMTPSA id 7ED366021C;
 Mon, 23 Sep 2019 09:49:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=codeaurora.org;
 s=default; t=1569232144;
 bh=l+G9gwJkMnxph70rqdX1rD9rOffkiVc7oJo/k+NvESY=;
 h=From:To:Cc:Subject:References:Date:In-Reply-To:From;
 b=nj4BAorwAPI+DHUjmC4Sd4Cob+CL+rJN5/YXon3Pk+95rbDvrA0R9Ofy25UScVB99
 H1Yq/Vgc0CmQIDveNyGSIKZg/8MXLw50zFfd2Bnixo7vt6/6VOZIW0G7oLbokX4HWj
 Jx/mJsF9sUUYPQ8V9RDbO2+AhgVbs7GLADVQNtTw=
DMARC-Filter: OpenDMARC Filter v1.3.2 smtp.codeaurora.org 7ED366021C
Authentication-Results: pdx-caf-mail.web.codeaurora.org;
 dmarc=none (p=none dis=none) header.from=codeaurora.org
Authentication-Results: pdx-caf-mail.web.codeaurora.org;
 spf=none smtp.mailfrom=kvalo@codeaurora.org
From: Kalle Valo <kvalo@codeaurora.org>
To: Wen Gong <wgong@codeaurora.org>
Subject: Re: [PATCH v5 4/8] ath10k: add workqueue for RX path of sdio
References: <1567679893-14029-1-git-send-email-wgong@codeaurora.org>
 <1567679893-14029-5-git-send-email-wgong@codeaurora.org>
Date: Mon, 23 Sep 2019 12:49:01 +0300
In-Reply-To: <1567679893-14029-5-git-send-email-wgong@codeaurora.org> (Wen
 Gong's message of "Thu, 5 Sep 2019 18:38:09 +0800")
Message-ID: <87o8zb8hrm.fsf@codeaurora.org>
User-Agent: Gnus/5.13 (Gnus v5.13) Emacs/24.5 (gnu/linux)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190923_024905_502224_BAB0B374 
X-CRM114-Status: GOOD (  20.74  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.145.29.96 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: linux-wireless@vger.kernel.org, ath10k@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "ath10k" <ath10k-bounces@lists.infradead.org>
Errors-To: ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org

Wen Gong <wgong@codeaurora.org> writes:

> The thread of read rx message by sdio bus from firmware is
> synchronous, it will cost much time for process the left part
> of rx message which includes indicate the rx packet to uppper
> net stack. It will reduce the time of read from sdio.

This paragraph is hard to read.

> This patch move the indication to a workqueue, it results in
> significant performance improvement on RX path.

How much is "significant"? Some numbers would make it a lot easier to
understand the importance of the changes.

> Tested with QCA6174 SDIO with firmware
> WLAN.RMH.4.4.1-00007-QCARMSWP-1.
>
> Signed-off-by: Wen Gong <wgong@codeaurora.org>

[...]

> +static struct ath10k_sdio_rx_request *ath10k_sdio_alloc_rx_req(struct ath10k *ar)
> +{
> +	struct ath10k_sdio *ar_sdio = ath10k_sdio_priv(ar);
> +	struct ath10k_sdio_rx_request *rx_req;
> +
> +	spin_lock_bh(&ar_sdio->rx_lock);
> +
> +	if (list_empty(&ar_sdio->rx_req_freeq)) {
> +		rx_req = NULL;
> +		ath10k_dbg(ar, ATH10K_DBG_SDIO, "rx_req alloc fail\n");
> +		goto out;
> +	}
> +
> +	rx_req = list_first_entry(&ar_sdio->rx_req_freeq,
> +				  struct ath10k_sdio_rx_request, list);
> +	list_del(&rx_req->list);
> +
> +out:
> +	spin_unlock_bh(&ar_sdio->rx_lock);
> +	return rx_req;
> +}

The name of the function is "alloc" but it does not allocate anything?

> +static void ath10k_sdio_free_rx_req(struct ath10k *ar,
> +				    struct ath10k_sdio_rx_request *rx_req)
> +{
> +	struct ath10k_sdio *ar_sdio = ath10k_sdio_priv(ar);
> +
> +	memset(rx_req, 0, sizeof(*rx_req));
> +
> +	spin_lock_bh(&ar_sdio->rx_lock);
> +	list_add_tail(&rx_req->list, &ar_sdio->rx_req_freeq);
> +	spin_unlock_bh(&ar_sdio->rx_lock);
> +}

And this neither frees anything. IMHO that's quite misleading naming.
Maybe call _get() and _put()? Or maybe there's some more common naming
in kernel?

> +static int ath10k_sdio_prep_async_rx_req(struct ath10k *ar,
> +					 struct sk_buff *skb,
> +					 struct ath10k_htc_ep *ep)
> +{
> +	struct ath10k_sdio *ar_sdio = ath10k_sdio_priv(ar);
> +	struct ath10k_sdio_rx_request *rx_req;
> +
> +	/* Allocate a rx request for the message and queue it on the
> +	 * SDIO rx workqueue.
> +	 */
> +	rx_req = ath10k_sdio_alloc_rx_req(ar);
> +	if (!rx_req) {
> +		ath10k_warn(ar, "unable to allocate rx request for async request\n");
> +		return -ENOMEM;
> +	}
> +
> +	rx_req->skb = skb;
> +	rx_req->ep = ep;
> +
> +	spin_lock_bh(&ar_sdio->wr_async_lock_rx);
> +	list_add_tail(&rx_req->list, &ar_sdio->wr_asyncq_rx);
> +	spin_unlock_bh(&ar_sdio->wr_async_lock_rx);
> +
> +	return 0;
> +}

Is there enough room in struct ath10k_skb_cb so that you could add
struct ath10k_htc_ep there? That way struct ath10k_sdio_rx_request would
be useless and you could just use skb_queue_*() functions, which would
make this patch a lot simpler.

> @@ -209,6 +224,11 @@ struct ath10k_sdio {
>  	struct list_head wr_asyncq;
>  	/* protects access to wr_asyncq */
>  	spinlock_t wr_async_lock;
> +
> +	struct work_struct wr_async_work_rx;
> +	struct list_head wr_asyncq_rx;
> +	/* protects access to wr_asyncq_rx */
> +	spinlock_t wr_async_lock_rx;
>  };

I think the naming is now confusing. I'm guessing "wr_async_lock" means
"write asynchronous lock"? So what is wr_asyncq_rx then? It would a lot
simpler if we have tx_lock and rx_lock, or something like that.

Naturally all cleanup for wr_async_lock needs to be done in a separate
patch.

-- 
Kalle Valo

_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k

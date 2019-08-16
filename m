Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 81E3390013
	for <lists+ath10k@lfdr.de>; Fri, 16 Aug 2019 12:32:49 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=JLG9KkHztltjtbs9BHYiEE/cTJxAqDDlMbhSyYHeli0=; b=Q1hHw9H1j0ROdNCdm9Pgftlqw
	txj3gxYRS0tQESci3MM+cWxJQWEaL+PkexMSXlv+vYY/x729Y4FLvuEq+MaqjD65mP9qLh6GHQat7
	/nq02uqjS7UKunSKfackzBhWkSWfpduCouRxAOYS+vy18VgfBs26rzODjURcK19/Ek03tEUM62OOi
	kR64DWAHA1pbJI06+iSPh8sVXMzHfeq9+b06OGOONOfmgRQvZnvXOEaP8OsUHo6ymK4tRh9+F2VrP
	sYADaP2w40cIxU5TNjN5rCoqtHl+VCVSAXt0AfP4drraAJQ6U2kQ5KvWT1Od/eaSrHFBcIIxQZ2Xy
	hWsY1KoaQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hyZXG-0007Y8-RE; Fri, 16 Aug 2019 10:32:42 +0000
Received: from smtps.newmedia-net.de ([2a05:a1c0:0:de::167]
 helo=webmail.newmedia-net.de)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hyZXA-0007XT-Rn
 for ath10k@lists.infradead.org; Fri, 16 Aug 2019 10:32:39 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=newmedia-net.de; s=mikd; 
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:MIME-Version:Date:Message-ID:From:References:To:Subject;
 bh=5tTUYIqZMANCqpQFOW4qx51pb1j/Y/SoCUrl6o5lihk=; 
 b=U69yoIk2dsH/OVMUuSzp1JCVnGpnOk71K+VGvv9VWF4w3xvGCelmSRjjvmAhEWpIFRJqilGur5oN/zBgv/N/rathGpPaLdf/wUbyFAynoRvqI5+d92ZvNrfykpVwklN3Cfw41BsiR747a6qK996z84HtOmwhEAhjMHTZTAU+k1M=;
Subject: Re: [PATCH] ath10k: add cleanup in ath10k_sta_state()
To: ath10k@lists.infradead.org
References: <1565903072-3948-1-git-send-email-wenwen@cs.uga.edu>
From: Sebastian Gottschall <s.gottschall@newmedia-net.de>
Message-ID: <d6fd2268-4f71-99d6-7503-f9c9166164c4@newmedia-net.de>
Date: Fri, 16 Aug 2019 12:31:36 +0200
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <1565903072-3948-1-git-send-email-wenwen@cs.uga.edu>
X-Received: from [212.111.244.1] (helo=[172.29.0.186])
 by webmail.newmedia-net.de with esmtpsa (TLSv1:AES128-SHA:128)
 (Exim 4.72) (envelope-from <s.gottschall@newmedia-net.de>)
 id 1hyZXE-0000jQ-Ie
 for ath10k@lists.infradead.org; Fri, 16 Aug 2019 12:32:40 +0200
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190816_033237_335976_F4D14EE6 
X-CRM114-Status: GOOD (  12.19  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "ath10k" <ath10k-bounces@lists.infradead.org>
Errors-To: ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org

this patch will kick our any peer each time you call for statistics.so 
it will not solve anything. it creates a massive bug. usually just kfree 
is enough here but even this will maybe just kill existing stats

Am 15.08.2019 um 23:04 schrieb Wenwen Wang:
> If 'sta->tdls' is false, no cleanup is executed, leading to memory/resource
> leaks, e.g., 'arsta->tx_stats'. To fix this issue, perform cleanup before
> go to the 'exit' label.
>
> Signed-off-by: Wenwen Wang <wenwen@cs.uga.edu>
> ---
>   drivers/net/wireless/ath/ath10k/mac.c | 6 +++++-
>   1 file changed, 5 insertions(+), 1 deletion(-)
>
> diff --git a/drivers/net/wireless/ath/ath10k/mac.c b/drivers/net/wireless/ath/ath10k/mac.c
> index 0606416..f99e6d2 100644
> --- a/drivers/net/wireless/ath/ath10k/mac.c
> +++ b/drivers/net/wireless/ath/ath10k/mac.c
> @@ -6548,8 +6548,12 @@ static int ath10k_sta_state(struct ieee80211_hw *hw,
>   
>   		spin_unlock_bh(&ar->data_lock);
>   
> -		if (!sta->tdls)
> +		if (!sta->tdls) {
> +			ath10k_peer_delete(ar, arvif->vdev_id, sta->addr);
> +			ath10k_mac_dec_num_stations(arvif, sta);
> +			kfree(arsta->tx_stats);
>   			goto exit;
> +		}
>   
>   		ret = ath10k_wmi_update_fw_tdls_state(ar, arvif->vdev_id,
>   						      WMI_TDLS_ENABLE_ACTIVE);

_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k

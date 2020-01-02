Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DF6D712E1DA
	for <lists+ath10k@lfdr.de>; Thu,  2 Jan 2020 04:10:34 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=bwvkE6nZCHi4nUOh2zdtRLKA0HfJ+4bdJ+auCK4lqpk=; b=uT8nwBZp78/JQJ
	89+VdU1WS7Cgleff2w+zXX7PsskUiY6aNOzJjU+Mj42kmbg322rk4fzyx/5w20WkZxNbr4dEEGMWJ
	bvDR/3w0EtbAr3kaJv4xN7VjpBcYjkDZwHCMPjJEAreaZpQmORmPSuohumXaMBPAr0dG2q1nFs+lz
	FHp7XnD5iHDZph4bNXD6HbznUewv/xZgsL3zz3SlM4/AuI7c//ujgHe8ANObLre3E4bf0fQVwZaNG
	77uKnv3LR/Rpyzouf6TZPf7EzdpHd1QqERtfmNhodIdJCPEWMky/gV8kX9qWXSF6CbVbGuoL05MgG
	i9ZjtO3OrWtmUyozRJRQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1imqsW-0003iD-9e; Thu, 02 Jan 2020 03:10:28 +0000
Received: from mail-ot1-x342.google.com ([2607:f8b0:4864:20::342])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1imqsT-0003gl-HL
 for ath10k@lists.infradead.org; Thu, 02 Jan 2020 03:10:26 +0000
Received: by mail-ot1-x342.google.com with SMTP id p8so18801477oth.10
 for <ath10k@lists.infradead.org>; Wed, 01 Jan 2020 19:10:25 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=aIasqch99l8yTjEyV8QMiDGU+MfzGAS5V5xiGOoV6rI=;
 b=LWWLqL07KXfRCjBMo4n2mLxcE6WGIvBK4CO1fwS3Ri1nL6MgoXiXo50j5uikJPxEc4
 Els0i37FJZp4kgBIkn3fCzkWf8pHB1W/rg663kA5m90lV0lFl7pibDXQ524xTyWj8UDu
 pdmNf0mfmxoNukWXwuJ8HyTSy0wwoxgo/D3iaU9iESjj4R0Zb6dliz8oovimqRFhf2io
 d6ylHDKyevccpU94rqT9PfTJCk3CWU4r0yWAQudgA8A0+q/2fLmqe+TE9NwxC6Sy/Hqv
 o2pm6ZosDABXi+WfiMBOL7VmmrHrMuajL5gn4TEUsUA7mg6PGxcGqshJng67fxNI4689
 HGAQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=aIasqch99l8yTjEyV8QMiDGU+MfzGAS5V5xiGOoV6rI=;
 b=fYXaXMV8GUHvFwKIi8sIiwrYmmlNOqJxCQHGKn2/tof9QRK5DrGdvKU7dZx2VBJaru
 OaxS/QjfBlbD+2LwI/SDhz074EaeoPgAEEt0gsTWMworRrJw7iUBXzVjzDDN5kmQGPYK
 MrFmioxwsmGfGJUUSW/Bhkrj7qDxG6PpBGt5Anv4qLk0CM1HGz6aK87BirmVmn2rkLeL
 2TbrycnioNmkxY75zpYQCAPooJKYURntY1ueIPNpmOXQRkLJv2JfUXyOJo6cZXzM8HlA
 BvFr+lICqGHDKY1Ta3/K8xsRRRG3dlpEEXHcqyM2CAdsgV+DQbOtzDMXkEBQss+GE4rt
 ClPQ==
X-Gm-Message-State: APjAAAX/5x7nZjo+izb6p6XNglZJ6jk8rrpje9vm14Gj8p/f6Mj7vJP5
 C4piae49Tvv3X994vsayH6Bt1PBTHwp+5EqYSTw=
X-Google-Smtp-Source: APXvYqz7UCTyYhrUAl4Ky4z7wXUXiP6hfcnFLVD07rtvwHDPSOl0LFsKbDU7QilW1KZ/Sqcclmz+SwQlMakS8c4zOd0=
X-Received: by 2002:a05:6830:1515:: with SMTP id
 k21mr73047367otp.177.1577934624441; 
 Wed, 01 Jan 2020 19:10:24 -0800 (PST)
MIME-Version: 1.0
References: <20191225120002.11163-1-wgong@codeaurora.org>
 <20191225120002.11163-2-wgong@codeaurora.org>
 <CAMrEMU-p3+HRZYW6TzXwZSwhxj9oJ9JW1Rg=ZysJ3fr0rm45Ng@mail.gmail.com>
 <5f6eb95de0f877b86b90d0c32d458d43@codeaurora.org>
In-Reply-To: <5f6eb95de0f877b86b90d0c32d458d43@codeaurora.org>
From: Justin Capella <justincapella@gmail.com>
Date: Wed, 1 Jan 2020 19:10:13 -0800
Message-ID: <CAMrEMU_eLfD6=7esrYJA4GnU=CcWgBey1QZL+-=RVoRUUcfZKw@mail.gmail.com>
Subject: Re: [PATCH v2 1/2] ath10k: add refcount for ath10k_core_restart
To: Wen Gong <wgong@codeaurora.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200101_191025_581017_EF6B8BA5 
X-CRM114-Status: UNSURE (   8.80  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:342 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (justincapella[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: linux-wireless@vger.kernel.org, ath10k <ath10k@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "ath10k" <ath10k-bounces@lists.infradead.org>
Errors-To: ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org

Instead of the atomic restart count, can the state be updated to
ATH10K_STATE_RESTARTING while holding
     mutex_unlock(&ar->conf_mutex);

I don't understand the bundles, but I wonder about the case when there
are multiple packets (n_rx_pkts) and if pkt_bundle_len might be the
one to check. Also if there needs to be a check that the len > sizeof
HTC HDR.

On Tue, Dec 31, 2019 at 1:37 AM <wgong@codeaurora.org> wrote:
>
> On 2019-12-25 23:14, Justin Capella wrote:
> > This does not only effect SDIO.
> >
> > Why a semaphore / count? Could the conf_mutex be held earlier, or
> > perhaps change the state to ATH10K_STATE_RESTARTING first?
> > ath10k_reconfig_complete is also called in mac.c when channel is
> > changed so
> patch v2:
> https://patchwork.kernel.org/patch/11313853/
> https://patchwork.kernel.org/patch/11313859/

_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k

Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B7BC324120
	for <lists+ath10k@lfdr.de>; Mon, 20 May 2019 21:26:02 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9b2ywXxZPQKNMoFlubieaIt5eEw/4G4T+Uytu7Q2sEs=; b=c+QeHGcX+Bb3JW
	56N8kCqapGM+NbTSh8yJHq5J4JmW4HGFTFAnC1fJqvLG6WS4dCk1RId4pzT0GkQNzqhuZLhgkJh1c
	BnhhbJkftjzqP2iSzt1m4SJGFpSHFx1wpNidfOoa1FnNzGJ9RD9D7ZY5OmcG/s3SUNDegh+68Ziuv
	AgDsfu4Uz6wUenj5UmCGkObwir/FfdANge4LGXpi9gnVRElpjpn2i5zruqEHdHxjyFjo3EoSNJbf2
	AY1aCVEC4mTP7UCeyXH38uUY64fAkwgLXIEstdrG+Oa5HkGpeVKMlOm26QrnKSINybSEkgmOXN64X
	Vn8CezarCSYr5BrtHpMw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hSnv4-0003da-Ij; Mon, 20 May 2019 19:25:58 +0000
Received: from mail-yw1-f41.google.com ([209.85.161.41])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hSnv1-0003dJ-2M
 for ath10k@lists.infradead.org; Mon, 20 May 2019 19:25:56 +0000
Received: by mail-yw1-f41.google.com with SMTP id n76so6328432ywd.1
 for <ath10k@lists.infradead.org>; Mon, 20 May 2019 12:25:54 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=e+X2ZWI9CNAMGZCcOA2fK+7DtIDg7dkI8m9JXSpV2O8=;
 b=dwsg5k/2rppCAgkySRjaUNEcbt2lxI8PftxWZ12b9RDq9pO967J9Lbx0QAUYo0P8ES
 qAjz0vdcd904aHuwb7DR9rQagZegDdXDJ6MELcJMy9Efv5gEA5fMctDqOD0CCodtd5gJ
 V1VhDOnh/GfGjItHac3cYUR0DF3ep/K52csGtpN20dFyNx6m4NfaDLG10yxYNJGYVXKm
 zK7UaqQK8lWveX9NWGK2fxDjv8SML21u8hXRVqwaBWxJO0A1b9YAPrQMtTLftAhgYjO/
 iaxcC9pNEFS4E9VAhWReGf4jY7hrEVEvLgH0PaZhfoqTGFQUmeut+641RQmtbf2tVlcK
 jw4A==
X-Gm-Message-State: APjAAAUWIKz1T9/fTjuJPTG4vSO9qREDAiYIwIACwsTs0CSpdUCAWnSL
 VSfZPcejh5WNv/TENEGInB71JshLRQs4rD8dVTYUPQ==
X-Google-Smtp-Source: APXvYqwM9zCnNg/OWN7w8nMJ+4kSpurtA49yUr0JIgpeAiFG4bRjvEsxowwGx4fRf6LS8YQK9jD1Pk7QdAy2whHDWEI=
X-Received: by 2002:a81:2e41:: with SMTP id u62mr36035435ywu.28.1558380353693; 
 Mon, 20 May 2019 12:25:53 -0700 (PDT)
MIME-Version: 1.0
References: <e11b8d7f-bc28-bc66-fb8c-ff4db22d7c46@candelatech.com>
 <daaad6d3-cf60-4ddc-af20-279a0cbbbe0c@newmedia-net.de>
 <10ed4e39-4364-c8ef-2b38-15ea7672ad94@candelatech.com>
 <2ec6f626-6391-f9b5-918c-99ad7e6b3e31@newmedia-net.de>
 <ad97576c-d6dd-e29c-10d4-00b8aff77805@candelatech.com>
 <55b50a9a-49f4-d669-22d4-84e2efabf451@candelatech.com>
 <2ef800e2-5ce6-f579-ded5-65dc82827e4d@newmedia-net.de>
 <cdfa7b09-4e32-a62d-1bb6-d6128ba6594b@candelatech.com>
 <eae17245-eec2-96fe-34ff-f3800fae44d8@newmedia-net.de>
 <CAJ-Vmo=xhBvLmzec5mzf-gcFm1h6cQBLUOdVhuQjvbUWFjP-AQ@mail.gmail.com>
 <6378a260-0441-b985-6421-091f46d871f5@candelatech.com>
 <3d1db9ca-92a0-2bf7-5608-54e2b8e0476f@newmedia-net.de>
In-Reply-To: <3d1db9ca-92a0-2bf7-5608-54e2b8e0476f@newmedia-net.de>
From: Adrian Chadd <adrian@freebsd.org>
Date: Mon, 20 May 2019 12:25:41 -0700
Message-ID: <CAJ-VmonsmNVhzge5jiOVhJn13B8oWEop8zr=Xk+dgYZDTaGU+Q@mail.gmail.com>
Subject: Re: Problem with 9984 in routed mode with 512b frames.
To: Sebastian Gottschall <s.gottschall@newmedia-net.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190520_122555_110009_1AA8274D 
X-CRM114-Status: UNSURE (   5.85  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.161.41 listed in list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (adrian.chadd[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
X-BeenThere: ath10k@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <ath10k.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/ath10k>,
 <mailto:ath10k-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/ath10k/>
List-Post: <mailto:ath10k@lists.infradead.org>
List-Help: <mailto:ath10k-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/ath10k>,
 <mailto:ath10k-request@lists.infradead.org?subject=subscribe>
Cc: Ben Greear <greearb@candelatech.com>, ath10k <ath10k@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "ath10k" <ath10k-bounces@lists.infradead.org>
Errors-To: ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org

On Mon, 20 May 2019 at 09:59, Sebastian Gottschall
<s.gottschall@newmedia-net.de> wrote:


> the curious thing is still that the fallback code applies only for 2.4
> ghz so it would never have affected 802.11ac

Hm, does RC fall back to 11na or 11a rates when doing 11ac? (in 5G
mode.) It's good to know fixing that would fix it in 2.4GHz operation
but yeah, I wonder about RC in 5G.


-adian

_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k

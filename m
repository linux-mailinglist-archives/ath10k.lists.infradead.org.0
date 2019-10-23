Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 099BFE24F0
	for <lists+ath10k@lfdr.de>; Wed, 23 Oct 2019 23:09:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:References
	:In-Reply-To:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=G3yihIBHSeX2Wh2W6AnyXd1o70NoMP55GGsroRr+nOQ=; b=Q8H2b3JQ+brv/P
	UNxaGXuC1BjhPLzz7yFuiTcruN+H34B0c0kIEeMGLRQxRMu94JI3bV218NUe7BhKMIH36SdBdGnUA
	4peuBFcezJlxlenO3aU/jDF+XnPQ+sBYrQGUSp+Uz6jP/ojPD/3NumRBY4pgVDI9akbXjsL/+fwyK
	pPALL2CmmXUbd1kaaIG0yxITQB+NudLvPA8gubd6ZeLTjwTm+5drrwdWtaE5jGRCyemmXaogl6oGo
	HD+wSsqy9ISEdCQA+yIEti92fTU9HaKZshndfI0cPIesRQ1ZaNFKE6OIkMXYhziN4BMCpatFd5e9t
	HsNAYGTr1ODoGzqUKzEg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iNNsi-0002NY-Pf; Wed, 23 Oct 2019 21:09:24 +0000
Received: from us-smtp-1.mimecast.com ([205.139.110.61]
 helo=us-smtp-delivery-1.mimecast.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iNNse-0002Kz-Ba
 for ath10k@lists.infradead.org; Wed, 23 Oct 2019 21:09:21 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1571864958;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=p2Bt+TeFORfohjlF3bqI3+Mu+yeYbBVrSueSOmuZILw=;
 b=A4y45YgjL1l2s3VIt+NUGWOtUJ2aQW4ApKomDyGT6wRctm+X/EMCrmd60CPERoSnRCcJL0
 5gDnX0FuJc5jfiTtooWSE1wqcLTxLr9vAvq8htW5E+zqUTq+7D30U9Q+MmfyzytUbhw5Hj
 WmpI2sVYmlCRFNFXVDhr1KA5JMQhPNs=
Received: from mail-lf1-f72.google.com (mail-lf1-f72.google.com
 [209.85.167.72]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-246-ca-PSHfvOJO5WVxr3jQtwQ-1; Wed, 23 Oct 2019 17:09:12 -0400
Received: by mail-lf1-f72.google.com with SMTP id v204so2672116lfa.0
 for <ath10k@lists.infradead.org>; Wed, 23 Oct 2019 14:09:11 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:in-reply-to:references:date
 :message-id:mime-version;
 bh=j8uth/YyCcw2cd/AKaSr6zH2GVsN12xt/bp7qE7X9Ng=;
 b=Ia++kvCcMsk5rum5+K9hSirNWez6u2LDc+GaZSBEIv2sRSQuNwsqCepnfz1aUiqzCZ
 25XyQUvb78063YrZJOvuQODzDY96Xd8lSrdWvqED35tnRcK3GMv+Ha6WajryLd/ft4rl
 N8A0wWnlJ/389hE1HPmj+3EnB+Se0yu40L6MFoqOTJnR0FyAc7YLIFxwz8EvPxuhYyO9
 t2VBEzaD4Nc/7GDg2jTqi9JqKrDd8EkDQj+HiK7aP3likNGU+aH9Ed6zqrPOi9Y4w/u9
 eammQ/3rovksIejl1sQ2JMAF3172PgLnOxuxpOLDX4EUj5MRGHd3tthCFGGJtYYhQFGr
 izKQ==
X-Gm-Message-State: APjAAAX4r0HRfqTqp9aNvLPoinSirRfPXx/DWt+tSSMHiKBwXRpT620M
 abhuk6JD+FH0hNyvBeMfr8BkIhjX3YPvv/XqrMz1ARr4HtcGbaDxCz2ibqZeJFmW/jwhyOa87Jh
 cPve97S4juWGGyi/xv/QkfQ==
X-Received: by 2002:a2e:9e4c:: with SMTP id g12mr24328844ljk.103.1571864950206; 
 Wed, 23 Oct 2019 14:09:10 -0700 (PDT)
X-Google-Smtp-Source: APXvYqzYFFtiQHnJ5LqHgsHhFH7IcaoyXeT9h2Tuo3q9/5F1AX2go+DSXHCEgirMEaZeL4pFglNNZQ==
X-Received: by 2002:a2e:9e4c:: with SMTP id g12mr24328834ljk.103.1571864950024; 
 Wed, 23 Oct 2019 14:09:10 -0700 (PDT)
Received: from alrua-x1.borgediget.toke.dk ([2a00:7660:6da:443::2])
 by smtp.gmail.com with ESMTPSA id z1sm9491454ljh.88.2019.10.23.14.09.08
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 23 Oct 2019 14:09:09 -0700 (PDT)
Received: by alrua-x1.borgediget.toke.dk (Postfix, from userid 1000)
 id 1DE0C1804B1; Wed, 23 Oct 2019 23:09:08 +0200 (CEST)
From: Toke =?utf-8?Q?H=C3=B8iland-J=C3=B8rgensen?= <toke@redhat.com>
To: Kan Yan <kyan@google.com>
Subject: Re: [PATCH v4 4/4] mac80211: Use Airtime-based Queue Limits (AQL) on
 packet dequeue
In-Reply-To: <CA+iem5vU-K-+sSSeNugy5ZZF_nH5vuaXW3J_WC=1WWhdkHOgjw@mail.gmail.com>
References: <157148503415.2989444.7391437309981941226.stgit@toke.dk>
 <157148503865.2989444.7118792679603045723.stgit@toke.dk>
 <CA+iem5sy16=xMZjJi1nKHrxP_xWHk-86G=ZLwtMMb04EOt5tQA@mail.gmail.com>
 <871rv5ovwr.fsf@toke.dk>
 <CA+iem5tZ95Jd9htLEdAJMubuFeWeUibK9MhTnTHLWNucX6_cRg@mail.gmail.com>
 <87tv7znact.fsf@toke.dk> <87lftbn60t.fsf@toke.dk>
 <CA+iem5vU-K-+sSSeNugy5ZZF_nH5vuaXW3J_WC=1WWhdkHOgjw@mail.gmail.com>
X-Clacks-Overhead: GNU Terry Pratchett
Date: Wed, 23 Oct 2019 23:09:08 +0200
Message-ID: <877e4vmaob.fsf@toke.dk>
MIME-Version: 1.0
X-MC-Unique: ca-PSHfvOJO5WVxr3jQtwQ-1
X-Mimecast-Spam-Score: 0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191023_140920_469645_5E19EC7E 
X-CRM114-Status: UNSURE (   6.41  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [205.139.110.61 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Rajkumar Manoharan <rmanohar@codeaurora.org>,
 Kevin Hayes <kevinhayes@google.com>,
 Make-Wifi-fast <make-wifi-fast@lists.bufferbloat.net>,
 linux-wireless@vger.kernel.org, ath10k@lists.infradead.org,
 John Crispin <john@phrozen.org>, Johannes Berg <johannes@sipsolutions.net>,
 Lorenzo Bianconi <lorenzo@kernel.org>, Felix Fietkau <nbd@nbd.name>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "ath10k" <ath10k-bounces@lists.infradead.org>
Errors-To: ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org

Kan Yan <kyan@google.com> writes:

>>
>> Aha! Turns out I was doing the sta lookup completely wrong in
>> ieee80211_report_used_skb(); so anything frames that were dropped and
>> went through there would not get its airtime subtracted correctly. Will
>> send a v6 with a fix :)
>
> Awesome, thanks! That looks very promising.  The symptom I see with
> previous patch is the interface's pending airtime count looks fine, but the
> station's airtime get wrong, either due to airtime is credited to the wrong
> station or wrong AC.

Right, if the interface count is fine that means it's not a missing call
to the subtraction. So hopefully it will be fixed with v6 :)

-Toke


_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k

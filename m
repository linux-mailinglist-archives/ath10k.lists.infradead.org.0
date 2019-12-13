Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BFBDB11E19F
	for <lists+ath10k@lfdr.de>; Fri, 13 Dec 2019 11:07:10 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:References
	:In-Reply-To:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+Yis1ukH4uz00n+w8e+Q3dxJy38gcgU24rP9qtBZtI0=; b=NCixwm02qq65AG
	XhiU8dJ6Smqxbx1aFyvzgkFYwmmSiifz3sVMo3HtUcIkiX+pqjZIuKBtYvnbu0DpMtXa/rBChzQY4
	Zex6JpLhEK0Gi+uxnHuccC0MfPK4a0CaPwVSMGh5/0maaN5fNVo8clXTkpCncebCJaZyTb2fqJQpV
	GsERtm3AsP4QeFV9/oz9wdYTAzKdbBW4yREi4BqorQA12w2cgQKX8h+3KqzljGMU1aIQx+urOGB47
	aP7jiQ4Cwwx1a7Iym+RjJZPdq1t+mXxNPmm4s6E/5rd62ZqFHr5wINLmB/ShrviGg5NrQitVHidbt
	tNaHlP3LCfi4/Xj/XEyQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ifhqm-0008E1-Fx; Fri, 13 Dec 2019 10:07:08 +0000
Received: from us-smtp-delivery-1.mimecast.com ([205.139.110.120]
 helo=us-smtp-1.mimecast.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ifhqi-0008CU-FM
 for ath10k@lists.infradead.org; Fri, 13 Dec 2019 10:07:05 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1576231618;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=feFHbn2YNWUjGLJE6LofvmX2NV1W+0p0Di+5/xog3Xw=;
 b=DbT2cTkfzBBg4Mip8KDmk9sG2dYYl6i3LdhBSzI4oTksWf0qVbTt3/MknqP9ajTezUpby7
 h5HcVIb02jckz4Zx3Sdg1GgegV9B6/Etb+31SmZO58yDhA9UO1NoFYXGnMMc5s78HOFrkt
 ohxjPYChrzKRup5rgmjPlALKonYxp60=
Received: from mail-lf1-f70.google.com (mail-lf1-f70.google.com
 [209.85.167.70]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-194-lNkpiutvOUqm7M3PnQqOfw-1; Fri, 13 Dec 2019 05:06:57 -0500
Received: by mail-lf1-f70.google.com with SMTP id d7so296017lfk.9
 for <ath10k@lists.infradead.org>; Fri, 13 Dec 2019 02:06:56 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:in-reply-to:references:date
 :message-id:mime-version;
 bh=feFHbn2YNWUjGLJE6LofvmX2NV1W+0p0Di+5/xog3Xw=;
 b=Zm/IsyJcP9o3ZXIxQAYrF7E7hrfZBJvdVFkxGRCUZZq5W41txMMmbNQQkrPOhs+FWZ
 xGxfIqpwUBq6oA2SjhElzkcPlC/Bg+iJa+g5Ho9Pu5CNG4Nc/lNf5ej67DWPEYeBM3F8
 LJr7aq3R1iZwUa41pQzpp7im2pK6PZGnHgxH5V3Qj+8mi1nrNVeRytNAJzx03EBNdc0S
 bi9V0xfF9yaCqIAOMW2iOZeKU5gptGTQO+PD9FHEy7eX5WpjPxi+wBllYxhUuZZvTPLT
 rO45B5seI77E7jZvm0YcAyaOdVEZech353v/alYVre4PXWzNZOGTJ8vMwV9ZwsKnOnY9
 jTSg==
X-Gm-Message-State: APjAAAVi1dYIfCTPucqftSK8n8Vb2FArIf2Ns5d/Bk3HsXa/+RPBtSME
 9tftZn9M6o3F9g6Is3nf1RHRsI4bheJuImAsE+BrM/tiFVANQB6F6z8B0wVjL8Gfaunrfo1HgLt
 1NbTRuiJINBAAphZMJRHuow==
X-Received: by 2002:ac2:51de:: with SMTP id u30mr8300284lfm.69.1576231615660; 
 Fri, 13 Dec 2019 02:06:55 -0800 (PST)
X-Google-Smtp-Source: APXvYqwvB4rf8JDsbKkcgH0MszrRXvZuRC+aCy1TdOzPEvMHLP4GzQm1dm9QAySVe4ZLTBKQ2h75oQ==
X-Received: by 2002:ac2:51de:: with SMTP id u30mr8300271lfm.69.1576231615477; 
 Fri, 13 Dec 2019 02:06:55 -0800 (PST)
Received: from alrua-x1.borgediget.toke.dk ([2a0c:4d80:42:443::2])
 by smtp.gmail.com with ESMTPSA id x84sm4367188lfa.97.2019.12.13.02.06.54
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 13 Dec 2019 02:06:54 -0800 (PST)
Received: by alrua-x1.borgediget.toke.dk (Postfix, from userid 1000)
 id ABC971819EA; Fri, 13 Dec 2019 11:06:53 +0100 (CET)
From: Toke =?utf-8?Q?H=C3=B8iland-J=C3=B8rgensen?= <toke@redhat.com>
To: Justin Capella <justincapella@gmail.com>, Yibo Zhao <yiboz@codeaurora.org>
Subject: Re: [PATCH V4 0/4] Enable virtual time-based airtime scheduler
 support on ath10k
In-Reply-To: <CAMrEMU_w7dj5RVNmkVoCjU1o_FEEXn9oA7XCBwFQ+j2EQkck4Q@mail.gmail.com>
References: <1576221593-1086-1-git-send-email-yiboz@codeaurora.org>
 <CAMrEMU_w7dj5RVNmkVoCjU1o_FEEXn9oA7XCBwFQ+j2EQkck4Q@mail.gmail.com>
X-Clacks-Overhead: GNU Terry Pratchett
Date: Fri, 13 Dec 2019 11:06:53 +0100
Message-ID: <8736doedz6.fsf@toke.dk>
MIME-Version: 1.0
X-MC-Unique: lNkpiutvOUqm7M3PnQqOfw-1
X-Mimecast-Spam-Score: 0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191213_020704_589896_4ED96D67 
X-CRM114-Status: UNSURE (   4.51  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [205.139.110.120 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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

Justin Capella <justincapella@gmail.com> writes:

> Would it make sense to consider skb->priority / QoS in the Access
> Classifier selection?

Erm, what? Not sure I understand what you're asking here...

-Toke


_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k

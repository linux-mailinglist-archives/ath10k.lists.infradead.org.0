Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CA366DC6B9
	for <lists+ath10k@lfdr.de>; Fri, 18 Oct 2019 16:01:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:References
	:In-Reply-To:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ca91BTTXLcSEJZsuszm6uz9CJXuO53MZcBV0RQokgPo=; b=geddOCQ8nG8SfU
	QfJpqQQa6UWQ6W+ccmvwMEDMWubdITAnzfSDZ4j+R/36ZTEM4JtZ7HOTFyuA/uYH9oGpk76DEHVtQ
	bpg+SXoKNUysP8KZ9aLhHbzMn4/tjkxqYh+//noR8OGGRaZH7YPN9+kcqk1rp3C7oFskg2Efsg6KM
	j+HFJ13wjU/cN61qtzMb4ktHmonYvj9iHVr2fpyxk+Lo+iXMB7eKQIrf4PwzOmiApl3FAF5jtgVIL
	M8qsxa/JhqGmZIA/ub08EyBnnDbtrtmQ59+rjee6s5wpKk28Z/mJdaAWGSuNhNli0g9ciYsqpKgXo
	YBE7uEM/an8haUXUWsdg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iLSok-0007Cx-Jy; Fri, 18 Oct 2019 14:01:22 +0000
Received: from us-smtp-2.mimecast.com ([207.211.31.81]
 helo=us-smtp-delivery-1.mimecast.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iLSog-0007CG-OI
 for ath10k@lists.infradead.org; Fri, 18 Oct 2019 14:01:20 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1571407274;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=M9RSTGVJD9xVIyj975EqK/c+6MLtw+vWyhQYOOPRwQ4=;
 b=A9F6crZc6QUPTnH1XbOJRO2OSWiaPu6PsDEOy5qwHFZlx3a9EMyswzyUNzR7xR8+0QvHGb
 xp6lebEyNVBfwhhOs8z6K7PFFo/2ZGXDZIpG23j5xg482fLNvMWPgIwhItUgGdEvWwf4X+
 /TMkS5BUayry1JUcXhBJFzcnSh/mz8A=
Received: from mail-lj1-f197.google.com (mail-lj1-f197.google.com
 [209.85.208.197]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-229-xOKGZiQ5Of65-UUn8Et3Bw-1; Fri, 18 Oct 2019 10:01:12 -0400
Received: by mail-lj1-f197.google.com with SMTP id m22so1098641ljj.6
 for <ath10k@lists.infradead.org>; Fri, 18 Oct 2019 07:01:12 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:in-reply-to:references:date
 :message-id:mime-version:content-transfer-encoding;
 bh=9KU3AOEPNJNeSCWouDLYLTZDs7qEv20m2zC3KeyYxCQ=;
 b=S3H97M3vj+WwGCKVBL1tbgBiOD9TfF+ATSdbsDv4Hj/r0dQOcrOuxZ0Gs5I2JOOe07
 mMY3a7bfox8A1wLPc0rIWzDZD80JDZ8w9WZtbKZKZLETPz+OMGO39ajQ0WzyqbYL7s2f
 A9ZpVQf7bMT86Kht2YJk/accFTjK+DQ2HHMcE/Uk9NhD/ufvO8FC1q+MipSRxkvGe20z
 VvYKJbg4kDHOs6FBM8qLmOiXUesDh2scnhT8uKm7q/kXHzTslip8CiOLUTrdIPDOy1BH
 RtENQz6EHMi7qG/T6lZ4IL8FMJNq5qSe0GUH6G4XMAHXrACS/746j1ktOpUo2m3g3bpe
 G+vg==
X-Gm-Message-State: APjAAAV6SOoVNtsqgQ3uIHNNiE3FF2udo8IMY2VXZJoIA64lfMC38TA7
 TFk6+UVVsDznB8AUs7VvOMk+XaAMrAsjUUxPY1e3+PZWL+vhEng9J1UR6RDd4xfHzs867LNRtIw
 4EIoLS4U8GPZj/B7wHELZWA==
X-Received: by 2002:a19:641b:: with SMTP id y27mr6274407lfb.3.1571407271186;
 Fri, 18 Oct 2019 07:01:11 -0700 (PDT)
X-Google-Smtp-Source: APXvYqwC6odn8LyJJs0daZtmkS6VFaA8BtPD78mDU4XrBdIGwZMhS0aV6Gnwq4KieL+5R/+KfSjfzQ==
X-Received: by 2002:a19:641b:: with SMTP id y27mr6274369lfb.3.1571407270886;
 Fri, 18 Oct 2019 07:01:10 -0700 (PDT)
Received: from alrua-x1.borgediget.toke.dk ([2a00:7660:6da:443::2])
 by smtp.gmail.com with ESMTPSA id l25sm2867020ljg.72.2019.10.18.07.01.09
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 18 Oct 2019 07:01:10 -0700 (PDT)
Received: by alrua-x1.borgediget.toke.dk (Postfix, from userid 1000)
 id 0D5871804B6; Fri, 18 Oct 2019 16:01:09 +0200 (CEST)
From: Toke =?utf-8?Q?H=C3=B8iland-J=C3=B8rgensen?= <toke@redhat.com>
To: Johannes Berg <johannes@sipsolutions.net>, Kan Yan <kyan@google.com>
Subject: Re: [PATCH v2 1/4] mac80211: Rearrange ieee80211_tx_info to make room
 for tx_time_est
In-Reply-To: <9fc60b546b54b40357264d67536733251cf39ebe.camel@sipsolutions.net>
References: <157115993755.2500430.12214017471129215800.stgit@toke.dk>
 <157115993866.2500430.13989567853855880476.stgit@toke.dk>
 <CA+iem5t6xghBocck864nDX2snWQ5O+v6_M2Jc9aCdn_hE+mFCA@mail.gmail.com>
 <87sgnqe4wg.fsf@toke.dk>
 <10b885b3238cede2d99c6134bebcc0c8ba6f6b10.camel@sipsolutions.net>
 <87imomdvsj.fsf@toke.dk>
 <9fc60b546b54b40357264d67536733251cf39ebe.camel@sipsolutions.net>
X-Clacks-Overhead: GNU Terry Pratchett
Date: Fri, 18 Oct 2019 16:01:09 +0200
Message-ID: <87d0eudufu.fsf@toke.dk>
MIME-Version: 1.0
X-MC-Unique: xOKGZiQ5Of65-UUn8Et3Bw-1
X-Mimecast-Spam-Score: 0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191018_070118_872222_6A458271 
X-CRM114-Status: GOOD (  11.61  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [207.211.31.81 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Rajkumar Manoharan <rmanohar@codeaurora.org>,
 Kevin Hayes <kevinhayes@google.com>, make-wifi-fast@lists.bufferbloat.net,
 linux-wireless@vger.kernel.org, ath10k@lists.infradead.org,
 John Crispin <john@phrozen.org>, Lorenzo Bianconi <lorenzo@kernel.org>,
 Felix Fietkau <nbd@nbd.name>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "ath10k" <ath10k-bounces@lists.infradead.org>
Errors-To: ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org

Sm9oYW5uZXMgQmVyZyA8am9oYW5uZXNAc2lwc29sdXRpb25zLm5ldD4gd3JpdGVzOgoKPiBPbiBG
cmksIDIwMTktMTAtMTggYXQgMTU6MzEgKzAyMDAsIFRva2UgSMO4aWxhbmQtSsO4cmdlbnNlbiB3
cm90ZToKPgo+PiBXZWxsLCBsZXQncyB0cnkgdG8gZG8gdGhlIGFjdHVhbCBtYXRoLi4uIEEgZnVs
bC1zaXplICgxNTM4IGJ5dGVzKSBwYWNrZXQKPj4gdGFrZXMgfjIwNTAgbWljcm9zZWNvbmRzIHRv
IHRyYW5zbWl0IGF0IDYgTWJwcy4gQWRkaW5nIGluIG92ZXJoZWFkLCBpdCdzCj4+IGNlcnRhaW5s
eSBzdGlsbCBsZXNzIHRoYXQgNDA5NiB1cywgc28gMTIgYml0cyBpcyBwbGVudHkuCj4KPiBXaGF0
IGFib3V0IEEtTVNEVXM/IEJ1dCBJIGd1ZXNzIG1heGltdW0gY29udGlub3VzIHRyYW5zbWlzc2lv
bnMgYXJlIGF0Cj4gbW9zdCA0bXMgYW55d2F5LCBzbyBhIHNpbmdsZSBwYWNrZXQgc2hvdWxkIG5l
dmVyIGJlIGxvbmdlci4KCkFoIHllYWgsIHRob3NlIGNvdWxkIGJlIGEgYml0IGJpZ2dlciwgYnV0
IHllYWgsIDRtcyBzaG91bGQgYXQgbGVhc3QgYmUKZW5vdWdoLgoKPj4gVGhhdCBsZWF2ZXMKPj4g
Zm91ciBiaXRzIGZvciB0aGUgQUNLIHN0YXR1cyBJRCBpZiB3ZSBqdXN0IHNwbGl0IHRoZSB1MTY7
IGlmIHdlIG9ubHkKPj4gZXZlciBoYXZlICJhIGhhbmRmdWwiLCB0aGF0IHNob3VsZCBiZSBlbm91
Z2gsIG5vPwo+Cj4gSXQncyBob3cgbWFueSBhcmUgaW4gZmxpZ2h0IGF0IGEgdGltZSwgMTYgZG9l
c24ndCBzZWVtIGxpa2VseSB0byBoYXBwZW4sCj4gYnV0IEkgZG9uJ3QgcmVhbGx5IGtub3cgd2hh
dCBhcHBsaWNhdGlvbnMgYXJlIGRvaW5nIHdpdGggaXQgbm93Lgo+IFByb2JhYmx5IG9ubHkgd3Bh
X3MgZm9yIHRoZSBFQVBPTCBUWCBzdGF0dXMuCgpSaWdodC4gV2VsbCBpbiB0aGF0IGNhc2UsIGxl
dCdzIHRyeSBpdC4gQXMgbG9uZyBhcyB3ZSBmYWlsIGluIGEKcmVhc29uYWJsZSB3YXksIHdlIGNh
biBqdXN0IHNlZSBpZiB3ZSBydW4gaW50byBhbnl0aGluZyB0aGF0IGJyZWFrcz8gSQpndWVzcyBp
biB0aGlzIGNhc2UgdGhhdCBtZWFucyByZWplY3RpbmcgcmVxdWVzdHMgZnJvbSB1c2Vyc3BhY2Ug
aWYgd2UKcnVuIG91dCBvZiBJRHMgcmF0aGVyIHRoYW4gc2lsZW50bHkgd3JhcHBpbmcgYW5kIHJl
dHVybmluZyB3cm9uZyBkYXRhIDopCgo+PiBXZSBjb3VsZCBhbHNvIHNwbGl0IDUvMTEuIFRoYXQg
d291bGQgc3VwcG9ydCB1cCB0byAzMiBBQ0sgSURzLCBhbmQgd2UKPj4gY2FuIGp1c3QgdHJ1bmNh
dGUgdGhlIGFpcnRpbWUgYXQgMjA0OCB1cywgd2hpY2ggaXMgbm90IGEgYmlnIGRlYWwgSSdkCj4+
IHNheS4KPgo+IFdlIGNhbiBhbHNvIHBsYXkgd2l0aCB0aGUgdW5pdHMgb2YgdGhlIGFpcnRpbWUs
IGUuZy4gbWFraW5nIHRoYXQgYQo+IG11bHRpcGxlIG9mIDIgb3IgNCB1cz8gU2VlbXMgdW5saWtl
bHkgdG8gbWF0dGVyIG11Y2g/CgpTdXJlLCB0aGF0J3MgYSBnb29kIHBvaW50ISBJbmNyZW1lbnRz
IG9mIDR1cyBtZWFucyB3ZSBjYW4gZml0IDRtcyBpcyAxMApiaXRzLCBsZWF2aW5nIHBsZW50eSBv
ZiBzcGFjZSBmb3IgQUNLIElEcyAoaG9wZWZ1bGx5KS4KCkknbGwgcmV3b3JrIHRoZSBzZXJpZXMg
dG8gdXNlIHRoYXQgaW5zdGVhZCA6KQoKLVRva2UKCgpfX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fXwphdGgxMGsgbWFpbGluZyBsaXN0CmF0aDEwa0BsaXN0cy5p
bmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8v
YXRoMTBrCg==

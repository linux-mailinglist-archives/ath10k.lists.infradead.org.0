Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 21AF7B9DF4
	for <lists+ath10k@lfdr.de>; Sat, 21 Sep 2019 15:02:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:References
	:In-Reply-To:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=JUfL9fzODNX4vhpJNo8Yd9bmJINlmSx3GegiWubUlCg=; b=Hy+xG1cunfGAbb
	UKGJvSIguA3xCNy4BC6p37+hEGLuFDZErBEguuOialgJSAW62ascW3Wtv+u3KyoSAFwVD6mSuJrLf
	e0kzWqt4dRKCDnnf0EjfK6b4lyN+xVdI3wspZGHQYBmMaCLaCnwXNVsWL+f71jS2Hc217LZxbWA32
	ZAQH6ZGQR+sQZi2aGxt6L3tMAKRWN7+SeJc0X0Yi6XbK77GTZhiZKVQbSbTwImAZ9sIuPhh7T+Nef
	q17MsoyzHsE0MOTxzl7Wra0DtpQLG016n6ufObMtL05N87dInj+GdnD9C00rZNyeVsWJZZE0fKjc3
	G2D8czfPNskYsTmCoRiw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iBf26-0006HS-QF; Sat, 21 Sep 2019 13:02:38 +0000
Received: from us-smtp-1.mimecast.com ([207.211.31.81]
 helo=us-smtp-delivery-1.mimecast.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iBf1y-0006H0-8T
 for ath10k@lists.infradead.org; Sat, 21 Sep 2019 13:02:33 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1569070948;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=1EkuGy/jfM7h0SlVZtT8YJAWc1whOmspOUu8Q96sDog=;
 b=ik7gNARxuwUXEnlGuh1ZCz3SHbFr5w62r5p9MZyHo+8DPhIHbGSzvldnE9eGjLjHLqJWX2
 3r7eqKzScAHuJ8uyaJmZ3goVasUcZcVOEQJ3yCscE93FXAJRGWaPYcQ44yERmIj1Bpd/C9
 T0BOUqqL+SHUC4VUMePMHiS9EyGEy/k=
Received: from mail-ed1-f69.google.com (mail-ed1-f69.google.com
 [209.85.208.69]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-151-o8Bw4QhFOG-UsrvtX6IVww-1; Sat, 21 Sep 2019 09:02:25 -0400
Received: by mail-ed1-f69.google.com with SMTP id h12so5985069eda.19
 for <ath10k@lists.infradead.org>; Sat, 21 Sep 2019 06:02:24 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:in-reply-to:references:date
 :message-id:mime-version:content-transfer-encoding;
 bh=0ZwSOWPUFV0LOs4ZTLRr2CBUyrIHwJkAT3JbmyNf9dY=;
 b=Aba2iNV1rBx1lcxakFSAlH8T1TBGuL1ZBjeCeggOKv4DreNOCa884L72h0cvDTs2ie
 Dx+HhjIl8B6NxYx+Eh22892b1iR71lt95Er0NIeWR1BBLaXa4kpRyo/O+Dmx0phoZstM
 GHiOhj5n0Q70Fn0hUc+hRAAn3I944xWCLzVkdDpIbaxMbL4rBa8WxSvcn5RE4ZwgVfdC
 lA48BSOZoxIeWAsv/mmTjD/ozpbmwwT/j+uV1kykX5HC2C52Me88ltPf1OUv4cdSLKbL
 x0w6EsV1BS1PABSBCYdUdCFZFZpNz8p6SA6XUWy8N4OYiUc6hOwl26U+/nNPANCJ5xOO
 eYVA==
X-Gm-Message-State: APjAAAV6KFwHqZxmh2YwKY/jd5wOkdsAntPz4H/hG4EU0oWIy7GclIW1
 Feg1t18yzATwawwJMyaWgWHBVYojcI+u1De+127bS9C2IU/FpOX7R6QDCp837I6BZBkEKuUfbCT
 sXg7dkb3zQXVrcHG5IDhocg==
X-Received: by 2002:a17:906:454c:: with SMTP id
 s12mr7889166ejq.69.1569070943732; 
 Sat, 21 Sep 2019 06:02:23 -0700 (PDT)
X-Google-Smtp-Source: APXvYqwlvkaZWM86kP5NMQyoyvj9ZcIpg5oNM8VcVlsrN/6Qc7IEfrpzdjLoB9JDkW4DqeJxF1WM6w==
X-Received: by 2002:a17:906:454c:: with SMTP id
 s12mr7889133ejq.69.1569070943344; 
 Sat, 21 Sep 2019 06:02:23 -0700 (PDT)
Received: from alrua-x1.borgediget.toke.dk (borgediget.toke.dk.
 [85.204.121.218])
 by smtp.gmail.com with ESMTPSA id a3sm233744edk.51.2019.09.21.06.02.21
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 21 Sep 2019 06:02:22 -0700 (PDT)
Received: by alrua-x1.borgediget.toke.dk (Postfix, from userid 1000)
 id 1B84E18063F; Sat, 21 Sep 2019 15:02:21 +0200 (CEST)
From: Toke =?utf-8?Q?H=C3=B8iland-J=C3=B8rgensen?= <toke@redhat.com>
To: Yibo Zhao <yiboz@codeaurora.org>
Subject: Re: [PATCH 2/4] mac80211: defer txqs removal from rbtree
In-Reply-To: <4574cce4079f8dab2b2bf223431a6eae@codeaurora.org>
References: <1568639388-27291-1-git-send-email-yiboz@codeaurora.org>
 <1568639388-27291-2-git-send-email-yiboz@codeaurora.org>
 <87pnjyiq7o.fsf@toke.dk> <c3ee7ece0986f1c50513cd5fdd2ee03f@codeaurora.org>
 <87sgothmpy.fsf@toke.dk> <8cdece5c030fd95817fb099021c38613@codeaurora.org>
 <87tv98fu6l.fsf@toke.dk> <1b4ab006d9b5c88035845aaac193ef48@codeaurora.org>
 <8736gre3bm.fsf@toke.dk> <198124204167325252fcfcd65e3f2733@codeaurora.org>
 <87ftkp7uuz.fsf@toke.dk> <4574cce4079f8dab2b2bf223431a6eae@codeaurora.org>
X-Clacks-Overhead: GNU Terry Pratchett
Date: Sat, 21 Sep 2019 15:02:21 +0200
Message-ID: <877e617qg2.fsf@toke.dk>
MIME-Version: 1.0
X-MC-Unique: o8Bw4QhFOG-UsrvtX6IVww-1
X-Mimecast-Spam-Score: 0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190921_060230_521674_B3F9C45F 
X-CRM114-Status: GOOD (  13.03  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [207.211.31.81 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: linux-wireless-owner@vger.kernel.org, linux-wireless@vger.kernel.org,
 ath10k@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "ath10k" <ath10k-bounces@lists.infradead.org>
Errors-To: ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org

WWlibyBaaGFvIDx5aWJvekBjb2RlYXVyb3JhLm9yZz4gd3JpdGVzOgoKPiBPbiAyMDE5LTA5LTIx
IDE5OjI3LCBUb2tlIEjDuGlsYW5kLUrDuHJnZW5zZW4gd3JvdGU6Cj4+IFlpYm8gWmhhbyA8eWli
b3pAY29kZWF1cm9yYS5vcmc+IHdyaXRlczoKPj4gCj4+PiBPbiAyMDE5LTA5LTIwIDE3OjE1LCBU
b2tlIEjDuGlsYW5kLUrDuHJnZW5zZW4gd3JvdGU6Cj4+Pj4gWWlibyBaaGFvIDx5aWJvekBjb2Rl
YXVyb3JhLm9yZz4gd3JpdGVzOgo+Pj4+IAo+Pj4+PiBPbiAyMDE5LTA5LTE5IDE4OjM3LCBUb2tl
IEjDuGlsYW5kLUrDuHJnZW5zZW4gd3JvdGU6Cj4+Pj4+PiBZaWJvIFpoYW8gPHlpYm96QGNvZGVh
dXJvcmEub3JnPiB3cml0ZXM6Cj4+Pj4+PiAKPj4+Pj4+PiBPbiAyMDE5LTA5LTE4IDE5OjIzLCBU
b2tlIEjDuGlsYW5kLUrDuHJnZW5zZW4gd3JvdGU6Cj4+Pj4+Pj4+IFlpYm8gWmhhbyA8eWlib3pA
Y29kZWF1cm9yYS5vcmc+IHdyaXRlczoKPj4+Pj4+Pj4gCj4+Pj4+Pj4+PiBPbiAyMDE5LTA5LTE4
IDA1OjEwLCBUb2tlIEjDuGlsYW5kLUrDuHJnZW5zZW4gd3JvdGU6Cj4+Pj4+Pj4+Pj4gWWlibyBa
aGFvIDx5aWJvekBjb2RlYXVyb3JhLm9yZz4gd3JpdGVzOgo+Pj4+Pj4+Pj4+IAo+Pj4+Pj4+Pj4+
PiBJbiBhIGxvb3AgdHhxcyBkZXF1ZXVlIHNjZW5hcmlvLCBpZiB0aGUgZmlyc3QgdHhxIGluIHRo
ZSAKPj4+Pj4+Pj4+Pj4gcmJ0cmVlCj4+Pj4+Pj4+Pj4+IGdldHMKPj4+Pj4+Pj4+Pj4gcmVtb3Zl
ZCBmcm9tIHJidHJlZSBpbW1lZGlhdGVseSBpbiB0aGUgaWVlZTgwMjExX3JldHVybl90eHEoKSwK
Pj4+Pj4+Pj4+Pj4gdGhlCj4+Pj4+Pj4+Pj4+IGxvb3Agd2lsbCBicmVhayBzb29uIGluIHRoZSBp
ZWVlODAyMTFfbmV4dF90eHEoKSBkdWUgdG8KPj4+Pj4+Pj4+Pj4gc2NoZWR1bGVfcG9zCj4+Pj4+
Pj4+Pj4+IG5vdCBsZWFkaW5nIHRvIHRoZSBzZWNvbmQgdHhxIGluIHRoZSByYnRyZWUuIFRodXMs
IGRlZmVyaW5nIAo+Pj4+Pj4+Pj4+PiB0aGUKPj4+Pj4+Pj4+Pj4gcmVtb3ZhbCByaWdodCBiZWZv
cmUgdGhlIGVuZCBvZiB0aGlzIHNjaGVkdWxlIHJvdW5kLgo+Pj4+Pj4+Pj4+PiAKPj4+Pj4+Pj4+
Pj4gQ28tZGV2ZWxvcGVkLWJ5OiBZaWJvIFpoYW8gPHlpYm96QGNvZGVhdXJvcmEub3JnPgo+Pj4+
Pj4+Pj4+PiBTaWduZWQtb2ZmLWJ5OiBZaWJvIFpoYW8gPHlpYm96QGNvZGVhdXJvcmEub3JnPgo+
Pj4+Pj4+Pj4+PiBTaWduZWQtb2ZmLWJ5OiBUb2tlIEjDuGlsYW5kLUrDuHJnZW5zZW4gPHRva2VA
dG9rZS5kaz4KPj4+Pj4+Pj4+PiAKPj4+Pj4+Pj4+PiBJIGRpZG4ndCB3cml0ZSB0aGlzIHBhdGNo
LCBzbyBwbGVhc2UgZG9uJ3QgdXNlIG15IHNpZ24tb2ZmLiAKPj4+Pj4+Pj4+PiBJJ2xsCj4+Pj4+
Pj4+Pj4gYWRkCj4+Pj4+Pj4+Pj4gYWNrIG9yIHJldmlldyB0YWdzIGFzIGFwcHJvcHJpYXRlIGlu
IHJlcGx5OyBidXQgYSBmZXcgY29tbWVudHMKPj4+Pj4+Pj4+PiBmaXJzdDoKPj4+Pj4+Pj4+PiAK
Pj4+Pj4+Pj4+Pj4gLS0tCj4+Pj4+Pj4+Pj4+ICBpbmNsdWRlL25ldC9tYWM4MDIxMS5oICAgICB8
IDE2ICsrKysrKysrKystLQo+Pj4+Pj4+Pj4+PiAgbmV0L21hYzgwMjExL2llZWU4MDIxMV9pLmgg
fCAgMyArKysKPj4+Pj4+Pj4+Pj4gIG5ldC9tYWM4MDIxMS9tYWluLmMgICAgICAgIHwgIDYgKysr
KysKPj4+Pj4+Pj4+Pj4gIG5ldC9tYWM4MDIxMS90eC5jICAgICAgICAgIHwgNjMKPj4+Pj4+Pj4+
Pj4gKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKy0tLQo+Pj4+Pj4+
Pj4+PiAgNCBmaWxlcyBjaGFuZ2VkLCA4MyBpbnNlcnRpb25zKCspLCA1IGRlbGV0aW9ucygtKQo+
Pj4+Pj4+Pj4+PiAKPj4+Pj4+Pj4+Pj4gZGlmZiAtLWdpdCBhL2luY2x1ZGUvbmV0L21hYzgwMjEx
LmggYi9pbmNsdWRlL25ldC9tYWM4MDIxMS5oCj4+Pj4+Pj4+Pj4+IGluZGV4IGFjMmVkOGUuLmJh
NWEzNDUgMTAwNjQ0Cj4+Pj4+Pj4+Pj4+IC0tLSBhL2luY2x1ZGUvbmV0L21hYzgwMjExLmgKPj4+
Pj4+Pj4+Pj4gKysrIGIvaW5jbHVkZS9uZXQvbWFjODAyMTEuaAo+Pj4+Pj4+Pj4+PiBAQCAtOTI1
LDYgKzkyNSw4IEBAIHN0cnVjdCBpZWVlODAyMTFfdHhfcmF0ZSB7Cj4+Pj4+Pj4+Pj4+IAo+Pj4+
Pj4+Pj4+PiAgI2RlZmluZSBJRUVFODAyMTFfTUFYX1RYX1JFVFJZCQkzMQo+Pj4+Pj4+Pj4+PiAK
Pj4+Pj4+Pj4+Pj4gKyNkZWZpbmUgSUVFRTgwMjExX0FJUlRJTUVfVFhRX1JNX0NIS19JTlRWX0lO
X01TIDEwMAo+Pj4+Pj4+Pj4+PiArCj4+Pj4+Pj4+Pj4+ICBzdGF0aWMgaW5saW5lIHZvaWQgaWVl
ZTgwMjExX3JhdGVfc2V0X3ZodChzdHJ1Y3QKPj4+Pj4+Pj4+Pj4gaWVlZTgwMjExX3R4X3JhdGUK
Pj4+Pj4+Pj4+Pj4gKnJhdGUsCj4+Pj4+Pj4+Pj4+ICAJCQkJCSAgdTggbWNzLCB1OCBuc3MpCj4+
Pj4+Pj4+Pj4+ICB7Cj4+Pj4+Pj4+Pj4+IEBAIC02MjMyLDcgKzYyMzQsOCBAQCBzdHJ1Y3Qgc2tf
YnVmZgo+Pj4+Pj4+Pj4+PiAqaWVlZTgwMjExX3R4X2RlcXVldWUoc3RydWN0Cj4+Pj4+Pj4+Pj4+
IGllZWU4MDIxMV9odyAqaHcsCj4+Pj4+Pj4+Pj4+ICAgKiBAYWM6IEFDIG51bWJlciB0byByZXR1
cm4gcGFja2V0cyBmcm9tLgo+Pj4+Pj4+Pj4+PiAgICoKPj4+Pj4+Pj4+Pj4gICAqIFNob3VsZCBv
bmx5IGJlIGNhbGxlZCBiZXR3ZWVuIGNhbGxzIHRvCj4+Pj4+Pj4+Pj4+IGllZWU4MDIxMV90eHFf
c2NoZWR1bGVfc3RhcnQoKQo+Pj4+Pj4+Pj4+PiAtICogYW5kIGllZWU4MDIxMV90eHFfc2NoZWR1
bGVfZW5kKCkuCj4+Pj4+Pj4+Pj4+ICsgKiBhbmQgaWVlZTgwMjExX3R4cV9zY2hlZHVsZV9lbmQo
KS4gSWYgdGhlIHR4cSBpcyBlbXB0eSwgaXQKPj4+Pj4+Pj4+Pj4gd2lsbAo+Pj4+Pj4+Pj4+PiBi
ZQo+Pj4+Pj4+Pj4+PiBhZGRlZAo+Pj4+Pj4+Pj4+PiArICogdG8gYSByZW1vdmUgbGlzdCBhbmQg
Z2V0IHJlbW92ZWQgbGF0ZXIuCj4+Pj4+Pj4+Pj4+ICAgKiBSZXR1cm5zIHRoZSBuZXh0IHR4cSBp
ZiBzdWNjZXNzZnVsLCAlTlVMTCBpZiBubyBxdWV1ZSBpcwo+Pj4+Pj4+Pj4+PiBlbGlnaWJsZS4K
Pj4+Pj4+Pj4+Pj4gSWYgYSB0eHEKPj4+Pj4+Pj4+Pj4gICAqIGlzIHJldHVybmVkLCBpdCBzaG91
bGQgYmUgcmV0dXJuZWQgd2l0aAo+Pj4+Pj4+Pj4+PiBpZWVlODAyMTFfcmV0dXJuX3R4cSgpCj4+
Pj4+Pj4+Pj4+IGFmdGVyIHRoZQo+Pj4+Pj4+Pj4+PiAgICogZHJpdmVyIGhhcyBmaW5pc2hlZCBz
Y2hlZHVsaW5nIGl0Lgo+Pj4+Pj4+Pj4+PiBAQCAtNjI2OCw3ICs2MjcxLDggQEAgdm9pZCBpZWVl
ODAyMTFfdHhxX3NjaGVkdWxlX3N0YXJ0KHN0cnVjdAo+Pj4+Pj4+Pj4+PiBpZWVlODAyMTFfaHcg
Kmh3LCB1OCBhYykKPj4+Pj4+Pj4+Pj4gICAqIEBodzogcG9pbnRlciBhcyBvYnRhaW5lZCBmcm9t
IGllZWU4MDIxMV9hbGxvY19odygpCj4+Pj4+Pj4+Pj4+ICAgKiBAYWM6IEFDIG51bWJlciB0byBh
Y3F1aXJlIGxvY2tzIGZvcgo+Pj4+Pj4+Pj4+PiAgICoKPj4+Pj4+Pj4+Pj4gLSAqIFJlbGVhc2Ug
bG9ja3MgcHJldmlvdXNseSBhY3F1aXJlZCBieQo+Pj4+Pj4+Pj4+PiBpZWVlODAyMTFfdHhxX3Nj
aGVkdWxlX2VuZCgpLgo+Pj4+Pj4+Pj4+PiArICogUmVsZWFzZSBsb2NrcyBwcmV2aW91c2x5IGFj
cXVpcmVkIGJ5Cj4+Pj4+Pj4+Pj4+IGllZWU4MDIxMV90eHFfc2NoZWR1bGVfZW5kKCkuCj4+Pj4+
Pj4+Pj4+IENoZWNrCj4+Pj4+Pj4+Pj4+ICsgKiBhbmQgcmVtb3ZlIHRoZSBlbXB0eSB0eHEgZnJv
bSByYi10cmVlLgo+Pj4+Pj4+Pj4+PiAgICovCj4+Pj4+Pj4+Pj4+ICB2b2lkIGllZWU4MDIxMV90
eHFfc2NoZWR1bGVfZW5kKHN0cnVjdCBpZWVlODAyMTFfaHcgKmh3LCB1OCAKPj4+Pj4+Pj4+Pj4g
YWMpCj4+Pj4+Pj4+Pj4+ICAJX19yZWxlYXNlcyh0eHFfbG9jayk7Cj4+Pj4+Pj4+Pj4+IEBAIC02
Mjg3LDYgKzYyOTEsMTQgQEAgdm9pZCBpZWVlODAyMTFfc2NoZWR1bGVfdHhxKHN0cnVjdAo+Pj4+
Pj4+Pj4+PiBpZWVlODAyMTFfaHcKPj4+Pj4+Pj4+Pj4gKmh3LCBzdHJ1Y3QgaWVlZTgwMjExX3R4
cSAqdHhxKQo+Pj4+Pj4+Pj4+PiAgCV9fYWNxdWlyZXModHhxX2xvY2spIF9fcmVsZWFzZXModHhx
X2xvY2spOwo+Pj4+Pj4+Pj4+PiAKPj4+Pj4+Pj4+Pj4gIC8qKgo+Pj4+Pj4+Pj4+PiArICogaWVl
ZTgwMjExX3R4cXNfY2hlY2sgLSBDaGVjayB0eHFzIHdhaXRpbmcgZm9yIHJlbW92YWwKPj4+Pj4+
Pj4+Pj4gKyAqCj4+Pj4+Pj4+Pj4+ICsgKiBAdG1yOiBwb2ludGVyIGFzIG9idGFpbmVkIGZyb20g
bG9jYWwKPj4+Pj4+Pj4+Pj4gKyAqCj4+Pj4+Pj4+Pj4+ICsgKi8KPj4+Pj4+Pj4+Pj4gK3ZvaWQg
aWVlZTgwMjExX3R4cXNfY2hlY2soc3RydWN0IHRpbWVyX2xpc3QgKnRtcik7Cj4+Pj4+Pj4+Pj4+
ICsKPj4+Pj4+Pj4+Pj4gKy8qKgo+Pj4+Pj4+Pj4+PiAgICogaWVlZTgwMjExX3R4cV9tYXlfdHJh
bnNtaXQgLSBjaGVjayB3aGV0aGVyIFRYUSBpcyBhbGxvd2VkIAo+Pj4+Pj4+Pj4+PiB0bwo+Pj4+
Pj4+Pj4+PiB0cmFuc21pdAo+Pj4+Pj4+Pj4+PiAgICoKPj4+Pj4+Pj4+Pj4gICAqIFRoaXMgZnVu
Y3Rpb24gaXMgdXNlZCB0byBjaGVjayB3aGV0aGVyIGdpdmVuIHR4cSBpcyAKPj4+Pj4+Pj4+Pj4g
YWxsb3dlZAo+Pj4+Pj4+Pj4+PiB0bwo+Pj4+Pj4+Pj4+PiB0cmFuc21pdCBieQo+Pj4+Pj4+Pj4+
PiBkaWZmIC0tZ2l0IGEvbmV0L21hYzgwMjExL2llZWU4MDIxMV9pLmgKPj4+Pj4+Pj4+Pj4gYi9u
ZXQvbWFjODAyMTEvaWVlZTgwMjExX2kuaAo+Pj4+Pj4+Pj4+PiBpbmRleCBhNDU1NmY5Li40OWFh
MTQzZSAxMDA2NDQKPj4+Pj4+Pj4+Pj4gLS0tIGEvbmV0L21hYzgwMjExL2llZWU4MDIxMV9pLmgK
Pj4+Pj4+Pj4+Pj4gKysrIGIvbmV0L21hYzgwMjExL2llZWU4MDIxMV9pLmgKPj4+Pj4+Pj4+Pj4g
QEAgLTg0Nyw2ICs4NDcsNyBAQCBzdHJ1Y3QgdHhxX2luZm8gewo+Pj4+Pj4+Pj4+PiAgCXN0cnVj
dCBjb2RlbF9zdGF0cyBjc3RhdHM7Cj4+Pj4+Pj4+Pj4+ICAJc3RydWN0IHNrX2J1ZmZfaGVhZCBm
cmFnczsKPj4+Pj4+Pj4+Pj4gIAlzdHJ1Y3QgcmJfbm9kZSBzY2hlZHVsZV9vcmRlcjsKPj4+Pj4+
Pj4+Pj4gKwlzdHJ1Y3QgbGlzdF9oZWFkIGNhbmRpZGF0ZTsKPj4+Pj4+Pj4+Pj4gIAl1bnNpZ25l
ZCBsb25nIGZsYWdzOwo+Pj4+Pj4+Pj4+PiAKPj4+Pj4+Pj4+Pj4gIAkvKiBrZWVwIGxhc3QhICov
Cj4+Pj4+Pj4+Pj4+IEBAIC0xMTQ1LDYgKzExNDYsOCBAQCBzdHJ1Y3QgaWVlZTgwMjExX2xvY2Fs
IHsKPj4+Pj4+Pj4+Pj4gIAl1NjQgYWlydGltZV92X3RbSUVFRTgwMjExX05VTV9BQ1NdOwo+Pj4+
Pj4+Pj4+PiAgCXU2NCBhaXJ0aW1lX3dlaWdodF9zdW1bSUVFRTgwMjExX05VTV9BQ1NdOwo+Pj4+
Pj4+Pj4+PiAKPj4+Pj4+Pj4+Pj4gKwlzdHJ1Y3QgbGlzdF9oZWFkIHJlbW92ZV9saXN0W0lFRUU4
MDIxMV9OVU1fQUNTXTsKPj4+Pj4+Pj4+Pj4gKwlzdHJ1Y3QgdGltZXJfbGlzdCByZW1vdmVfdGlt
ZXI7Cj4+Pj4+Pj4+Pj4+ICAJdTE2IGFpcnRpbWVfZmxhZ3M7Cj4+Pj4+Pj4+Pj4+IAo+Pj4+Pj4+
Pj4+PiAgCWNvbnN0IHN0cnVjdCBpZWVlODAyMTFfb3BzICpvcHM7Cj4+Pj4+Pj4+Pj4+IGRpZmYg
LS1naXQgYS9uZXQvbWFjODAyMTEvbWFpbi5jIGIvbmV0L21hYzgwMjExL21haW4uYwo+Pj4+Pj4+
Pj4+PiBpbmRleCBlOWZmYThlLi43OGZlMjRhIDEwMDY0NAo+Pj4+Pj4+Pj4+PiAtLS0gYS9uZXQv
bWFjODAyMTEvbWFpbi5jCj4+Pj4+Pj4+Pj4+ICsrKyBiL25ldC9tYWM4MDIxMS9tYWluLmMKPj4+
Pj4+Pj4+Pj4gQEAgLTY2NywxMCArNjY3LDE1IEBAIHN0cnVjdCBpZWVlODAyMTFfaHcKPj4+Pj4+
Pj4+Pj4gKmllZWU4MDIxMV9hbGxvY19od19ubShzaXplX3QgcHJpdl9kYXRhX2xlbiwKPj4+Pj4+
Pj4+Pj4gCj4+Pj4+Pj4+Pj4+ICAJZm9yIChpID0gMDsgaSA8IElFRUU4MDIxMV9OVU1fQUNTOyBp
KyspIHsKPj4+Pj4+Pj4+Pj4gIAkJbG9jYWwtPmFjdGl2ZV90eHFzW2ldID0gUkJfUk9PVF9DQUNI
RUQ7Cj4+Pj4+Pj4+Pj4+ICsJCUlOSVRfTElTVF9IRUFEKCZsb2NhbC0+cmVtb3ZlX2xpc3RbaV0p
Owo+Pj4+Pj4+Pj4+PiAgCQlzcGluX2xvY2tfaW5pdCgmbG9jYWwtPmFjdGl2ZV90eHFfbG9ja1tp
XSk7Cj4+Pj4+Pj4+Pj4+ICAJfQo+Pj4+Pj4+Pj4+PiAgCWxvY2FsLT5haXJ0aW1lX2ZsYWdzID0g
QUlSVElNRV9VU0VfVFggfCBBSVJUSU1FX1VTRV9SWDsKPj4+Pj4+Pj4+Pj4gCj4+Pj4+Pj4+Pj4+
ICsJdGltZXJfc2V0dXAoJmxvY2FsLT5yZW1vdmVfdGltZXIsIGllZWU4MDIxMV90eHFzX2NoZWNr
LCAwKTsKPj4+Pj4+Pj4+Pj4gKwltb2RfdGltZXIoJmxvY2FsLT5yZW1vdmVfdGltZXIsCj4+Pj4+
Pj4+Pj4+ICsJCSAgamlmZmllcyArCj4+Pj4+Pj4+Pj4+IG1zZWNzX3RvX2ppZmZpZXMoSUVFRTgw
MjExX0FJUlRJTUVfVFhRX1JNX0NIS19JTlRWX0lOX01TKSk7Cj4+Pj4+Pj4+Pj4+ICsKPj4+Pj4+
Pj4+Pj4gIAlJTklUX0xJU1RfSEVBRCgmbG9jYWwtPmNoYW5jdHhfbGlzdCk7Cj4+Pj4+Pj4+Pj4+
ICAJbXV0ZXhfaW5pdCgmbG9jYWwtPmNoYW5jdHhfbXR4KTsKPj4+Pj4+Pj4+Pj4gCj4+Pj4+Pj4+
Pj4+IEBAIC0xMzA1LDYgKzEzMTAsNyBAQCB2b2lkIGllZWU4MDIxMV91bnJlZ2lzdGVyX2h3KHN0
cnVjdAo+Pj4+Pj4+Pj4+PiBpZWVlODAyMTFfaHcKPj4+Pj4+Pj4+Pj4gKmh3KQo+Pj4+Pj4+Pj4+
PiAgCXRhc2tsZXRfa2lsbCgmbG9jYWwtPnR4X3BlbmRpbmdfdGFza2xldCk7Cj4+Pj4+Pj4+Pj4+
ICAJdGFza2xldF9raWxsKCZsb2NhbC0+dGFza2xldCk7Cj4+Pj4+Pj4+Pj4+IAo+Pj4+Pj4+Pj4+
PiArCWRlbF90aW1lcl9zeW5jKCZsb2NhbC0+cmVtb3ZlX3RpbWVyKTsKPj4+Pj4+Pj4+Pj4gICNp
ZmRlZiBDT05GSUdfSU5FVAo+Pj4+Pj4+Pj4+PiAgCXVucmVnaXN0ZXJfaW5ldGFkZHJfbm90aWZp
ZXIoJmxvY2FsLT5pZmFfbm90aWZpZXIpOwo+Pj4+Pj4+Pj4+PiAgI2VuZGlmCj4+Pj4+Pj4+Pj4+
IGRpZmYgLS1naXQgYS9uZXQvbWFjODAyMTEvdHguYyBiL25ldC9tYWM4MDIxMS90eC5jCj4+Pj4+
Pj4+Pj4+IGluZGV4IGQwMGJhYWEuLjQyY2EwMTAgMTAwNjQ0Cj4+Pj4+Pj4+Pj4+IC0tLSBhL25l
dC9tYWM4MDIxMS90eC5jCj4+Pj4+Pj4+Pj4+ICsrKyBiL25ldC9tYWM4MDIxMS90eC5jCj4+Pj4+
Pj4+Pj4+IEBAIC0xNDUwLDYgKzE0NTAsNyBAQCB2b2lkIGllZWU4MDIxMV90eHFfaW5pdChzdHJ1
Y3QKPj4+Pj4+Pj4+Pj4gaWVlZTgwMjExX3N1Yl9pZl9kYXRhICpzZGF0YSwKPj4+Pj4+Pj4+Pj4g
IAljb2RlbF9zdGF0c19pbml0KCZ0eHFpLT5jc3RhdHMpOwo+Pj4+Pj4+Pj4+PiAgCV9fc2tiX3F1
ZXVlX2hlYWRfaW5pdCgmdHhxaS0+ZnJhZ3MpOwo+Pj4+Pj4+Pj4+PiAgCVJCX0NMRUFSX05PREUo
JnR4cWktPnNjaGVkdWxlX29yZGVyKTsKPj4+Pj4+Pj4+Pj4gKwlJTklUX0xJU1RfSEVBRCgmdHhx
aS0+Y2FuZGlkYXRlKTsKPj4+Pj4+Pj4+Pj4gCj4+Pj4+Pj4+Pj4+ICAJdHhxaS0+dHhxLnZpZiA9
ICZzZGF0YS0+dmlmOwo+Pj4+Pj4+Pj4+PiAKPj4+Pj4+Pj4+Pj4gQEAgLTM3MjQsNiArMzcyNSw5
IEBAIHZvaWQgaWVlZTgwMjExX3NjaGVkdWxlX3R4cShzdHJ1Y3QKPj4+Pj4+Pj4+Pj4gaWVlZTgw
MjExX2h3Cj4+Pj4+Pj4+Pj4+ICpodywKPj4+Pj4+Pj4+Pj4gCj4+Pj4+Pj4+Pj4+ICAJc3Bpbl9s
b2NrX2JoKCZsb2NhbC0+YWN0aXZlX3R4cV9sb2NrW2FjXSk7Cj4+Pj4+Pj4+Pj4+IAo+Pj4+Pj4+
Pj4+PiArCWlmICghbGlzdF9lbXB0eSgmdHhxaS0+Y2FuZGlkYXRlKSkKPj4+Pj4+Pj4+Pj4gKwkJ
bGlzdF9kZWxfaW5pdCgmdHhxaS0+Y2FuZGlkYXRlKTsKPj4+Pj4+Pj4+Pj4gKwo+Pj4+Pj4+Pj4+
PiAgCWlmICghUkJfRU1QVFlfTk9ERSgmdHhxaS0+c2NoZWR1bGVfb3JkZXIpKQo+Pj4+Pj4+Pj4+
PiAgCQlnb3RvIG91dDsKPj4+Pj4+Pj4+Pj4gCj4+Pj4+Pj4+Pj4+IEBAIC0zNzgzLDYgKzM3ODcs
MjAgQEAgc3RhdGljIHZvaWQKPj4+Pj4+Pj4+Pj4gX19pZWVlODAyMTFfdW5zY2hlZHVsZV90eHEo
c3RydWN0Cj4+Pj4+Pj4+Pj4+IGllZWU4MDIxMV9odyAqaHcsCj4+Pj4+Pj4+Pj4+ICAJUkJfQ0xF
QVJfTk9ERSgmdHhxaS0+c2NoZWR1bGVfb3JkZXIpOwo+Pj4+Pj4+Pj4+PiAgfQo+Pj4+Pj4+Pj4+
PiAKPj4+Pj4+Pj4+Pj4gK3ZvaWQgaWVlZTgwMjExX3JlbW92ZV90eHEoc3RydWN0IGllZWU4MDIx
MV9odyAqaHcsCj4+Pj4+Pj4+Pj4+ICsJCQkgIHN0cnVjdCBpZWVlODAyMTFfdHhxICp0eHEpCj4+
Pj4+Pj4+Pj4+ICt7Cj4+Pj4+Pj4+Pj4+ICsJc3RydWN0IGllZWU4MDIxMV9sb2NhbCAqbG9jYWwg
PSBod190b19sb2NhbChodyk7Cj4+Pj4+Pj4+Pj4+ICsJc3RydWN0IHR4cV9pbmZvICp0eHFpID0g
dG9fdHhxX2luZm8odHhxKTsKPj4+Pj4+Pj4+Pj4gKwo+Pj4+Pj4+Pj4+PiArCWxvY2tkZXBfYXNz
ZXJ0X2hlbGQoJmxvY2FsLT5hY3RpdmVfdHhxX2xvY2tbdHhxLT5hY10pOwo+Pj4+Pj4+Pj4+PiAr
Cj4+Pj4+Pj4+Pj4+ICsJaWYgKCFSQl9FTVBUWV9OT0RFKCZ0eHFpLT5zY2hlZHVsZV9vcmRlcikp
IHsKPj4+Pj4+Pj4+Pj4gKwkJX19pZWVlODAyMTFfdW5zY2hlZHVsZV90eHEoaHcsIHR4cSk7Cj4+
Pj4+Pj4+Pj4+ICsJCWxpc3RfZGVsX2luaXQoJnR4cWktPmNhbmRpZGF0ZSk7Cj4+Pj4+Pj4+Pj4+
ICsJfQo+Pj4+Pj4+Pj4+PiArfQo+Pj4+Pj4+Pj4+PiArCj4+Pj4+Pj4+Pj4+ICB2b2lkIGllZWU4
MDIxMV91bnNjaGVkdWxlX3R4cShzdHJ1Y3QgaWVlZTgwMjExX2h3ICpodywKPj4+Pj4+Pj4+Pj4g
IAkJCSAgICAgIHN0cnVjdCBpZWVlODAyMTFfdHhxICp0eHEpCj4+Pj4+Pj4+Pj4+ICAJX19hY3F1
aXJlcyh0eHFfbG9jaykgX19yZWxlYXNlcyh0eHFfbG9jaykKPj4+Pj4+Pj4+Pj4gQEAgLTM3OTAs
NyArMzgwOCw3IEBAIHZvaWQgaWVlZTgwMjExX3Vuc2NoZWR1bGVfdHhxKHN0cnVjdAo+Pj4+Pj4+
Pj4+PiBpZWVlODAyMTFfaHcgKmh3LAo+Pj4+Pj4+Pj4+PiAgCXN0cnVjdCBpZWVlODAyMTFfbG9j
YWwgKmxvY2FsID0gaHdfdG9fbG9jYWwoaHcpOwo+Pj4+Pj4+Pj4+PiAKPj4+Pj4+Pj4+Pj4gIAlz
cGluX2xvY2tfYmgoJmxvY2FsLT5hY3RpdmVfdHhxX2xvY2tbdHhxLT5hY10pOwo+Pj4+Pj4+Pj4+
PiAtCV9faWVlZTgwMjExX3Vuc2NoZWR1bGVfdHhxKGh3LCB0eHEpOwo+Pj4+Pj4+Pj4+PiArCWll
ZWU4MDIxMV9yZW1vdmVfdHhxKGh3LCB0eHEpOwo+Pj4+Pj4+Pj4+PiAgCXNwaW5fdW5sb2NrX2Jo
KCZsb2NhbC0+YWN0aXZlX3R4cV9sb2NrW3R4cS0+YWNdKTsKPj4+Pj4+Pj4+Pj4gIH0KPj4+Pj4+
Pj4+Pj4gCj4+Pj4+Pj4+Pj4+IEBAIC0zODAzLDExICszODIxLDQ4IEBAIHZvaWQgaWVlZTgwMjEx
X3JldHVybl90eHEoc3RydWN0Cj4+Pj4+Pj4+Pj4+IGllZWU4MDIxMV9odwo+Pj4+Pj4+Pj4+PiAq
aHcsCj4+Pj4+Pj4+Pj4+ICAJbG9ja2RlcF9hc3NlcnRfaGVsZCgmbG9jYWwtPmFjdGl2ZV90eHFf
bG9ja1t0eHEtPmFjXSk7Cj4+Pj4+Pj4+Pj4+IAo+Pj4+Pj4+Pj4+PiAgCWlmICghUkJfRU1QVFlf
Tk9ERSgmdHhxaS0+c2NoZWR1bGVfb3JkZXIpICYmCj4+Pj4+Pj4+Pj4+IC0JICAgIChza2JfcXVl
dWVfZW1wdHkoJnR4cWktPmZyYWdzKSAmJgo+Pj4+Pj4+Pj4+PiAhdHhxaS0+dGluLmJhY2tsb2df
cGFja2V0cykpCj4+Pj4+Pj4+Pj4+IC0JCV9faWVlZTgwMjExX3Vuc2NoZWR1bGVfdHhxKGh3LCB0
eHEpOwo+Pj4+Pj4+Pj4+PiArCQkhdHhxX2hhc19xdWV1ZSgmdHhxaS0+dHhxKSAmJgo+Pj4+Pj4+
Pj4+PiArCQlsaXN0X2VtcHR5KCZ0eHFpLT5jYW5kaWRhdGUpKQo+Pj4+Pj4+Pj4+PiArCQlsaXN0
X2FkZF90YWlsKCZ0eHFpLT5jYW5kaWRhdGUsCj4+Pj4+Pj4+Pj4+ICZsb2NhbC0+cmVtb3ZlX2xp
c3RbdHhxLT5hY10pOwo+Pj4+Pj4+Pj4+PiArCj4+Pj4+Pj4+Pj4+ICB9Cj4+Pj4+Pj4+Pj4+ICBF
WFBPUlRfU1lNQk9MKGllZWU4MDIxMV9yZXR1cm5fdHhxKTsKPj4+Pj4+Pj4+Pj4gCj4+Pj4+Pj4+
Pj4+ICt2b2lkIF9faWVlZTgwMjExX2NoZWNrX3R4cXMoc3RydWN0IGllZWU4MDIxMV9sb2NhbCAq
bG9jYWwsIAo+Pj4+Pj4+Pj4+PiBpbnQKPj4+Pj4+Pj4+Pj4gYWMpCj4+Pj4+Pj4+Pj4+ICt7Cj4+
Pj4+Pj4+Pj4+ICsJc3RydWN0IHR4cV9pbmZvICppdGVyLCAqdG1wOwo+Pj4+Pj4+Pj4+PiArCXN0
cnVjdCBzdGFfaW5mbyAqc3RhOwo+Pj4+Pj4+Pj4+PiArCj4+Pj4+Pj4+Pj4+ICsJbG9ja2RlcF9h
c3NlcnRfaGVsZCgmbG9jYWwtPmFjdGl2ZV90eHFfbG9ja1thY10pOwo+Pj4+Pj4+Pj4+PiArCj4+
Pj4+Pj4+Pj4+ICsJbGlzdF9mb3JfZWFjaF9lbnRyeV9zYWZlKGl0ZXIsIHRtcCwgJmxvY2FsLT5y
ZW1vdmVfbGlzdFthY10sCj4+Pj4+Pj4+Pj4+ICsJCQkJIGNhbmRpZGF0ZSkgewo+Pj4+Pj4+Pj4+
PiArCQlzdGEgPSBjb250YWluZXJfb2YoaXRlci0+dHhxLnN0YSwgc3RydWN0IHN0YV9pbmZvLCBz
dGEpOwo+Pj4+Pj4+Pj4+PiArCj4+Pj4+Pj4+Pj4+ICsJCWlmICh0eHFfaGFzX3F1ZXVlKCZpdGVy
LT50eHEpKQo+Pj4+Pj4+Pj4+PiArCQkJbGlzdF9kZWxfaW5pdCgmaXRlci0+Y2FuZGlkYXRlKTsK
Pj4+Pj4+Pj4+Pj4gKwkJZWxzZQo+Pj4+Pj4+Pj4+PiArCQkJaWVlZTgwMjExX3JlbW92ZV90eHEo
JmxvY2FsLT5odywgJml0ZXItPnR4cSk7Cj4+Pj4+Pj4+Pj4+ICsJfQo+Pj4+Pj4+Pj4+PiArfQo+
Pj4+Pj4+Pj4+PiArCj4+Pj4+Pj4+Pj4+ICt2b2lkIGllZWU4MDIxMV90eHFzX2NoZWNrKHN0cnVj
dCB0aW1lcl9saXN0ICp0KQo+Pj4+Pj4+Pj4+PiArewo+Pj4+Pj4+Pj4+PiArCXN0cnVjdCBpZWVl
ODAyMTFfbG9jYWwgKmxvY2FsID0gZnJvbV90aW1lcihsb2NhbCwgdCwKPj4+Pj4+Pj4+Pj4gcmVt
b3ZlX3RpbWVyKTsKPj4+Pj4+Pj4+Pj4gKwlzdHJ1Y3QgdHhxX2luZm8gKml0ZXIsICp0bXA7Cj4+
Pj4+Pj4+Pj4+ICsJc3RydWN0IHN0YV9pbmZvICpzdGE7Cj4+Pj4+Pj4+Pj4+ICsJaW50IGFjOwo+
Pj4+Pj4+Pj4+PiArCj4+Pj4+Pj4+Pj4+ICsJZm9yIChhYyA9IDA7IGFjIDwgSUVFRTgwMjExX05V
TV9BQ1M7IGFjKyspIHsKPj4+Pj4+Pj4+Pj4gKwkJc3Bpbl9sb2NrX2JoKCZsb2NhbC0+YWN0aXZl
X3R4cV9sb2NrW2FjXSk7Cj4+Pj4+Pj4+Pj4+ICsJCV9faWVlZTgwMjExX2NoZWNrX3R4cXMobG9j
YWwsIGFjKTsKPj4+Pj4+Pj4+Pj4gKwkJc3Bpbl91bmxvY2tfYmgoJmxvY2FsLT5hY3RpdmVfdHhx
X2xvY2tbYWNdKTsKPj4+Pj4+Pj4+Pj4gKwl9Cj4+Pj4+Pj4+Pj4+ICsKPj4+Pj4+Pj4+Pj4gKwlt
b2RfdGltZXIoJmxvY2FsLT5yZW1vdmVfdGltZXIsCj4+Pj4+Pj4+Pj4+ICsJCSAgamlmZmllcyAr
Cj4+Pj4+Pj4+Pj4+IG1zZWNzX3RvX2ppZmZpZXMoSUVFRTgwMjExX0FJUlRJTUVfVFhRX1JNX0NI
S19JTlRWX0lOX01TKSk7Cj4+Pj4+Pj4+Pj4+ICt9Cj4+Pj4+Pj4+Pj4gCj4+Pj4+Pj4+Pj4gSSds
bCBhc2sgdGhlIHNhbWUgYXMgSSBkaWQgbGFzdCB0aW1lICh3aGVyZSB5b3UgdG9sZCBtZSB0byBo
b2xkCj4+Pj4+Pj4+Pj4gb2ZmCj4+Pj4+Pj4+Pj4gdW50aWwgdGhpcyByb3VuZCk6Cj4+Pj4+Pj4+
Pj4gCj4+Pj4+Pj4+Pj4gV2h5IGRvIHlvdSBuZWVkIHRoZSB0aW1lciBhbmQgdGhlIHBlcmlvZGlj
IGNoZWNrPyBJZiBUWFFzIGFyZQo+Pj4+Pj4+Pj4+IGFkZGVkCj4+Pj4+Pj4+Pj4gdG8KPj4+Pj4+
Pj4+PiB0aGUgcmVtb3ZlIGxpc3QgZHVyaW5nIHRoZSBzY2hlZHVsaW5nIHJ1biwgYW5kCj4+Pj4+
Pj4+Pj4gX19pZWVlODAyMTFfY2hlY2tfdHhxcygpCj4+Pj4+Pj4+Pj4gaXMgcnVuIGZyb20gc2No
ZWR1bGVfZW5kKCksIGlzbid0IHRoYXQgc3VmZmljaWVudCB0byBjbGVhciB0aGUKPj4+Pj4+Pj4+
PiBsaXN0Pwo+Pj4+Pj4+Pj4gSXMgaXQgcG9zc2libGUgdGhhdCBhIHR4cSBpcyBub3QgYWRkZWQg
dG8gdGhlIHJlbW92ZSBsaXN0IGJ1dCAKPj4+Pj4+Pj4+IHRoZW4KPj4+Pj4+Pj4+IHBhY2tldHMg
aW4gaXQgYXJlIGRyb3BwZWQgYnkgZnFfY29kZWwgYWxnbz8gTGlrZSB0aGUgc3RhdGlvbgo+Pj4+
Pj4+Pj4gZGlzY29ubmVjdHMKPj4+Pj4+Pj4+IHdpdGhvdXQgYW55IG5vdGlmaWNhdGlvbi4KPj4+
Pj4+Pj4gCj4+Pj4+Pj4+IFdlbGwgYXMgbG9uZyBhcyBhbGwgdGhlIG90aGVyIGNsZWFudXAgcGF0
aHMgY2FsbCBkaXJlY3RseSBpbnRvCj4+Pj4+Pj4+IF9fdW5zY2hlZHVsZV90eHEoKSwgdGhhdCBz
aG91bGQgcmVtb3ZlIHN0YXRpb25zIGZyb20gdGhlIAo+Pj4+Pj4+PiBzY2hlZHVsZXIKPj4+Pj4+
Pj4gd2hlbgo+Pj4+Pj4+PiB0aGV5IGRpc2Nvbm5lY3QgZXRjLgo+Pj4+Pj4+IFllcywgdGhlIGRp
c2Nvbm5lY3Qgc2NlbmFyaW8gaXMgYSBiYWQgZXhhbXBsZS4gTXkgY29uY2VybiBpcywgc2F5LAo+
Pj4+Pj4+IHdlCj4+Pj4+Pj4gaGF2ZSAxMCBzdGF0aW9ucyBhbmQgb25seSBvbmUgb2YgdGhlbSBp
cyBhc3NpZ25lZCBhIHZlcnkgc21hbGwKPj4+Pj4+PiB3ZWlnaHQKPj4+Pj4+PiBjb21wYXJlZCB3
aXRoIHRoYXQgb2Ygb3RoZXJzLiBTdXBwb3NlLCBhZnRlciBpdHMgY2hhbmNlIG9mIFR4LCBpdCAK
Pj4+Pj4+PiBpcwo+Pj4+Pj4+IG1vc3QgbGlrZWx5IHRvIGJlIHBsYWNlZCBpbiB0aGUgcmlnaHRt
b3N0KHN0aWxsIGhhcyBzb21lIHBhY2tldHMgCj4+Pj4+Pj4gaW4KPj4+Pj4+PiB0aGUKPj4+Pj4+
PiB0eHEpIGFuZCBubyBtb3JlIGluY29taW5nIGRhdGEgZm9yIGl0LiBUaGUgcmVtYWluaW5nIHBh
Y2tldHMgaW4gCj4+Pj4+Pj4gdHhxCj4+Pj4+Pj4gd2lsbAo+Pj4+Pj4+IGJlIGRyb3BwZWQgZHVl
IHRvIHRpbWVvdXQgYWxnbyBpbiBjb2RlbChjb3JyZWN0IG1lIGlmIEkgYW0gd3JvbmcpCj4+Pj4+
Pj4gYnV0Cj4+Pj4+Pj4gdGhpcyBlbXB0eSB0eHEgd2lsbCBzdGF5IG9uIHRoZSByYnRyZWUgdW50
aWwgb3RoZXIgdHhxcyBnZXQgCj4+Pj4+Pj4gZHJhaW5lZAo+Pj4+Pj4+IG9yCj4+Pj4+Pj4gZ2xv
YmFsIHZ0IGNhdGNoIHVwIHdpdGggaXRzIHZ0LiBUaGUgc3RheWluZyB0aW1lIGNvdWxkIGJlIGxv
bmcgaWYKPj4+Pj4+PiB3ZWlnaHQKPj4+Pj4+PiBpcyBleHRyZW1lbHkgc21hbGwuIFRoZW4gZG8g
d2UgbmVlZCB0aW1lciB0byBjaGVjayBvciBhbnkgb3RoZXIKPj4+Pj4+PiBiZXR0ZXIKPj4+Pj4+
PiBzb2x1dGlvbj8KPj4+Pj4+IAo+Pj4+Pj4gQWgsIEkgc2VlIHdoYXQgeW91IG1lYW4uIE5vLCBJ
IGRvbid0IHRoaW5rIHRoaXMgd2lsbCBiZSBhIHByb2JsZW07Cj4+Pj4+PiB0aGUKPj4+Pj4+IHNj
ZW5hcmlvIHlvdSdyZSBkZXNjcmliaW5nIHdvdWxkIHBsYXkgb3V0IGxpa2UgdGhpczoKPj4+Pj4+
IAo+Pj4+Pj4gMS4gU3RhdGlvbiBlbmRzIHRyYW5zbWl0dGluZywgc3RpbGwgaGFzIGEgc2luZ2xl
IHBhY2tldCBxdWV1ZWQsIAo+Pj4+Pj4gZ2V0cwo+Pj4+Pj4gICAgbW92ZWQgdG8gdGhlIGVuZCBv
ZiB0aGUgcmJ0cmVlIChhbmQgc3RheXMgdGhlcmUgZm9yIGEgd2hpbGUpLgo+Pj4+Pj4gCj4+Pj4+
PiAyLiBXaGVuIHdlIGZpbmFsbHkgZ2V0IHRvIHRoZSBwb2ludCB3aGVyZSB0aGlzIHN0YXRpb24g
Z2V0cyBhbm90aGVyCj4+Pj4+PiAgICBjaGFuY2UgdG8gdHJhbnNtaXQsIHRoZSBDb0RlbCBkcm9w
IHRpbWVyIHRyaWdnZXJzIGFuZCB0aGUgbGFzdAo+Pj4+Pj4gcGFja2V0Cj4+Pj4+PiAgICBpcyBk
cm9wcGVkWzBdLiBUaGlzIG1lYW5zIHRoYXQgdGhlIHF1ZXVlIHdpbGwganVzdCBiZSBlbXB0eQo+
Pj4+Pj4gICAgKGFuZCBpZWVlODAyMTFfdHhfZGVxdWV1ZSgpIHdpbGwgcmV0dXJuIE5VTEwpLgo+
Pj4+Pj4gCj4+Pj4+PiAzLiBCZWNhdXNlIHRoZSBxdWV1ZSBpcyBlbXB0eSwgaWVlZTgwMjExX3Jl
dHVybl90eHEoKSB3aWxsIG5vdCBwdXQgCj4+Pj4+PiBpdAo+Pj4+Pj4gICAgYmFjayBvbiB0aGUg
cmJ0cmVlLgo+Pj4+Pj4gCj4+Pj4+PiBDcnVjaWFsbHksIGluIDIuIHRoZSBDb0RlbCBhbGdvcml0
aG0gZG9lc24ndCBraWNrIGluIHVudGlsIHRoZSAKPj4+Pj4+IHBvaW50Cj4+Pj4+PiBvZgo+Pj4+
Pj4gcGFja2V0IGRlcXVldWUuIEJ1dCBldmVuIGlmIGFuIGVtcHR5IHF1ZXVlIHN0YXlzIG9uIHRo
ZSByYnRyZWUgZm9yIAo+Pj4+Pj4gYQo+Pj4+Pj4gd2hpbGUsIHRoZXJlIGlzIG5vIGhhcm0gaW4g
dGhhdDogZXZlbnR1YWxseSBpdCB3aWxsIGdldCBpdHMgdHVybiwgCj4+Pj4+PiBpdAo+Pj4+Pj4g
d2lsbCB0dXJuIG91dCB0byBiZSBlbXB0eSwgYW5kIGp1c3QgYmUgc2tpcHBlZCBvdmVyLgo+Pj4+
PiBUaGVuIHRoYXQgd2lsbCBiZSBmaW5lLiBUaGFua3MgZm9yIHRoZSBleHBsYW5hdGlvbiBvZiB0
aGUgZHJvcHBpbmcKPj4+Pj4gcGFydAo+Pj4+PiBpbiBDb0RlbCBhbGdvcml0aG0uCj4+Pj4gCj4+
Pj4gWXVwLCB0aGluayBzby4gQW5kIHlvdSdyZSB3ZWxjb21lIDopCj4+Pj4gCj4+Pj4+PiBUaGUg
aXNzdWUgd2UgbmVlZCB0byBiZSBjb25jZXJuZWQgYWJvdXQgaXMgdGhlIG9wcG9zaXRlOiBJZiB3
ZSBoYXZlIAo+Pj4+Pj4gYQo+Pj4+Pj4gcXVldWUgdGhhdCAqZG9lcyogaGF2ZSBwYWNrZXRzIHF1
ZXVlZCwgYnV0IHdoaWNoIGlzICpub3QqIHNjaGVkdWxlZAo+Pj4+Pj4gZm9yCj4+Pj4+PiB0cmFu
c21pc3Npb24sIHRoYXQgd2lsbCBzdGFsbCBUWC4KPj4+Pj4gSXMgaXQgYnkgZGVzaWduIHNpbmNl
IGl0cyB2dCBpcyBtb3JlIHRoYW4gZ2xvYmFsIHZ0LCByaWdodD8gVGhlCj4+Pj4+IGxhdHRlbmN5
Cj4+Pj4+IG1heSBzb21laG93IGdldCBpbXBhY3RlZCB0aG91Z2guCj4+Pj4gCj4+Pj4gV2VsbCwg
aXQgc2hvdWxkIHN0aWxsIHN0YXkgb24gdGhlIHJidHJlZSBhcyBsb25nIGFzIGl0IGhhcyBwYWNr
ZXRzCj4+Pj4gcXVldWVkLiBXZSBkb24ndCBoYXZlIGEgY2hlY2sgYW55d2hlcmUgdGhhdCByZXNj
aGVkdWxlcyBUWFFzIHdob3NlIAo+Pj4+IHZfdAo+Pj4+IGRyb3BzIGJlbG93IGdsb2JhbCB2X3Qu
Li4KPj4+PiAKPj4+Pj4+IFswXSBDb0RlbCBpbiBtb3N0IGNhc2VzIG9ubHkgZHJvcHMgYSBzaW5n
bGUgcGFja2V0IGF0IGEgdGltZSwgc28gaXQKPj4+Pj4+IHdpbGwKPj4+Pj4+IG5vdCBjbGVhciBv
dXQgYW4gZW50aXJlIHF1ZXVlIHdpdGggbXVsdGlwbGUgcGFja2V0cyBpbiBvbmUgZ28uIEJ1dAo+
Pj4+Pj4geW91Cj4+Pj4+PiBhcmUgcmlnaHQgdGhhdCBpdCBjb3VsZCBjb25jZWl2YWJseSBkcm9w
IHRoZSBsYXN0IHBhY2tldCBpbiBhIAo+Pj4+Pj4gcXVldWUuCj4+Pj4+PiAKPj4+Pj4+Pj4gV2Ug
b25seSBuZWVkIHRvIGRlZmVyIHJlbW92YWwgaW5zaWRlIGEgc2luZ2xlICJzY2hlZHVsaW5nIHJv
dW5kIgo+Pj4+Pj4+PiAoaS5lLiwKPj4+Pj4+Pj4gYmV0d2VlbiBhIHBhaXIgb2YgaWVlZTgwMjEx
X3R4cV9zY2hlZHVsZV9zdGFydC9lbmQuIFNvIGlmIHdlIGp1c3QKPj4+Pj4+Pj4gd2Fsawo+Pj4+
Pj4+PiB0aGUgcmVtb3ZlIGxpc3QgaW4gc2NoZWR1bGVfZW5kKCkgd2Ugc2hvdWxkIGJlIGVub3Vn
aCwgbm8/Cj4+Pj4+Pj4+IAo+Pj4+Pj4+PiBIbW0sIG9yIG1heWJlIGEgc2ltcGxlciB3YXkgdG8g
Zml4IHRoZSBvcmlnaW5hbCBpc3N1ZSBpcyBqdXN0IHRvCj4+Pj4+Pj4+IGhhdmUKPj4+Pj4+Pj4g
dW5zY2hlZHVsZV90eHEoKSB1cGRhdGUgdGhlIHNjaGVkdWxlX3BvcygpIHBvaW50ZXI/Cj4+Pj4+
Pj4+IAo+Pj4+Pj4+PiBJLmUuLCB1bnNjaGVkdWxlX3R4cSBjaGVja3MgaWYgdGhlIHR4cSBiZWlu
ZyByZW1vdmVkIGlzIGN1cnJlbnRseQo+Pj4+Pj4+PiBiZWluZwo+Pj4+Pj4+PiBwb2ludGVkIHRv
IGJ5IHNjaGVkdWxlX3Bvc1thY10sIGFuZCBpZiBpdCBpcywgaXQgdXBkYXRlcwo+Pj4+Pj4+PiBz
Y2hlZHVsZV9wb3MKPj4+Pj4+Pj4gdG8KPj4+Pj4+Pj4gYmUgdGhlIHJiX25leHQgb2YgdGhlIGN1
cnJlbnQgdmFsdWU/Cj4+Pj4+Pj4gQWN0dWFsbHksIGlmIHNjaGVkdWxlX3BvcyBpcyB1cGRhdGVk
IHRvIHJiX25leHQgb2YgdGhlIGN1cnJlbnQKPj4+Pj4+PiB2YWx1ZSwKPj4+Pj4+PiB0aGVuIGlu
IHRoZSBuZXh0X3R4cSgpIHdoZXJlIHdlIGFyZSBnb2luZyB0byB1c2UgcmJfbmV4dCBhZ2FpbiBh
bmQKPj4+Pj4+PiBmaW5hbGx5IHBpY2sgdGhlIG5leHQgbm9kZSBvZiB0aGUgbm9kZSB3ZSByZWFs
bHkgd2FudC4gSXMgaXQgZmluZSAKPj4+Pj4+PiB0bwo+Pj4+Pj4+IHVwZGF0ZSBzY2hlZHVsZV9w
b3MgdG8gTlVMTD8KPj4+Pj4+IAo+Pj4+Pj4gSG1tLCB5ZWFoLCBnb29kIHBvaW50Lgo+Pj4+Pj4g
Cj4+Pj4+PiBJZiB3ZSBkbyBlbmQgdXAgc2V0dGluZyBzY2hlZHVsZV9wb3MgdG8gTlVMTCBpbiB0
aGUgbWlkZGxlIG9mIGEKPj4+Pj4+IHNjaGVkdWxpbmcgcm91bmQsIHRoYXQgd2lsbCBtYWtlIG5l
eHRfdHhxKCkgInN0YXJ0IG92ZXIiLCBhbmQgZG8KPj4+Pj4+IGFub3RoZXIKPj4+Pj4+IGxvb3Ag
dGhyb3VnaCB0aGUgd2hvbGUgdGhpbmcuIEkgZ3Vlc3Mgd2UgbWF5IGJlIGFibGUgaGl0IGEgY2Fz
ZSAKPj4+Pj4+IHdoZXJlCj4+Pj4+PiB0aGluZ3MgY2FuIG9zY2lsbGF0ZSBiYWNrIGFuZCBmb3J0
aCBiZXR3ZWVuIGFkZGl0aW9uIGFuZCByZW1vdmFsCj4+Pj4+PiByZXN1bHRpbmcgaW4gYW4gaW5m
aW5pdGUgbG9vcD8gTm90IHN1cmUsIGJ1dCBhdCBsZWFzdCBJIGNhbid0IHNlZW0gCj4+Pj4+PiB0
bwo+Pj4+Pj4gY29udmluY2UgbXlzZWxmIHRoYXQgdGhpcyBjYW4ndCBoYXBwZW4uCj4+Pj4+IAo+
Pj4+PiBBcyB0aGUgbG9vcCBvZiBuZXh0X3R4cSB1bmRlciBsb2NrIHByb3RlY3Rpb24gYXMgYmVs
b3csCj4+Pj4+IAo+Pj4+PiB0eHFfc2NoZWR1bGVfc3RhcnQoKTsKPj4+Pj4gd2hpbGUodHhxPW5l
eHRfdHhxKCkpewo+Pj4+PiAuLi4KPj4+Pj4gcmV0dXJuX3R4cSh0eHEpOwo+Pj4+PiB9Cj4+Pj4+
IHR4cV9zY2hlZHVsZV9lbmQoKTsKPj4+Pj4gCj4+Pj4+IEkgZG8gbm90IHNlZSBhbnkgY2hhbmNl
IG9mIGFkZGl0aW9uLCBubz8KPj4+PiAKPj4+PiBBcyB5b3Ugbm90ZWQgaW4geW91ciBvdGhlciBl
bWFpbCwgRmVsaXggcmVkdWNlZCB0aGUgbG9ja2luZy4gQW5kIAo+Pj4+IHllYWgsCj4+Pj4gd2Ug
bmVlZCB0byByZWJhc2UgdGhpcyBzZXJpZXMgdG8gYWxzbyBpbmNvcnBvcmF0ZSB0aGF0LiBJIGZp
Z3VyZSBJIAo+Pj4+IGNhbgo+Pj4+IHNlbmQgYW4gdXBkYXRlZCB2ZXJzaW9uIG9mIHRoZSBmaXJz
dCBwYXRjaCBpbiB0aGUgc2VyaWVzIG9uY2Ugd2UndmUKPj4+PiB3b3JrZWQgb3V0IHRoZSByZW1h
aW5pbmcgaXNzdWVzIHdpdGggeW91ciBmb2xsb3ctdXAgcGF0Y2hlcy4KPj4+PiAKPj4+IE9oLCBJ
IHdhcyB0aGlua2luZyB3ZSB3ZXJlIGRpc2N1c3Npbmcgd2l0aG91dCBsb2NraW5nIHJlZHVjZWQu
IFllcywgSQo+Pj4gYWxzbyBhZ3JlZSB0aGVyZSBtaWdodCBiZSBhIGNhc2UgY2F1c2luZyBpbmZp
bml0ZSBsb29wLiBXaXRoIGxvY2tpbmcKPj4+IHJlZHVjZWQsIHRoZSB0cmVlIGNhbiBiZSBhZGp1
c3RlZCBiZXR3ZWVuIG5leHRfdHhxKCkgYW5kIHJldHVybl90eHEoKSAKPj4+IGluCj4+PiB0aGUg
bG9vcCBzaXR1YXRpb24uIEZvciBmdXJ0aGVyIGRpc2N1c3Npb24sIGxldCAncyBjb25zaWRlciwK
Pj4+IDEpIHRoZSB0cmVlIHN0YXJ0cyBsaWtlOgo+Pj4gICAgICAgICBBLT5CLT5DLT5ELT5FCj4+
PiAyKSB0aGVuIG5leHRfdHhxKCkgcmV0dXJucyBBIGZvciBkZXF1ZXVpbmcKPj4+IDMpIGRyaXZl
ciBkZXF1ZXVlcyBBIGFuZCBkcmFpbmVzIEEgd2l0aG91dCBhbnkgYWN0aXZlIHR4cSBsb2NrZWQg
Cj4+PiBtZWFuaW5nCj4+PiB0aGUgdHJlZSBjb3VsZCBiZSBjaGFuZ2VkIHVwb24gVHggY29tcGVs
ZXRpb24uCj4+PiA0KSB0aGVuIGluIHJldHVybl90eHEoKSwgdGhlIHRyZWUgY291bGQgYmUsCj4+
PiAgICAgICAgIGkgICBBLT5CLT5DLT5ELT5FIO+8iEEgaXMgZW1wdHksIGFuZCBtYXliZSBzb29u
IGJlIGFkZGVkIGJhY2sKPj4+IGJlZm9yZSB0aGUgbG9vcCBlbmTvvIkKPj4+ICAgICAgICAgaWkg
IEItPkMtPkEtPkQtPkUg77yIQSBpcyBlbXB0eSwgYW5kIG1heWJlIHNvb24gYmUgYWRkZWQgYmFj
awo+Pj4gYmVmb3JlIHRoZSBsb29wIGVuZO+8iQo+Pj4gICAgICAgICBpaWkgQi0+Qy0+RC0+RS0+
QSDvvIhBIGlzIGVtcHR5LCBhbmQgbWF5YmUgc29vbiBiZSBhZGRlZCBiYWNrCj4+PiBiZWZvcmUg
dGhlIGxvb3AgZW5kKQo+Pj4gCj4+PiB3aXRoIHRoaXMgY2hhbmdlOgo+Pj4gICBsb2NhbC0+c2No
ZWR1bGVfcG9zW2FjXSA9IHJiX25leHQobm9kZSkgPzogcmJfcHJldihub2RlKTsKPj4+IAo+Pj4g
Zm9yIGNhc2UgaSwgbG9jYWwtPnNjaGVkdWxlX3Bvc1thY10gaXMgcmJfbmV4dChBKSB3aGljaCBp
cyBCLCBhbmQgaW4KPj4+IG5leHRfdHhxKCksIHJiX25leHQoQikgaXMgd2hhdCB3ZSByZXR1cm5z
IHdoaWNoIGFjdHVhbGx5IGlzIEMgYW5kIEIgaXMKPj4+IHNraXBwZWQsIG5vPwo+Pj4gCj4+PiBT
aW1pbGlhciBmb3IgY2FzZSBpaSwgd2Ugc2tpcCBCLCBDLCBELgo+PiAKPj4gWXVwLCBJIHRoaW5r
IHlvdSdyZSByaWdodC4gQnV0IGlmIHdlIGNhbiBmaXggdGhpcyBieSBtYWtpbmcKPj4gaWVlZTgw
MjExX3Jlc29ydF90eHEoKSBhd2FyZSBvZiB0aGUgc2NoZWR1bGVfcG9zIGFzIHdlbGwsIG5vPyBJ
LmUuLCBpZgo+PiByZXNvcnRfdHhxKCkgYWN0cyBvbiB0aGUgdHhxIHRoYXQncyBjdXJyZW50bHkg
aW4gc2NoZWR1bGVfcG9zLCBpdCB3aWxsCj4+IHVwZGF0ZSBzY2hlZHVsZSBwb3Mgd2l0aCB0aGUg
c2FtZSByYl9uZXh0KG5vZGUpID86IHJiX3ByZXYobm9kZSk7Cj4+IChvcHRpb25hbGx5IGFmdGVy
IGNoZWNraW5nIHRoYXQgdGhlIHBvc2l0aW9uIG9mIHRoZSBub2RlIGlzIGFjdHVhbGx5Cj4+IGdv
aW5nIHRvIGNoYW5nZSkuCj4gU29ycnksIHBsZWFzZSBpZ29yZSBsYXN0IGVtYWlsIHNlbnQgYnkg
bWlzdGFrZS4KPgo+IEkgZG9uJ3QgdGhpbmsgaXQgbWFrZXMgYW55IGRpZmZlcmVuY2Ugd2l0aCB0
aGF0IGluIHVuc2NoZWR1bGVfdHhxKCkuIEZvciAKPiBjYXNlIGksIGl0IGZpbmFsbHkgcGlja3Mg
QyBhcyB3ZWxsIGluIG5leHRfdHhxKCkuIEZvciBuZXh0X3R4cSgpLCAKPiBzY2hlZHVsZV9wb3Mg
bWVhbnMgcHJldmlvdXMgY2FuZGlkYXRlIG5vZGUgd2hlcmVhcyB3aXRoIHlvdXIgY2hhbmdlLCBp
dCAKPiBsb29rcyBsaWtlIHNjaGVkdWxlX3BvcyBpcyBjdXJyZW50IGNhbmRpZGF0ZSBub2RlIGlu
c3RlYWQuCgpIbW0sIHRoYXQgd2FzIG5vdCBhY3R1YWxseSB3aGF0IEkgd2FzIHRoaW5raW5nLCBi
dXQgeWVhaCBJIHRoaW5rIHlvdSdyZQpyaWdodCB0aGF0IGl0IHdvdWxkIGJlIGVhc2llciB0byBq
dXN0IGNoYW5nZSBpdCBzbyBzY2hlZHVsZV9wb3MgaXMKcG9pbnRpbmcgdG8gdGhlIG5leHQgYW5k
IG5vdCB0aGUgY3VycmVudCB0eHEgd2Ugd2FudCB0byBzY2hlZHVsZS4KCldlJ2Qgc3RpbGwgbmVl
ZCBhIGNoZWNrIGluIHJlc29ydF90eHEoKSB0aGVuLCBidXQgaXQgd291bGQgbWFrZSBpdCBzYWZl
CnRvIHVuc2NoZWR1bGUgaW4gcmV0dXJuX3R4cSgpLi4uCgo+Pj4gQWxzbyBJIGFtIHdvbmRlcmlu
ZyBpZiB0aGVyZSB3aWxsIGJlIHNvbWUgU01QIGlzc3VlcyByZWxhdGluZyB3aXRoCj4+PiBsb2Nh
bC0+c2NoZWR1bGVfcG9zW2FjXS4KPj4gCj4+IE5vdCBzdXJlIHdoYXQgeW91IG1lYW4gYnkgdGhp
cz8KPiBNeSBiYWQuIFBsZWFzZSBpZ25vcmUgdGhpcy4KPgo+Cj4+IAo+Pj4+PiBJbiBhdGgxMGss
IHdlIHdpbGwgdXN1YWxseSBwdXNoIHBhY2tldHMgb2YgZmlyc3QgdHhxIGFzIG1hbnkgYXMgd2Ug
Cj4+Pj4+IGNhbgo+Pj4+PiB1bnRpbCBpdCBpcyBkcmFpbmVkIGFuZCB0aGVuIG1vdmUgdG8gdGhl
IG5leHQgb25lLiBTbyBpZiBhIHR4cSBnZXRzCj4+Pj4+IHJlbW92ZWQgaW4gdGhlIHJldHVybl90
eHEsIGl0IHNob3VsZCBhbHdheXMgYmUgdGhlIGxlZnRtb3N0LiBBbmQKPj4+Pj4gZHVyaW5nIHRo
aXMgcGVyaW9kLCBuZWl0aGVyIHZ0IG9mIGFueSBzdGF0aW9uIG9yIGdsb2JhbCB2dCBjYW4gYmUK
Pj4+Pj4gdXBkYXRlZCBkdWUgdG8gbG9jayBwcm90ZWN0aW9uLgo+Pj4+PiAKPj4+Pj4+IAo+Pj4+
Pj4gQnV0IGluIHRoYXQgY2FzZSwgd2UgY291bGQgZml4IGl0IGJ5IGp1c3QgY29uZGl0aW9uYWxs
eSBhc3NpZ25pbmcKPj4+Pj4+IGVpdGhlcgo+Pj4+Pj4gcmJfbmV4dCBvciByYl9wcmV2IHRvIHRo
ZSBzY2hlZHVsZV9wb3MgaW4gdW5zY2hlZHVsZV90eHEoKT8gSS5lLiwKPj4+Pj4+IHNvbWV0aGlu
ZyBsaWtlOgo+Pj4+Pj4gCj4+Pj4+PiBsb2NhbC0+c2NoZWR1bGVfcG9zW2FjXSA9IHJiX25leHQo
bm9kZSkgPzogcmJfcHJldihub2RlKTsKPj4+Pj4gSSBhbSBub3Qgc3VyZSBJIGFtIGdldHRpbmcg
eW91ciBwb2ludC4gU3RpbGwgaW4gbmV4dF90eHEsCj4+Pj4+IHNjaGVkdWxlX3Bvc1thY10gd2ls
bCBsZWFkIHVzIHRvIHRoZSBuZXh0IG5vZGUgb2YgdGhlIG9uZSB3ZSB3YW50Lgo+Pj4+IAo+Pj4+
IFRoZSBsb2dpYyBpbiBuZXh0X3R4cSBpcyBkaWZmZXJlbnQgd2hlbiBzY2hlZHVsZV9wb3NbYWNd
IGlzIE5VTEwsIHZzCj4+Pj4gd2hlbiByYl9uZXh0KHNjaGVkdWxlX3Bvc1thY10pIGlzIE5VTEwu
IFRoZSBmb3JtZXIgcmVzdGFydHMgYSBuZXcKPj4+PiBzY2hlZHVsaW5nIHJvdW5kLCB3aGlsZSB0
aGUgbGF0dGVyIGVuZHMgdGhlIGN1cnJlbnQgcm91bmQuCj4+Pj4gCj4+Pj4gLVRva2UKPj4+IAo+
Pj4gLS0KPj4+IFlpYm8KPgo+IC0tIAo+IFlpYm8KCgpfX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fXwphdGgxMGsgbWFpbGluZyBsaXN0CmF0aDEwa0BsaXN0cy5p
bmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8v
YXRoMTBrCg==

Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A43B2DD89B
	for <lists+ath10k@lfdr.de>; Sat, 19 Oct 2019 13:37:39 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:To:From:Subject:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=cJIhmbDQMXqYeYCzZ0whb/1JN4MJFNAOySMff9lY8uM=; b=Rg+nxOpGXeFNCJ
	Yu39yNNFljnbkk1HWifSBK127Nvf5U02XESQPuDaoefe/LSH0+QTImFj8Wa1f7XEOB1az/xzJDiM5
	ahf4w0O/7HWtmA2NHFdkcwxYCBRqLi0KzwXd9Q+ACIRPKxsQbakYNIDuEs3kRtap9g8AUgXGhwOpm
	lvUapmuWnVCzi1pTiCjtOolhqjnIhQEcYJPSptWlKFWOz/7FEBRnDfj0QXyT4wgI/JJAmpB+pbaCI
	PSZGA8Oy+kR9golBTED0Fp6OwwdY20YbYDa6XVvc5SMPffoaV91BdN6dT/CI4wDTZa11yvRDWw9UV
	up8CON7V42JvpQu0bYvA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iLn3B-00045n-U9; Sat, 19 Oct 2019 11:37:37 +0000
Received: from us-smtp-1.mimecast.com ([205.139.110.61]
 helo=us-smtp-delivery-1.mimecast.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iLn30-0003tq-4G
 for ath10k@lists.infradead.org; Sat, 19 Oct 2019 11:37:27 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1571485045;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=MVaudQUuQCI+ljMWLLAsex2zEz8cPUhBc2aoUxPRkR8=;
 b=BWcOvuLNv5sd3XrirToRijYY47SKmawEq67pkT1OMXCnwQdWSd3bTeGjy62B3W5BSk4E+o
 wfPek17boDv3Z1Wo0UlGmMf3RHSucmJHliD+ujH7u6mmmWWoY3dX5uIth7amXxNmGdSA1I
 ekb94G5xkt3eIjEseeXtclveKH/GuTE=
Received: from mail-lj1-f197.google.com (mail-lj1-f197.google.com
 [209.85.208.197]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-298-D0vBQfiRO--yItQ1Qo8HzA-1; Sat, 19 Oct 2019 07:37:22 -0400
Received: by mail-lj1-f197.google.com with SMTP id x13so1612451ljj.18
 for <ath10k@lists.infradead.org>; Sat, 19 Oct 2019 04:37:22 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:from:to:cc:date:message-id:in-reply-to
 :references:user-agent:mime-version:content-transfer-encoding;
 bh=KwtZFfw3+zEIBpCSK3JjIjdY2khNQMsybmZnMAvVGWM=;
 b=Ymmj7TIZmRfvLRmp/vUUHkLbgueuUSHuhZRS3iJTZPopl+8ff/ENNfVLZpdlR31CGu
 fBGNVL95cxsHlOrINZ5cEQcXuO5w0SXJ7BVGoUm1WQ83XxpJCyc/GrOa9LL2sxMDtOva
 /XGnI1IY63DsRNXxCjjTOBuYigjFzNiidACr/TC/0n0EswAfG23nHX6SJJIx8AL1nsRG
 o4UkAHpj+ouS/U5npeYgK0rNxNWr7l1Rog7CqjTm89N/DMx4i8oGhtVO98bxZoRxRxeE
 QZYp4mv34okW+pn8ExEbkrZDL1QM04J/8rmmhRMIki/fU23PfkiU0tKsbuNWBwehjjWp
 3QTA==
X-Gm-Message-State: APjAAAUM0tSZkBEMTOeN0JfeUkzUWT2egCXHZ/ziueWMHwlC+Z6WJlEA
 0L0HG95UWE87j/tEnOPxFhwaaJIwYFhdy4uLHVHNJHpmgzZ1MTMoP9YF4/aNPWZJ8vmPnvUUFeo
 8qD1B69zfyYIG6BFiZpPcQw==
X-Received: by 2002:a19:9146:: with SMTP id y6mr645547lfj.11.1571485040858;
 Sat, 19 Oct 2019 04:37:20 -0700 (PDT)
X-Google-Smtp-Source: APXvYqy6A2s0kb12rWbr+kZlB9sAojMXKwZLl1GcZkznDPvWiSSK5d9yqvGSQlvsPztMK75+Z9uVsw==
X-Received: by 2002:a19:9146:: with SMTP id y6mr645532lfj.11.1571485040619;
 Sat, 19 Oct 2019 04:37:20 -0700 (PDT)
Received: from alrua-x1.borgediget.toke.dk (borgediget.toke.dk.
 [85.204.121.218])
 by smtp.gmail.com with ESMTPSA id h3sm5459652ljf.12.2019.10.19.04.37.19
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 19 Oct 2019 04:37:19 -0700 (PDT)
Received: by alrua-x1.borgediget.toke.dk (Postfix, from userid 1000)
 id BD12A1804C8; Sat, 19 Oct 2019 13:37:18 +0200 (CEST)
Subject: [PATCH v4 4/4] mac80211: Use Airtime-based Queue Limits (AQL) on
 packet dequeue
From: =?utf-8?q?Toke_H=C3=B8iland-J=C3=B8rgensen?= <toke@redhat.com>
To: Johannes Berg <johannes@sipsolutions.net>
Date: Sat, 19 Oct 2019 13:37:18 +0200
Message-ID: <157148503865.2989444.7118792679603045723.stgit@toke.dk>
In-Reply-To: <157148503415.2989444.7391437309981941226.stgit@toke.dk>
References: <157148503415.2989444.7391437309981941226.stgit@toke.dk>
User-Agent: StGit/0.20
MIME-Version: 1.0
X-MC-Unique: D0vBQfiRO--yItQ1Qo8HzA-1
X-Mimecast-Spam-Score: 0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191019_043726_279390_F686213F 
X-CRM114-Status: GOOD (  12.55  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [205.139.110.61 listed in list.dnswl.org]
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Kan Yan <kyan@google.com>, Rajkumar Manoharan <rmanohar@codeaurora.org>,
 Kevin Hayes <kevinhayes@google.com>, make-wifi-fast@lists.bufferbloat.net,
 linux-wireless@vger.kernel.org, ath10k@lists.infradead.org,
 John Crispin <john@phrozen.org>, Lorenzo Bianconi <lorenzo@kernel.org>,
 Felix Fietkau <nbd@nbd.name>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "ath10k" <ath10k-bounces@lists.infradead.org>
Errors-To: ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org

RnJvbTogVG9rZSBIw7hpbGFuZC1Kw7hyZ2Vuc2VuIDx0b2tlQHJlZGhhdC5jb20+CgpUaGUgcHJl
dmlvdXMgY29tbWl0IGFkZGVkIHRoZSBhYmlsaXR5IHRvIHRocm90dGxlIHN0YXRpb25zIHdoZW4g
dGhleSBxdWV1ZQp0b28gbXVjaCBhaXJ0aW1lIGluIHRoZSBoYXJkd2FyZS4gVGhpcyBjb21taXQg
ZW5hYmxlcyB0aGUgZnVuY3Rpb25hbGl0eSBieQpjYWxjdWxhdGluZyB0aGUgZXhwZWN0ZWQgYWly
dGltZSB1c2FnZSBvZiBlYWNoIHBhY2tldCB0aGF0IGlzIGRlcXVldWVkIGZyb20KdGhlIFRYUXMg
aW4gbWFjODAyMTEsIGFuZCBhY2NvdW50aW5nIHRoYXQgYXMgcGVuZGluZyBhaXJ0aW1lLgoKVGhl
IGVzdGltYXRlZCBhaXJ0aW1lIGZvciBlYWNoIHNrYiBpcyBzdG9yZWQgaW4gdGhlIHR4X2luZm8s
IHNvIHdlIGNhbgpzdWJ0cmFjdCB0aGUgc2FtZSBhbW91bnQgZnJvbSB0aGUgcnVubmluZyB0b3Rh
bCB3aGVuIHRoZSBza2IgaXMgZnJlZWQgb3IKcmVjeWNsZWQuIFRoZSB0aHJvdHRsaW5nIG1lY2hh
bmlzbSByZWxpZXMgb24gdGhpcyBhY2NvdW50aW5nIHRvIGJlCmFjY3VyYXRlIChpLmUuLCB0aGF0
IHdlIGFyZSBub3QgZnJlZWluZyBza2JzIHdpdGhvdXQgc3VidHJhY3RpbmcgYW55CmFpcnRpbWUg
dGhleSB3ZXJlIGFjY291bnRlZCBmb3IpLCBzbyB3ZSBwdXQgdGhlIHN1YnRyYWN0aW9uIGludG8K
aWVlZTgwMjExX3JlcG9ydF91c2VkX3NrYigpLiBBcyBhbiBvcHRpbWlzYXRpb24sIHdlIGFsc28g
c3VidHJhY3QgdGhlCmFpcnRpbWUgb24gcmVndWxhciBUWCBjb21wbGV0aW9uLCB6ZXJvaW5nIG91
dCB0aGUgdmFsdWUgc3RvcmVkIGluIHRoZQpwYWNrZXQgYWZ0ZXJ3YXJkcywgdG8gYXZvaWQgaGF2
aW5nIHRvIGRvIGFuIGV4cGVuc2l2ZSBsb29rdXAgb2YgdGhlCnN0YXRpb24gZnJvbSB0aGUgcGFj
a2V0IGRhdGEgb24gZXZlcnkgcGFja2V0LgoKVGhpcyBwYXRjaCBkb2VzICpub3QqIGluY2x1ZGUg
YW55IG1lY2hhbmlzbSB0byB3YWtlIGEgdGhyb3R0bGVkIFRYUSBhZ2FpbiwKb24gdGhlIGFzc3Vt
cHRpb24gdGhhdCB0aGlzIHdpbGwgaGFwcGVuIGFueXdheSBhcyBhIHNpZGUgZWZmZWN0IG9mIHdo
YXRldmVyCmZyZWVkIHRoZSBza2IgKG1vc3QgY29tbW9ubHkgYSBUWCBjb21wbGV0aW9uKS4KClNp
Z25lZC1vZmYtYnk6IFRva2UgSMO4aWxhbmQtSsO4cmdlbnNlbiA8dG9rZUByZWRoYXQuY29tPgot
LS0KIG5ldC9tYWM4MDIxMS9zdGF0dXMuYyB8ICAgMzggKysrKysrKysrKysrKysrKysrKysrKysr
KysrKysrKysrKysrKysKIG5ldC9tYWM4MDIxMS90eC5jICAgICB8ICAgMjEgKysrKysrKysrKysr
KysrKysrKysrCiAyIGZpbGVzIGNoYW5nZWQsIDU5IGluc2VydGlvbnMoKykKCmRpZmYgLS1naXQg
YS9uZXQvbWFjODAyMTEvc3RhdHVzLmMgYi9uZXQvbWFjODAyMTEvc3RhdHVzLmMKaW5kZXggYWI4
YmE1ODM1Y2EwLi45MDViNGFmZDQ1N2QgMTAwNjQ0Ci0tLSBhL25ldC9tYWM4MDIxMS9zdGF0dXMu
YworKysgYi9uZXQvbWFjODAyMTEvc3RhdHVzLmMKQEAgLTY3Niw2ICs2NzYsMzMgQEAgc3RhdGlj
IHZvaWQgaWVlZTgwMjExX3JlcG9ydF91c2VkX3NrYihzdHJ1Y3QgaWVlZTgwMjExX2xvY2FsICps
b2NhbCwKIAlpZiAoZHJvcHBlZCkKIAkJYWNrZWQgPSBmYWxzZTsKIAorCWlmIChpbmZvLT50eF90
aW1lX2VzdCkgeworCQlzdHJ1Y3QgaWVlZTgwMjExX3N1Yl9pZl9kYXRhICpzZGF0YTsKKwkJc3Ry
dWN0IHN0YV9pbmZvICpzdGEgPSBOVUxMOworCQl1OCAqcWMsIGFjOworCQlpbnQgdGlkOworCisJ
CXJjdV9yZWFkX2xvY2soKTsKKworCQlzZGF0YSA9IGllZWU4MDIxMV9zZGF0YV9mcm9tX3NrYihs
b2NhbCwgc2tiKTsKKwkJaWYgKHNkYXRhKQorCQkJc3RhID0gc3RhX2luZm9fZ2V0X2JzcyhzZGF0
YSwgc2tiX21hY19oZWFkZXIoc2tiKSk7CisKKwkJaWYgKGllZWU4MDIxMV9pc19kYXRhX3Fvcyho
ZHItPmZyYW1lX2NvbnRyb2wpKSB7CisJCQlxYyA9IGllZWU4MDIxMV9nZXRfcW9zX2N0bChoZHIp
OworCQkJdGlkID0gcWNbMF0gJiAweGY7CisJCQlhYyA9IGllZWU4MDIxMV9hY19mcm9tX3RpZCh0
aWQpOworCQl9IGVsc2UgeworCQkJYWMgPSBJRUVFODAyMTFfQUNfQkU7CisJCX0KKworCQlpZWVl
ODAyMTFfc3RhX3VwZGF0ZV9wZW5kaW5nX2FpcnRpbWUobG9jYWwsIHN0YSwgYWMsCisJCQkJCQkg
ICAgIGluZm8tPnR4X3RpbWVfZXN0IDw8IDIsCisJCQkJCQkgICAgIHRydWUpOworCQlyY3VfcmVh
ZF91bmxvY2soKTsKKworCX0KKwogCWlmIChpbmZvLT5mbGFncyAmIElFRUU4MDIxMV9UWF9JTlRG
TF9NTE1FX0NPTk5fVFgpIHsKIAkJc3RydWN0IGllZWU4MDIxMV9zdWJfaWZfZGF0YSAqc2RhdGE7
CiAKQEAgLTkzMCw2ICs5NTcsMTcgQEAgc3RhdGljIHZvaWQgX19pZWVlODAyMTFfdHhfc3RhdHVz
KHN0cnVjdCBpZWVlODAyMTFfaHcgKmh3LAogCQkJdGlkID0gcWNbMF0gJiAweGY7CiAJCX0KIAor
CQlpZiAoaW5mby0+dHhfdGltZV9lc3QpIHsKKwkJCS8qIERvIHRoaXMgaGVyZSB0byBhdm9pZCB0
aGUgZXhwZW5zaXZlIGxvb2t1cCBvZiB0aGUgc3RhCisJCQkgKiBpbiBpZWVlODAyMTFfcmVwb3J0
X3VzZWRfc2tiKCkuCisJCQkgKi8KKwkJCWllZWU4MDIxMV9zdGFfdXBkYXRlX3BlbmRpbmdfYWly
dGltZShsb2NhbCwgc3RhLAorCQkJCQkJCSAgICAgaWVlZTgwMjExX2FjX2Zyb21fdGlkKHRpZCks
CisJCQkJCQkJICAgICBpbmZvLT50eF90aW1lX2VzdCA8PCAyLAorCQkJCQkJCSAgICAgdHJ1ZSk7
CisJCQlpbmZvLT50eF90aW1lX2VzdCA9IDA7CisJCX0KKwogCQlpZiAoIWFja2VkICYmIGllZWU4
MDIxMV9pc19iYWNrX3JlcShmYykpIHsKIAkJCXUxNiBjb250cm9sOwogCmRpZmYgLS1naXQgYS9u
ZXQvbWFjODAyMTEvdHguYyBiL25ldC9tYWM4MDIxMS90eC5jCmluZGV4IDEyNjUzZDg3M2I4Yy4u
YjhmZjU2ZDFkNjYxIDEwMDY0NAotLS0gYS9uZXQvbWFjODAyMTEvdHguYworKysgYi9uZXQvbWFj
ODAyMTEvdHguYwpAQCAtMzU0Miw2ICszNTQyLDkgQEAgc3RydWN0IHNrX2J1ZmYgKmllZWU4MDIx
MV90eF9kZXF1ZXVlKHN0cnVjdCBpZWVlODAyMTFfaHcgKmh3LAogCiAJV0FSTl9PTl9PTkNFKHNv
ZnRpcnFfY291bnQoKSA9PSAwKTsKIAorCWlmICghaWVlZTgwMjExX3R4cV9haXJ0aW1lX2NoZWNr
KGh3LCB0eHEpKQorCQlyZXR1cm4gTlVMTDsKKwogYmVnaW46CiAJc3Bpbl9sb2NrX2JoKCZmcS0+
bG9jayk7CiAKQEAgLTM2NTIsNiArMzY1NSwyNCBAQCBzdHJ1Y3Qgc2tfYnVmZiAqaWVlZTgwMjEx
X3R4X2RlcXVldWUoc3RydWN0IGllZWU4MDIxMV9odyAqaHcsCiAJfQogCiAJSUVFRTgwMjExX1NL
Ql9DQihza2IpLT5jb250cm9sLnZpZiA9IHZpZjsKKworCWlmIChsb2NhbC0+YWlydGltZV9mbGFn
cyAmIEFJUlRJTUVfVVNFX0FRTCkgeworCQl1MzIgYWlydGltZTsKKworCQlhaXJ0aW1lID0gaWVl
ZTgwMjExX2NhbGNfZXhwZWN0ZWRfdHhfYWlydGltZShodywgdmlmLCB0eHEtPnN0YSwKKwkJCQkJ
CQkgICAgIHNrYi0+bGVuKTsKKwkJaWYgKGFpcnRpbWUpIHsKKwkJCS8qIFdlIG9ubHkgaGF2ZSAx
MCBiaXRzIGluIHR4X3RpbWVfZXN0LCBzbyBzdG9yZSBhaXJ0aW1lCisJCQkgKiBpbiBpbmNyZW1l
bnRzIG9mIDQgdXMgYW5kIGNsYW1wIHRoZSBtYXhpbXVtIHRvIDIqKjEyLTEKKwkJCSAqLworCQkJ
YWlydGltZSA9IG1pbl90KHUzMiwgYWlydGltZSwgNDA5NSkgJiB+M1U7CisJCQlpbmZvLT50eF90
aW1lX2VzdCA9IGFpcnRpbWUgPj4gMjsKKwkJCWllZWU4MDIxMV9zdGFfdXBkYXRlX3BlbmRpbmdf
YWlydGltZShsb2NhbCwgdHguc3RhLAorCQkJCQkJCSAgICAgdHhxLT5hYywgYWlydGltZSwKKwkJ
CQkJCQkgICAgIGZhbHNlKTsKKwkJfQorCX0KKwogCXJldHVybiBza2I7CiAKIG91dDoKCgpfX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwphdGgxMGsgbWFpbGlu
ZyBsaXN0CmF0aDEwa0BsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQu
b3JnL21haWxtYW4vbGlzdGluZm8vYXRoMTBrCg==

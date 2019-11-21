Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B2232104E4A
	for <lists+ath10k@lfdr.de>; Thu, 21 Nov 2019 09:46:39 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:Subject:To:From:
	Date:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=sIpbUmCBbbwmbbPj+tiPcUXKz3p4kQjNkNg668U3knQ=; b=Cz8kLS0sKx2Ov4jTC8isw+uLi
	1v22tW7EA4eIIZtiKYaBQ4NFB+ZnjgQ4v/d4ADAJWOfIFqhZOYZ/QWBnH5MIDLvu3pyYx0DKzH+Qg
	Pnu3ICBW/nfcw+0s9x/Y2lzVtz3vG/bG1a/9I2ubNggAoNAzsAHRgBjUE6tZI5coqunj87fQfHx+p
	bfMrpH5glSbMdqTS4AmqSSXudXIEtdyOHQoFqdMcZpuktd+rFCWh1m9l2yJohCNqDRwtuWJqO1Sbi
	0UQf/vIqdhepKC76v5IjbCyONTBDIFW4RUomqErFL+bpLWh+bv1BDKvdezarrLLWO9eBy1lNQQTxF
	5Thp3niGw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iXi6j-0000JL-NB; Thu, 21 Nov 2019 08:46:33 +0000
Received: from a27-186.smtp-out.us-west-2.amazonses.com ([54.240.27.186])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iXi6f-0000Ic-Rt
 for ath10k@lists.infradead.org; Thu, 21 Nov 2019 08:46:31 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
 s=zsmsymrwgfyinv5wlfyidntwsjeeldzt; d=codeaurora.org; t=1574325987;
 h=MIME-Version:Content-Type:Content-Transfer-Encoding:Date:From:To:Cc:Subject:In-Reply-To:References:Message-ID;
 bh=H2LwRHOGZFXT5Nqja6YXpjgeYSHAigz0iR5WesZP3fc=;
 b=XZDGllOb6U/+0apd1rmnNEg0DyjFseZbpM/mODoy/Z8FL/BhN9tJ+NDAi49xNh85
 D7A3QlBrZVNB1E8pUVfmp1qACUbGJB6vREr0K6bj5NoCPIs2IBwv0tBYAEGpKyz6szK
 XKAgO6zZQkc4qu+M1V5SUXPlb+tjraJbEJJIpi+U=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
 s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1574325987;
 h=MIME-Version:Content-Type:Content-Transfer-Encoding:Date:From:To:Cc:Subject:In-Reply-To:References:Message-ID:Feedback-ID;
 bh=H2LwRHOGZFXT5Nqja6YXpjgeYSHAigz0iR5WesZP3fc=;
 b=Q44baoURx5mKh/QYndAPm4Fon6SKNpmSefH9XhrT8lwZRqY/8spyzqaHSPDXJbOz
 C0eQ46DCfTXTW9aiuH3ZhW+lFyweEmpnOxrPUFPSYvxW4+FEM4fh1c2eYlqsOMVeW/y
 Tcch5uU21jvx9tE6vra+CeYFV7yrCC4pkq8DZcEw=
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
 aws-us-west-2-caf-mail-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.0 required=2.0 tests=ALL_TRUSTED,URIBL_BLOCKED
 autolearn=unavailable autolearn_force=no version=3.4.0
MIME-Version: 1.0
Date: Thu, 21 Nov 2019 08:46:27 +0000
From: govinds@codeaurora.org
To: Rob Herring <robh@kernel.org>
Subject: Re: [PATCH v2 1/2] dt: bindings: add dt entry flag to skip SCM call
 for msa region
In-Reply-To: <20191114191640.GA8426@bogus>
References: <20191111042508.12628-1-govinds@codeaurora.org>
 <20191111042508.12628-2-govinds@codeaurora.org>
 <20191114191640.GA8426@bogus>
Message-ID: <0101016e8d2426fc-31499903-e1a0-44b3-83eb-73ba4f4a8b4a-000000@us-west-2.amazonses.com>
X-Sender: govinds@codeaurora.org
User-Agent: Roundcube Webmail/1.3.9
X-SES-Outgoing: 2019.11.21-54.240.27.186
Feedback-ID: 1.us-west-2.CZuq2qbDmUIuT3qdvXlRHZZCpfZqZ4GtG9v3VKgRyF0=:AmazonSES
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191121_004629_928899_ACB1A53B 
X-CRM114-Status: UNSURE (   8.15  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [54.240.27.186 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: devicetree@vger.kernel.org, linux-wireless@vger.kernel.org,
 ath10k@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "ath10k" <ath10k-bounces@lists.infradead.org>
Errors-To: ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org

Hi Rob,

On 2019-11-15 00:46, Rob Herring wrote:
> On Mon, Nov 11, 2019 at 09:55:07AM +0530, Govind Singh wrote:
>> Add boolean context flag to disable SCM call for statically
>> mapped msa region.
> 
> Can't this be implied by the compatible string?
> 

same soc compatible will be used in older TZ vs new TZ.
Due to this reason I added this.

>> 
>> Signed-off-by: Govind Singh <govinds@codeaurora.org>
>> ---
>>  .../devicetree/bindings/net/wireless/qcom,ath10k.txt          | 4 
>> ++++
>>  1 file changed, 4 insertions(+)
>> 
>> diff --git 
>> a/Documentation/devicetree/bindings/net/wireless/qcom,ath10k.txt 
>> b/Documentation/devicetree/bindings/net/wireless/qcom,ath10k.txt
>> index 017128394a3e..7ba22918bab7 100644
>> --- a/Documentation/devicetree/bindings/net/wireless/qcom,ath10k.txt
>> +++ b/Documentation/devicetree/bindings/net/wireless/qcom,ath10k.txt
>> @@ -88,6 +88,9 @@ Optional properties:
>>  		    of the host capability QMI request
>>  - qcom,xo-cal-data: xo cal offset to be configured in xo trim 
>> register.
>> 
>> +- qcom,msa_fixed_perm: Boolean context flag to disable SCM call for 
>> statically
>> +		       mapped msa region.
>> +
> 
> s/_/-/
> 
>>  Example (to supply PCI based wifi block details):
>> 
>>  In this example, the node is defined as child node of the PCI 
>> controller.
>> @@ -185,4 +188,5 @@ wifi@18000000 {
>>  		vdd-3.3-ch0-supply = <&vreg_l25a_3p3>;
>>  		memory-region = <&wifi_msa_mem>;
>>  		iommus = <&apps_smmu 0x0040 0x1>;
>> +		qcom,msa_fixed_perm;
>>  };
>> --
>> 2.22.0
>> 

BR,
Govind

_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k

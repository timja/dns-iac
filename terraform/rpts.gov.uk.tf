module "rpts_gov_uk" {
  source = "./modules/route53"

  domain      = "rpts.gov.uk"
  description = ""

  records = [
    {
      name = "rpts.gov.uk."
      type = "A"
      ttl  = 600
      records = [
        "35.177.119.113"
      ]
    },
    {
      name = "rpts.gov.uk."
      type = "MX"
      ttl  = 1800
      records = [
        "10 relay1.padlondon.co.uk.",
        "20 relay2.padlondon.co.uk."
      ]
    },
    {
      name = "rpts.gov.uk."
      type = "NS"
      ttl  = 172800
      records = [
        "ns-1566.awsdns-03.co.uk.",
        "ns-865.awsdns-44.net.",
        "ns-221.awsdns-27.com.",
        "ns-1067.awsdns-05.org."
      ]
    },
    {
      name = "rpts.gov.uk."
      type = "TXT"
      ttl  = 300
      records = [
        "jss4dz6hj33k02rtjh66wqy4wccc37pb"
      ]
    },
    {
      name = "_dmarc.rpts.gov.uk."
      type = "TXT"
      ttl  = 300
      records = [
        "v=DMARC1;p=none;sp=none;rua=mailto:dmarc-rua@dmarc.service.gov.uk"
      ]
    },
    {
      name = "_smtp._tls.rpts.gov.uk."
      type = "TXT"
      ttl  = 300
      records = [
        "v=TLSRPTv1;rua=mailto:tls-rua@mailcheck.service.ncsc.gov.uk"
      ]
    },
    {
      name = "dev.rpts.gov.uk."
      type = "A"
      ttl  = 1800
      records = [
        "193.114.80.13"
      ]
    },
    {
      name = "ftp.rpts.gov.uk."
      type = "CNAME"
      ttl  = 600
      records = [
        "prod.rpts.clients.wtg.co.uk."
      ]
    },
    {
      name = "test.rpts.gov.uk."
      type = "A"
      ttl  = 1800
      records = [
        "193.114.80.13"
      ]
    },
    {
      name = "uat.rpts.gov.uk."
      type = "A"
      ttl  = 1800
      records = [
        "212.28.12.201"
      ]
    },
    {
      name = "www.rpts.gov.uk."
      type = "CNAME"
      ttl  = 1800
      records = [
        "prod.rpts.clients.wtg.co.uk."
      ]
    }
  ]

  tags = {
    component = "None"
  }
}

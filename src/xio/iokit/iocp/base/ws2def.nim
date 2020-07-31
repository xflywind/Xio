import crt/rt
import ws2types, winnt


type
  AddrInfoA* = object
    aiFlags*: cint
    aiFamily*: cint
    aiSocktype*: cint
    aiProtocol*: cint
    aiAddrlen*: size_t
    aiCanonname*: cstring
    aiAddr*: ptr SockAddr
    aiNext*: ptr AddrInfoA

  PAddrInfoA* = ptr AddrInfoA

  AddrInfoW* = object
    aiFlags*: cint
    aiFamily*: cint
    aiSocktype*: cint
    aiProtocol*: cint
    aiAddrlen*: size_t
    aiCanonname*: PWSTR
    aiAddr*: ptr SockAddr
    aiNext*: ptr AddrInfoA

  PAddrInfoW* = ptr AddrInfoW


const
  AI_CANONNAME* = 0x00000002
  AI_NUMERICHOST* = 0x00000004
  AI_NUMERICSERV* = 0x00000008
  AI_DNS_ONLY* = 0x00000010
  AI_ALL* = 0x00000100
  AI_ADDRCONFIG* = 0x00000400
  AI_V4MAPPED* = 0x00000800
  AI_NON_AUTHORITATIVE* = 0x00004000
  AI_SECURE* = 0x00008000
  AI_RETURN_PREFERRED_NAMES* = 0x00010000
  AI_FQDN* = 0x00020000
  AI_FILESERVER* = 0x00040000
  AI_DISABLE_IDN_ENCODING* = 0x00080000
  AI_EXTENDED* = 0x80000000
  AI_RESOLUTION_HANDLE* = 0x40000000

  IPPROTO_IP* = 0
  IPPROTO_HOPOPTS* = 0
  IPPROTO_ICMP* = 1
  IPPROTO_IGMP* = 2
  IPPROTO_GGP* = 3
  IPPROTO_IPV4* = 4
  IPPROTO_TCP* = 6
  IPPROTO_PUP* = 12
  IPPROTO_UDP* = 17
  IPPROTO_IDP* = 22
  IPPROTO_IPV6* = 41
  IPPROTO_ROUTING* = 43
  IPPROTO_FRAGMENT* = 44
  IPPROTO_ESP* = 50
  IPPROTO_AH* = 51
  IPPROTO_ICMPV6* = 58
  IPPROTO_NONE* = 59
  IPPROTO_DSTOPTS* = 60
  IPPROTO_ND* = 77
  IPPROTO_ICLFXBM* = 78
  IPPROTO_RAW* = 255
  IPPROTO_MAX* = 256
  IPPORT_ECHO* = 7
  IPPORT_DISCARD* = 9
  IPPORT_SYSTAT* = 11
  IPPORT_DAYTIME* = 13
  IPPORT_NETSTAT* = 15
  IPPORT_FTP* = 21
  IPPORT_TELNET* = 23
  IPPORT_SMTP* = 25
  IPPORT_TIMESERVER* = 37
  IPPORT_NAMESERVER* = 42
  IPPORT_WHOIS* = 43
  IPPORT_MTP* = 57
  IPPORT_TFTP* = 69
  IPPORT_RJE* = 77
  IPPORT_FINGER* = 79
  IPPORT_TTYLINK* = 87
  IPPORT_SUPDUP* = 95
  IPPORT_EXECSERVER* = 512
  IPPORT_LOGINSERVER* = 513
  IPPORT_CMDSERVER* = 514
  IPPORT_EFSSERVER* = 520
  IPPORT_BIFFUDP* = 512
  IPPORT_WHOSERVER* = 513
  IPPORT_ROUTESERVER* = 520
  IPPORT_RESERVED* = 1024
  IMPLINK_IP* = 155
  IMPLINK_LOWEXPER* = 156
  IMPLINK_HIGHEXPER* = 158


 
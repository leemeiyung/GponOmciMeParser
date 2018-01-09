package GponMeJson;
require Exporter;

our @ISA =qw(Exporter);
our @EXPORT =qw(getGponMeJson getGponMeArray);

use JSON;

 
$gponMeJsonStr = '[
	{"meId":1,
	"meName":"ONT",
	"meAttrs":[]
	},
	{"meId":2,
	"meName":"ONU data",
	"meAttrs":[
		{"idx":1,"name":"MIB data sync","size":1,"acl":"ACL_RW","type":"byte"}
		]
	},
	{"meId":3,
	"meName":"PON IF line cardholder",
	"meAttrs":[]
	},
	{"meId":4,
	"meName":"PON IF line card",
	"meAttrs":[]
	},
	{"meId":5,
	"meName":"Cardholder",
	"meAttrs":[
		{"idx":1,"name":"Actual plug-in unit type","size":1,"acl":"ACL_RO","type":"byte"},
		{"idx":2,"name":"Expected plug-in unit type","size":1,"acl":"ACL_RW","type":"byte"},
		{"idx":3,"name":"Expected port count","size":1,"acl":"ACL_RW","type":"byte"},
		{"idx":4,"name":"Expected equipment ID","size":20,"acl":"ACL_RW","type":"string"},
		{"idx":5,"name":"Actual  equipment ID","size":20,"acl":"ACL_RO","type":"string"},
		{"idx":6,"name":"Protection profile pointe","size":1,"acl":"ACL_RO","type":"byte"},
		{"idx":7,"name":"Invoke protection switch","size":1,"acl":"ACL_RW","type":"byte"},
		{"idx":8,"name":"ARC","size":1,"acl":"ACL_RW","type":"byte"},
		{"idx":9,"name":"ARC interval","size":1,"acl":"ACL_RW","type":"byte"}
		]
	},
	{"meId":6,
	"meName":"Circuit pack",
	"meAttrs":[
		{"idx":1,"name":"Type","size":1,"acl":"ACL_SC_R","type":"byte"},
		{"idx":2,"name":"Number of ports","size":1,"acl":"ACL_RO","type":"byte"},
		{"idx":3,"name":"Serial number","size":8,"acl":"ACL_RO","type":"sn"},
		{"idx":4,"name":"Version","size":14,"acl":"ACL_RO","type":"string"},
		{"idx":5,"name":"Vendor ID","size":4,"acl":"ACL_RO","type":"int"},
		{"idx":6,"name":"Administrative state","size":1,"acl":"ACL_RW","type":"byte"},
		{"idx":7,"name":"Operational state","size":1,"acl":"ACL_RO","type":"byte"},
		{"idx":8,"name":"Bridged or IP ind","size":1,"acl":"ACL_RW","type":"byte"},
		{"idx":9,"name":"Equipment ID","size":20,"acl":"ACL_RO","type":"string"},
		{"idx":10,"name":"Card configuration","size":1,"acl":"ACL_SC_RW","type":"byte"},
		{"idx":11,"name":"Total T-CONT buffer number","size":1,"acl":"ACL_RO","type":"byte"},
		{"idx":12,"name":"Total priority queue number","size":1,"acl":"ACL_RO","type":"byte"},
		{"idx":13,"name":"Total traffic scheduler number","size":1,"acl":"ACL_RO","type":"byte"},
		{"idx":14,"name":"Power shed override","size":4,"acl":"ACL_RW","type":"int"}
		]
	},
	{"meId":7,
	"meName":"Software image",
	"meAttrs":[
		{"idx":1,"name":"Version","size":14,"acl":"ACL_RO","type":"string"},
		{"idx":2,"name":"Is committed","size":1,"acl":"ACL_RO","type":"byte"},
		{"idx":3,"name":"Is active","size":1,"acl":"ACL_RO","type":"byte"},
		{"idx":4,"name":"Is valid","size":1,"acl":"ACL_RO","type":"byte"},
		{"idx":5,"name":"Product code","size":25,"acl":"ACL_RO","type":"string"},
		{"idx":6,"name":"Image hash","size":16,"acl":"ACL_RO","type":"octstring"}
		]
	},
	{"meId":8,
	"meName":"UNI",
	"meAttrs":[]
	},
	{"meId":9,
	"meName":"TC Adapter",
	"meAttrs":[]
	},
	{"meId":10,
	"meName":"Physical path termination point ATM UNI",
	"meAttrs":[]
	},
	{"meId":11,
	"meName":"Physical path termination point Ethernet UNI",
	"meAttrs":[
		{"idx":1,"name":"Expected type","size":1,"acl":"ACL_RW","type":"byte"},
		{"idx":2,"name":"Sensed type","size":1,"acl":"ACL_RO","type":"byte"},
		{"idx":3,"name":"Auto detection configuration","size":1,"acl":"ACL_RW","type":"byte"},
		{"idx":4,"name":"Ethernet loopback configuration","size":1,"acl":"ACL_RW","type":"byte"},
		{"idx":5,"name":"Administrative state","size":1,"acl":"ACL_RW","type":"byte"},
		{"idx":6,"name":"Operational state","size":1,"acl":"ACL_RO","type":"byte"},
		{"idx":7,"name":"Configuration ind","size":1,"acl":"ACL_RO","type":"byte"},
		{"idx":8,"name":"Max frame size","size":2,"acl":"ACL_RW","type":"short"},
		{"idx":9,"name":"DTE or DCE ind","size":1,"acl":"ACL_RW","type":"byte"},
		{"idx":10,"name":"Pause time","size":2,"acl":"ACL_RW","type":"short"},
		{"idx":11,"name":"Bridged or IP ind","size":1,"acl":"ACL_RW","type":"byte"},
		{"idx":12,"name":"ARC","size":1,"acl":"ACL_RW","type":"byte"},
		{"idx":13,"name":"ARC interval","size":1,"acl":"ACL_RW","type":"byte"},
		{"idx":14,"name":"PPPoE filter","size":1,"acl":"ACL_RW","type":"byte"},
		{"idx":14,"name":"Power control","size":1,"acl":"ACL_RW","type":"byte"}
		]
	},
	{"meId":12,
	"meName":"Physical path termination point CES UNI",
	"meAttrs":[]
	},
	{"meId":13,
	"meName":"Logical Nx64 kbps sub-port connection termination point",
	"meAttrs":[]
	},
	{"meId":14,
	"meName":"Interworking VCC termination point",
	"meAttrs":[]
	},
	{"meId":15,
	"meName":"AAL1 profile",
	"meAttrs":[]
	},
	{"meId":16,
	"meName":"AAL5 profile",
	"meAttrs":[]
	},
	{"meId":17,
	"meName":"AAL1 protocol monitoring history data",
	"meAttrs":[]
	},
	{"meId":18,
	"meName":"AAL5 performance monitoring history data",
	"meAttrs":[]
	},
	{"meId":19,
	"meName":"AAL2 profile",
	"meAttrs":[]
	},
	{"meId":20,
	"meName":"(Intentionally left blank)",
	"meAttrs":[]
	},
	{"meId":21,
	"meName":"CES service profile",
	"meAttrs":[]
	},
	{"meId":22,
	"meName":"(Reserved)",
	"meAttrs":[]
	},
	{"meId":23,
	"meName":"CES physical interface performance monitoring history data",
	"meAttrs":[]
	},
	{"meId":24,
	"meName":"Ethernet performance monitoring history data",
	"meAttrs":[]
	},
	{"meId":25,
	"meName":"VP network CTP",
	"meAttrs":[]
	},
	{"meId":26,
	"meName":"ATM VP cross-connection",
	"meAttrs":[]
	},
	{"meId":27,
	"meName":"Priority queue",
	"meAttrs":[]
	},
	{"meId":28,
	"meName":"DBR CBR traffic descriptor",
	"meAttrs":[]
	},
	{"meId":29,
	"meName":"UBR traffic descriptor",
	"meAttrs":[]
	},
	{"meId":30,
	"meName":"SBR1 VBR1 traffic descriptor",
	"meAttrs":[]
	},
	{"meId":31,
	"meName":"SBR2 VBR2 traffic descriptor",
	"meAttrs":[]
	},
	{"meId":32,
	"meName":"SBR3 VBR3 traffic descriptor",
	"meAttrs":[]
	},
	{"meId":33,
	"meName":"ABR traffic descriptor",
	"meAttrs":[]
	},
	{"meId":34,
	"meName":"GFR traffic descriptor",
	"meAttrs":[]
	},
	{"meId":35,
	"meName":"ABT DT IT traffic descriptor",
	"meAttrs":[]
	},
	{"meId":36,
	"meName":"UPC disagreement monitoring history data",
	"meAttrs":[]
	},
	{"meId":37,
	"meName":"(Intentionally left blank)",
	"meAttrs":[]
	},
	{"meId":38,
	"meName":"ANI (B-PON)",
	"meAttrs":[]
	},
	{"meId":39,
	"meName":"PON TC adapter",
	"meAttrs":[]
	},
	{"meId":40,
	"meName":"PON physical path termination point",
	"meAttrs":[]
	},
	{"meId":41,
	"meName":"TC adapter protocol monitoring history data",
	"meAttrs":[]
	},
	{"meId":42,
	"meName":"Threshold data",
	"meAttrs":[]
	},
	{"meId":43,
	"meName":"Operator specific",
	"meAttrs":[]
	},
	{"meId":44,
	"meName":"Vendor specific",
	"meAttrs":[]
	},
	{"meId":45,
	"meName":"MAC bridge service profile",
	"meAttrs":[
		{"idx":1,"name":"Spanning tree ind","size":1,"acl":"ACL_SC_RW","type":"byte"},
		{"idx":2,"name":"Learning ind","size":1,"acl":"ACL_SC_RW","type":"byte"},
		{"idx":3,"name":"Port bridging ind","size":1,"acl":"ACL_SC_RW","type":"byte"},
		{"idx":4,"name":"Priority","size":2,"acl":"ACL_SC_RW","type":"short"},
		{"idx":5,"name":"Max age","size":2,"acl":"ACL_SC_RW","type":"hex"},
		{"idx":6,"name":"Hello time","size":2,"acl":"ACL_SC_RW","type":"hex"},
		{"idx":7,"name":"Forward delay","size":2,"acl":"ACL_SC_RW","type":"hex"},
		{"idx":8,"name":"Unknown MAC address discard","size":1,"acl":"ACL_SC_RW","type":"byte"},
		{"idx":9,"name":"MAC learning depth","size":1,"acl":"ACL_SC_RW","type":"byte"},
		{"idx":10,"name":"Dynamic filtering ageing time","size":4,"acl":"ACL_SC_RW","type":"int"}
		]
	},
	{"meId":46,
	"meName":"MAC bridge configuration data",
	"meAttrs":[
		{"idx":1,"name":"Bridge MAC address","size":6,"acl":"ACL_RO","type":"macaddr"},
		{"idx":2,"name":"Bridge priority","size":2,"acl":"ACL_RO","type":"short"},
		{"idx":3,"name":"Designated root","size":8,"acl":"ACL_RO","type":"octstring"},
		{"idx":4,"name":"Root path cost","size":4,"acl":"ACL_RO","type":"int"},
		{"idx":5,"name":"Bridge port count","size":1,"acl":"ACL_RO","type":"byte"},
		{"idx":6,"name":"Root port num","size":2,"acl":"ACL_RO","type":"short"},
		{"idx":7,"name":"Hello time","size":2,"acl":"ACL_RO","type":"hex"},
		{"idx":8,"name":"Forward delay","size":2,"acl":"ACL_RO","type":"hex"}
		]
	},
	{"meId":47,
	"meName":"MAC bridge port configuration data",
	"meAttrs":[
		{"idx":1,"name":"Bridge ID pointer","size":2,"acl":"ACL_SC_RW","type":"pointer"},
		{"idx":2,"name":"Port num","size":1,"acl":"ACL_SC_RW","type":"byte"},
		{"idx":3,"name":"TP type","size":1,"acl":"ACL_SC_RW","type":"byte"},
		{"idx":4,"name":"TP pointer","size":2,"acl":"ACL_SC_RW","type":"pointer"},
		{"idx":5,"name":"Port priority","size":2,"acl":"ACL_SC_RW","type":"short"},
		{"idx":6,"name":"Port path cost","size":2,"acl":"ACL_SC_RW","type":"short"},
		{"idx":7,"name":"Port spanning tree ind","size":1,"acl":"ACL_SC_RW","type":"byte"},
		{"idx":8,"name":"Deprecated 1","size":1,"acl":"ACL_SC_RW","type":"byte"},
		{"idx":9,"name":"Deprecated 2","size":1,"acl":"ACL_SC_RW","type":"byte"},
		{"idx":10,"name":"Port MAC address","size":6,"acl":"ACL_RO","type":"macaddr"},
		{"idx":11,"name":"Outbound TD pointer","size":2,"acl":"ACL_RW","type":"pointer"},
		{"idx":12,"name":"Inbound TD pointer","size":2,"acl":"ACL_RW","type":"pointer"},
		{"idx":13,"name":"MAC learning depth","size":1,"acl":"ACL_SC_RW","type":"byte"}
		]
	},
	{"meId":48,
	"meName":"MAC bridge port designation data",
	"meAttrs":[
		{"idx":1,"name":"Designated bridge root cost port","size":24,"acl":"ACL_RO","type":"octstring"},
		{"idx":2,"name":"Port state","size":1,"acl":"ACL_RO","type":"byte"}
		]
	},
	{"meId":49,
	"meName":"MAC bridge port filter table data",
	"meAttrs":[
		{"idx":1,"name":"MAC filter table","size":0,"acl":"ACL_RW","type":"table","entrylen":8}
		]
	},
	{"meId":50,
	"meName":"MAC bridge port bridge table data",
	"meAttrs":[
		{"idx":1,"name":"Bridge table","size":0,"acl":"ACL_RO","type":"table","entrylen":8}
		]
	},
	{"meId":51,
	"meName":"MAC bridge performance monitoring history data",
	"meAttrs":[]
	},
	{"meId":52,
	"meName":"MAC bridge port performance monitoring history data",
	"meAttrs":[]
	},
	{"meId":53,
	"meName":"Physical path termination point POTS UNI",
	"meAttrs":[
		{"idx":1,"name":"Administrative state","size":1,"acl":"ACL_RW","type":"byte"},
		{"idx":2,"name":"Deprecated","size":2,"acl":"ACL_RW","type":"short"},
		{"idx":3,"name":"ARC","size":1,"acl":"ACL_RW","type":"byte"},
		{"idx":4,"name":"ARC interval","size":1,"acl":"ACL_RW","type":"byte"},
		{"idx":5,"name":"Impedance","size":1,"acl":"ACL_RW","type":"byte"},
		{"idx":6,"name":"Transmission path","size":1,"acl":"ACL_RW","type":"byte"},
		{"idx":7,"name":"Rx gain","size":1,"acl":"ACL_RW","type":"byte"},
		{"idx":8,"name":"Tx gain","size":1,"acl":"ACL_RW","type":"byte"},
		{"idx":9,"name":"Operational state","size":1,"acl":"ACL_RO","type":"byte"},
		{"idx":10,"name":"Hook state","size":1,"acl":"ACL_RO","type":"byte"},
		{"idx":11,"name":"POTS holdover time","size":2,"acl":"ACL_RW","type":"short"},
		{"idx":12,"name":"Nominal feed voltage","size":1,"acl":"ACL_RW","type":"byte"}
		]
	},
	{"meId":54,
	"meName":"Voice CTP",
	"meAttrs":[]
	},
	{"meId":55,
	"meName":"Voice PM history data",
	"meAttrs":[]
	},
	{"meId":56,
	"meName":"AAL2 PVC profile",
	"meAttrs":[]
	},
	{"meId":57,
	"meName":"AAL2 CPS protocol monitoring history data",
	"meAttrs":[]
	},
	{"meId":58,
	"meName":"Voice service profile",
	"meAttrs":[]
	},
	{"meId":59,
	"meName":"LES service profile",
	"meAttrs":[]
	},
	{"meId":60,
	"meName":"AAL2 SSCS parameter profile1",
	"meAttrs":[]
	},
	{"meId":61,
	"meName":"AAL2 SSCS parameter profile2",
	"meAttrs":[]
	},
	{"meId":62,
	"meName":"VP performance monitoring history data",
	"meAttrs":[]
	},
	{"meId":63,
	"meName":"Traffic scheduler",
	"meAttrs":[]
	},
	{"meId":64,
	"meName":"T-CONT buffer",
	"meAttrs":[]
	},
	{"meId":65,
	"meName":"UBRplus traffic descriptor",
	"meAttrs":[]
	},
	{"meId":66,
	"meName":"AAL2 SSCS protocol monitoring history data",
	"meAttrs":[]
	},
	{"meId":67,
	"meName":"IP port configuration data",
	"meAttrs":[]
	},
	{"meId":68,
	"meName":"IP router service profile",
	"meAttrs":[]
	},
	{"meId":69,
	"meName":"IP router configuration data",
	"meAttrs":[]
	},
	{"meId":70,
	"meName":"IP router performance monitoring history data 1",
	"meAttrs":[]
	},
	{"meId":71,
	"meName":"IP router performance monitoring history data 2",
	"meAttrs":[]
	},
	{"meId":72,
	"meName":"ICMP performance monitoring history data 1",
	"meAttrs":[]
	},
	{"meId":73,
	"meName":"ICMP performance monitoring history data 2",
	"meAttrs":[]
	},
	{"meId":74,
	"meName":"IP route table",
	"meAttrs":[]
	},
	{"meId":75,
	"meName":"IP static routes",
	"meAttrs":[]
	},
	{"meId":76,
	"meName":"ARP service profile",
	"meAttrs":[]
	},
	{"meId":77,
	"meName":"ARP configuration data",
	"meAttrs":[]
	},
	{"meId":78,
	"meName":"VLAN tagging operation configuration data",
	"meAttrs":[]
	},
	{"meId":79,
	"meName":"MAC bridge port filter pre-assign table",
	"meAttrs":[
		{"idx":1,"name":"IPv4 multicast filtering","size":1,"acl":"ACL_RW","type":"byte"},
		{"idx":2,"name":"IPv6 multicast filtering","size":1,"acl":"ACL_RW","type":"byte"},
		{"idx":3,"name":"IPv4 broadcast filtering","size":1,"acl":"ACL_RW","type":"byte"},
		{"idx":4,"name":"RARP filtering","size":1,"acl":"ACL_RW","type":"byte"},
		{"idx":5,"name":"IPX filtering","size":1,"acl":"ACL_RW","type":"byte"},
		{"idx":6,"name":"NetBEUI filtering","size":1,"acl":"ACL_RW","type":"byte"},
		{"idx":7,"name":"AppleTalk filtering","size":1,"acl":"ACL_RW","type":"byte"},
		{"idx":8,"name":"Bridge management information filtering","size":1,"acl":"ACL_RW","type":"byte"},
		{"idx":9,"name":"ARP filtering","size":1,"acl":"ACL_RW","type":"byte"},
		{"idx":10,"name":"PPPoE broadcast filtering","size":1,"acl":"ACL_RW","type":"byte"}
		]
	},
	{"meId":80,
	"meName":"Physical path termination point ISDN UNI",
	"meAttrs":[]
	},
	{"meId":81,
	"meName":"(Reserved)",
	"meAttrs":[]
	},
	{"meId":82,
	"meName":"Physical path termination point video UNI",
	"meAttrs":[]
	},
	{"meId":83,
	"meName":"Physical path termination point LCT UNI",
	"meAttrs":[]
	},
	{"meId":84,
	"meName":"VLAN tagging filter data",
	"meAttrs":[
		{"idx":1,"name":"VLAN filter list","size":24,"acl":"ACL_SC_RW","type":"octstring"},
		{"idx":2,"name":"Forward operation","size":1,"acl":"ACL_SC_RW","type":"byte"},
		{"idx":3,"name":"Number of entries","size":1,"acl":"ACL_SC_RW","type":"byte"}
		]
	},
	{"meId":85,
	"meName":"ONU",
	"meAttrs":[]
	},
	{"meId":86,
	"meName":"ATM VC cross-connectio",
	"meAttrs":[]
	},
	{"meId":87,
	"meName":"VC network CTP",
	"meAttrs":[]
	},
	{"meId":88,
	"meName":"VC PM history data",
	"meAttrs":[]
	},
	{"meId":89,
	"meName":"Ethernet performance monitoring history data 2",
	"meAttrs":[]
	},
	{"meId":90,
	"meName":"Physical path termination point video ANI",
	"meAttrs":[]
	},
	{"meId":91,
	"meName":"Physical path termination point 802.11 UNI",
	"meAttrs":[]
	},
	{"meId":92,
	"meName":"802.11 station management data 1",
	"meAttrs":[]
	},
	{"meId":93,
	"meName":"802.11 station management data 2",
	"meAttrs":[]
	},
	{"meId":94,
	"meName":"802.11 general purpose object",
	"meAttrs":[]
	},
	{"meId":95,
	"meName":"802.11 MAC and PHY operation and antenna data",
	"meAttrs":[]
	},
	{"meId":96,
	"meName":"802.11 performance monitoring history data",
	"meAttrs":[]
	},
	{"meId":97,
	"meName":"802.11 PHY FHSS DSSS IR tables",
	"meAttrs":[]
	},
	{"meId":98,
	"meName":"Physical path termination point xDSL UNI part 1",
	"meAttrs":[]
	},
	{"meId":99,
	"meName":"Physical path termination point xDSL UNI part 2",
	"meAttrs":[]
	},
	{"meId":100,
	"meName":"xDSL line inventory and status data part 1",
	"meAttrs":[]
	},
	{"meId":101,
	"meName":"xDSL line inventory and status data part 2",
	"meAttrs":[]
	},
	{"meId":102,
	"meName":"xDSL channel downstream status data",
	"meAttrs":[]
	},
	{"meId":103,
	"meName":"xDSL channel upstream status data",
	"meAttrs":[]
	},
	{"meId":104,
	"meName":"xDSL line configuration profile part 1",
	"meAttrs":[]
	},
	{"meId":105,
	"meName":"xDSL line configuration profile part 2",
	"meAttrs":[]
	},
	{"meId":106,
	"meName":"xDSL line configuration profile part 3",
	"meAttrs":[]
	},
	{"meId":107,
	"meName":"xDSL channel configuration profile",
	"meAttrs":[]
	},
	{"meId":108,
	"meName":"xDSL subcarrier masking downstream profile",
	"meAttrs":[]
	},
	{"meId":109,
	"meName":"xDSL subcarrier masking upstream profile",
	"meAttrs":[]
	},
	{"meId":110,
	"meName":"xDSL PSD mask profile",
	"meAttrs":[]
	},
	{"meId":111,
	"meName":"xDSL downstream RFI bands profile",
	"meAttrs":[]
	},
	{"meId":112,
	"meName":"xDSL xTU-C performance monitoring history data",
	"meAttrs":[]
	},
	{"meId":113,
	"meName":"xDSL xTU-R performance monitoring history data",
	"meAttrs":[]
	},
	{"meId":114,
	"meName":"xDSL xTU-C channel performance monitoring history data",
	"meAttrs":[]
	},
	{"meId":115,
	"meName":"xDSL xTU-R channel performance monitoring history data",
	"meAttrs":[]
	},
	{"meId":116,
	"meName":"TC adaptor performance monitoring history data xDSL",
	"meAttrs":[]
	},
	{"meId":117,
	"meName":"Physical path termination point VDSL UNI ",
	"meAttrs":[]
	},
	{"meId":118,
	"meName":"VDSL VTU-O physical data",
	"meAttrs":[]
	},
	{"meId":119,
	"meName":"VDSL VTU-R physical data",
	"meAttrs":[]
	},
	{"meId":120,
	"meName":"VDSL channel data",
	"meAttrs":[]
	},
	{"meId":121,
	"meName":"VDSL line configuration profile",
	"meAttrs":[]
	},
	{"meId":122,
	"meName":"VDSL channel configuration profile",
	"meAttrs":[]
	},
	{"meId":123,
	"meName":"VDSL band plan configuration profile",
	"meAttrs":[]
	},
	{"meId":124,
	"meName":"VDSL VTU-O physical interface monitoring history data",
	"meAttrs":[]
	},
	{"meId":125,
	"meName":"VDSL VTU-R physical interface monitoring history data",
	"meAttrs":[]
	},
	{"meId":126,
	"meName":"VDSL VTU-O channel performance monitoring history data",
	"meAttrs":[]
	},
	{"meId":127,
	"meName":"VDSL VTU-R channel performance monitoring history data",
	"meAttrs":[]
	},
	{"meId":128,
	"meName":"Video return path service profile",
	"meAttrs":[]
	},
	{"meId":129,
	"meName":"Video return path performance monitoring history data",
	"meAttrs":[]
	},
	{"meId":130,
	"meName":"IEEE 802.1p mapper service profile",
	"meAttrs":[]
	},
	{"meId":131,
	"meName":"OLT-G",
	"meAttrs":[
		{"idx":1,"name":"OLT vendor ID","size":4,"acl":"ACL_RW","type":"string"},
		{"idx":2,"name":"Equipment ID","size":20,"acl":"ACL_RW","type":"string"},
		{"idx":3,"name":"Version","size":14,"acl":"ACL_RW","type":"string"},
		{"idx":4,"name":"Time of day information","size":14,"acl":"ACL_RW","type":"octstring"}
		]
	},
	{"meId":132,
	"meName":"Multicast interworking VCC termination point",
	"meAttrs":[]
	},
	{"meId":133,
	"meName":"ONU power shedding",
	"meAttrs":[]
	},
	{"meId":134,
	"meName":"IP host config data",
	"meAttrs":[
		{"idx":1,"name":"IP options","size":1,"acl":"ACL_RW","type":"byte"},
		{"idx":2,"name":"MAC address","size":6,"acl":"ACL_RO","type":"macaddr"},
		{"idx":3,"name":"Onu identifier","size":25,"acl":"ACL_RW","type":"string"},
		{"idx":4,"name":"IP address","size":4,"acl":"ACL_RW","type":"ipaddr"},
		{"idx":5,"name":"Mask","size":4,"acl":"ACL_RW","type":"ipaddr"},
		{"idx":6,"name":"Gateway","size":4,"acl":"ACL_RW","type":"ipaddr"},
		{"idx":7,"name":"Primary DNS","size":4,"acl":"ACL_RW","type":"ipaddr"},
		{"idx":8,"name":"Secondary DNS","size":4,"acl":"ACL_RW","type":"ipaddr"},
		{"idx":9,"name":"Current address","size":4,"acl":"ACL_RO","type":"ipaddr"},
		{"idx":10,"name":"Current mask","size":4,"acl":"ACL_RO","type":"ipaddr"},
		{"idx":11,"name":"Current gateway","size":4,"acl":"ACL_RO","type":"ipaddr"},
		{"idx":12,"name":"Current primary DNS","size":4,"acl":"ACL_RO","type":"ipaddr"},
		{"idx":13,"name":"Current secondary DNS","size":4,"acl":"ACL_RO","type":"ipaddr"},
		{"idx":14,"name":"Domain name","size":25,"acl":"ACL_RO","type":"string"},
		{"idx":15,"name":"Host name","size":25,"acl":"ACL_RO","type":"string"},
		{"idx":16,"name":"Relay agent options","size":2,"acl":"ACL_RW","type":"pointer"}
		]
	},
	{"meId":135,
	"meName":"IP host performance monitoring history data",
	"meAttrs":[]
	},
	{"meId":136,
	"meName":"TCP UDP config data",
	"meAttrs":[]
	},
	{"meId":137,
	"meName":"Network address",
	"meAttrs":[]
	},
	{"meId":138,
	"meName":"VoIP config data",
	"meAttrs":[]
	},
	{"meId":139,
	"meName":"VoIP voice CTP",
	"meAttrs":[]
	},
	{"meId":140,
	"meName":"Call control performance monitoring history data",
	"meAttrs":[]
	},
	{"meId":141,
	"meName":"VoIP line status",
	"meAttrs":[
		{"idx":1,"name":"Voip codec used","size":2,"acl":"ACL_RO","type":"short"},
		{"idx":2,"name":"Voip voice server status","size":1,"acl":"ACL_RO","type":"byte"},
		{"idx":3,"name":"Voip port session type","size":1,"acl":"ACL_RO","type":"byte"},
		{"idx":4,"name":"Voip call 1 packet period","size":2,"acl":"ACL_RO","type":"short"},
		{"idx":5,"name":"Voip call 2 packet period","size":2,"acl":"ACL_RO","type":"short"},
		{"idx":6,"name":"Voip call 1 dest addr","size":25,"acl":"ACL_RO","type":"string"},
		{"idx":7,"name":"Voip call 2 dest addr","size":25,"acl":"ACL_RO","type":"string"},
		{"idx":8,"name":"Voip line state","size":1,"acl":"ACL_RO","type":"byte"},
		{"idx":9,"name":"Emergency call status","size":1,"acl":"ACL_RO","type":"byte"}
		]
	},
	{"meId":142,
	"meName":"VoIP media profile",
	"meAttrs":[]
	},
	{"meId":143,
	"meName":"RTP profile data",
	"meAttrs":[]
	},
	{"meId":144,
	"meName":"RTP performance monitoring history data",
	"meAttrs":[]
	},
	{"meId":145,
	"meName":"Network dial plan table",
	"meAttrs":[]
	},
	{"meId":146,
	"meName":"VoIP application service profile",
	"meAttrs":[]
	},
	{"meId":147,
	"meName":"VoIP feature access codes",
	"meAttrs":[]
	},
	{"meId":148,
	"meName":"Authentication security method",
	"meAttrs":[]
	},
	{"meId":149,
	"meName":"SIP config portal",
	"meAttrs":[]
	},
	{"meId":150,
	"meName":"SIP agent config data",
	"meAttrs":[]
	},
	{"meId":151,
	"meName":"SIP agent performance monitoring history data",
	"meAttrs":[]
	},
	{"meId":152,
	"meName":"SIP call initiation performance monitoring history data",
	"meAttrs":[]
	},
	{"meId":153,
	"meName":"SIP user data",
	"meAttrs":[]
	},
	{"meId":154,
	"meName":"MGC config portal",
	"meAttrs":[]
	},
	{"meId":155,
	"meName":"MGC config data",
	"meAttrs":[]
	},
	{"meId":156,
	"meName":"MGC performance monitoring history data",
	"meAttrs":[]
	},
	{"meId":157,
	"meName":"Large string",
	"meAttrs":[]
	},
	{"meId":158,
	"meName":"ONU remote debug",
	"meAttrs":[]
	},
	{"meId":159,
	"meName":"Equipment protection profile",
	"meAttrs":[]
	},
	{"meId":160,
	"meName":"Equipment extension package",
	"meAttrs":[]
	},
	{"meId":161,
	"meName":"Port mapping package",
	"meAttrs":[]
	},
	{"meId":162,
	"meName":"Physical path termination point MoCA UNI",
	"meAttrs":[]
	},
	{"meId":163,
	"meName":"MoCA Ethernet performance monitoring history data",
	"meAttrs":[]
	},
	{"meId":164,
	"meName":"MoCA interface performance monitoring history data",
	"meAttrs":[]
	},
	{"meId":165,
	"meName":"VDSL2 line configuration extensions",
	"meAttrs":[]
	},
	{"meId":166,
	"meName":"xDSL line inventory and status data part 3",
	"meAttrs":[]
	},
	{"meId":167,
	"meName":"xDSL line inventory and status data part 4",
	"meAttrs":[]
	},
	{"meId":168,
	"meName":"VDSL2 line inventory and status data part 1",
	"meAttrs":[]
	},
	{"meId":169,
	"meName":"VDSL2 line inventory and status data part 2",
	"meAttrs":[]
	},
	{"meId":170,
	"meName":"VDSL2 line inventory and status data part 3",
	"meAttrs":[]
	},
	{"meId":171,
	"meName":"Extended VLAN tagging operation configuration data",
	"meAttrs":[
		{"idx":1,"name":"Association type","size":1,"acl":"ACL_SC_RW","type":"byte"},
		{"idx":2,"name":"Received frame VLAN tagging operation table max size","size":2,"acl":"ACL_RO","type":"short"},
		{"idx":3,"name":"Input TPID","size":2,"acl":"ACL_RW","type":"hex"},
		{"idx":4,"name":"Output TPID","size":2,"acl":"ACL_RW","type":"hex"},
		{"idx":5,"name":"Downstream mode","size":1,"acl":"ACL_RW","type":"byte"},
		{"idx":6,"name":"Received frame VLAN tagging operation table","size":32,"acl":"ACL_RW","type":"table","entrylen":16},
		{"idx":7,"name":"Associated ME pointer","size":2,"acl":"ACL_SC_RW","type":"pointer"},
		{"idx":8,"name":"DSCP to P-bit mapping","size":24,"acl":"ACL_RW","type":"octstring"}
		]
	},
	{"meId":172,
	"meName":"Reserved for future B-PON managed entities",
	"meAttrs":[]
	},
	{"meId":240,
	"meName":"Reserved for vendor-specific  managed entities",
	"meAttrs":[]
	},
	{"meId":256,
	"meName":"ONU-G",
	"meAttrs":[
		{"idx":1,"name":"vendor ID","size":4,"acl":"ACL_RO","type":"string"},
		{"idx":2,"name":"Version","size":14,"acl":"ACL_RO","type":"string"},
		{"idx":3,"name":"Serial number","size":8,"acl":"ACL_RO","type":"octstring"},
		{"idx":4,"name":"Traffic management option","size":1,"acl":"ACL_RO","type":"byte"},
		{"idx":5,"name":"Deprecated","size":1,"acl":"ACL_RO","type":"byte"},
		{"idx":6,"name":"Battery backup","size":1,"acl":"ACL_RW","type":"byte"},
		{"idx":7,"name":"Administrative state","size":1,"acl":"ACL_RW","type":"byte"},
		{"idx":8,"name":"Operational state","size":1,"acl":"ACL_RO","type":"byte"},
		{"idx":9,"name":"ONU survival time","size":1,"acl":"ACL_RO","type":"byte"},
		{"idx":10,"name":"Logical ONU ID","size":24,"acl":"ACL_RO","type":"string"},
		{"idx":11,"name":"Logical password","size":12,"acl":"ACL_RO","type":"string"},
		{"idx":12,"name":"Credentials status","size":1,"acl":"ACL_RW","type":"byte"},
		{"idx":13,"name":"Extended TC-layer options","size":2,"acl":"ACL_RO","type":"short"}
		]
	},
	{"meId":257,
	"meName":"ONU2-G",
	"meAttrs":[
		{"idx":1,"name":"Equipment ID","size":20,"acl":"ACL_RO","type":"string"},
		{"idx":2,"name":"OMCC version","size":1,"acl":"ACL_RO","type":"byte"},
		{"idx":3,"name":"Vendor product code","size":2,"acl":"ACL_RO","type":"short"},
		{"idx":4,"name":"Security capability","size":1,"acl":"ACL_RO","type":"byte"},
		{"idx":5,"name":"Security mode","size":1,"acl":"ACL_RW","type":"byte"},
		{"idx":6,"name":"Total priority queue number","size":2,"acl":"ACL_RO","type":"short"},
		{"idx":7,"name":"Total traffic scheduler number","size":1,"acl":"ACL_RO","type":"byte"},
		{"idx":8,"name":"Deprecated","size":1,"acl":"ACL_RO","type":"byte"},
		{"idx":9,"name":"Total GEM port-ID number","size":2,"acl":"ACL_RO","type":"short"},
		{"idx":10,"name":"SysUpTime","size":4,"acl":"ACL_RO","type":"int"},
		{"idx":11,"name":"Connectivity capability","size":2,"acl":"ACL_RO","type":"hex"},
		{"idx":12,"name":"Current connectivity mode","size":1,"acl":"ACL_RW","type":"byte"},
		{"idx":13,"name":"QoS configuration flexibility","size":2,"acl":"ACL_RO","type":"hex"},
		{"idx":14,"name":"Priority queue scale factor","size":2,"acl":"ACL_RW","type":"short"}
		]
	},
	{"meId":258,
	"meName":"ONU-G deprecated",
	"meAttrs":[]
	},
	{"meId":259,
	"meName":"ONU2-G deprecated",
	"meAttrs":[]
	},
	{"meId":260,
	"meName":"PON IF line card-G",
	"meAttrs":[]
	},
	{"meId":261,
	"meName":"PON TC adapter-G",
	"meAttrs":[]
	},
	{"meId":262,
	"meName":"T-CONT",
	"meAttrs":[
		{"idx":1,"name":"Alloc-ID","size":2,"acl":"ACL_RW","type":"short"},
		{"idx":2,"name":"Deprecated","size":1,"acl":"ACL_RO","type":"byte"},
		{"idx":3,"name":"Policy","size":1,"acl":"ACL_RW","type":"byte"}
		]
	},
	{"meId":263,
	"meName":"ANI_G",
	"meAttrs":[
		{"idx":1,"name":"SR indication","size":1,"acl":"ACL_RO","type":"byte"},
		{"idx":2,"name":"Total T-CONT number","size":2,"acl":"ACL_RO","type":"short"},
		{"idx":3,"name":"GEM block length","size":2,"acl":"ACL_RW","type":"short"},
		{"idx":4,"name":"Piggyback DBA reporting","size":1,"acl":"ACL_RO","type":"byte"},
		{"idx":5,"name":"Deprecated","size":1,"acl":"ACL_RO","type":"byte"},
		{"idx":6,"name":"SF threshold","size":1,"acl":"ACL_RW","type":"byte"},
		{"idx":7,"name":"SD threshold","size":1,"acl":"ACL_RW","type":"byte"},
		{"idx":8,"name":"ARC","size":1,"acl":"ACL_RW","type":"byte"},
		{"idx":9,"name":"ARC interval","size":1,"acl":"ACL_RW","type":"byte"},
		{"idx":10,"name":"Optical signal level","size":2,"acl":"ACL_RO","type":"short"},
		{"idx":11,"name":"Lower optical threshold","size":1,"acl":"ACL_RW","type":"byte"},
		{"idx":12,"name":"Upper optical threshold","size":1,"acl":"ACL_RW","type":"byte"},
		{"idx":13,"name":"ONU response time","size":2,"acl":"ACL_RO","type":"short"},
		{"idx":14,"name":"Transmit optical level","size":2,"acl":"ACL_RO","type":"short"},
		{"idx":15,"name":"Lower transmit power threshold","size":1,"acl":"ACL_RW","type":"byte"},
		{"idx":16,"name":"Upper transmit power threshold","size":1,"acl":"ACL_RW","type":"byte"}
		]
	},
	{"meId":264,
	"meName":"UNI_G",
	"meAttrs":[
		{"idx":1,"name":"Deprecated","size":2,"acl":"ACL_RW","type":"short"},
		{"idx":2,"name":"Administrative state","size":1,"acl":"ACL_RW","type":"byte"},
		{"idx":3,"name":"Management capability","size":1,"acl":"ACL_RO","type":"byte"},
		{"idx":4,"name":"Non-OMCI management identifier","size":2,"acl":"ACL_RW","type":"pointer"},
		{"idx":5,"name":"Relay agent options","size":2,"acl":"ACL_RW","type":"pointer"}
		]
	},
	{"meId":265,
	"meName":"ATM interworking VCC termination point",
	"meAttrs":[]
	},
	{"meId":266,
	"meName":"GEM interworking termination point",
	"meAttrs":[
		{"idx":1,"name":"GEM port network CTP connectivity pointer","size":2,"acl":"ACL_SC_RW","type":"pointer"},
		{"idx":2,"name":"Interworking option","size":1,"acl":"ACL_SC_RW","type":"byte"},
		{"idx":3,"name":"Service profile pointer","size":2,"acl":"ACL_SC_RW","type":"pointer"},
		{"idx":4,"name":"Interworking termination point pointer","size":2,"acl":"ACL_SC_RW","type":"pointer"},
		{"idx":5,"name":"PPTP counter","size":1,"acl":"ACL_RO","type":"byte"},
		{"idx":6,"name":"Operational state","size":1,"acl":"ACL_RO","type":"byte"},
		{"idx":7,"name":"GAL profile pointer","size":2,"acl":"ACL_RO","type":"pointer"},
		{"idx":8,"name":"GAL loopback configuration","size":1,"acl":"ACL_RW","type":"byte"}
		]
	},
	{"meId":267,
	"meName":"GEM port performance monitoring history data (obsolete)",
	"meAttrs":[]
	},
	{"meId":268,
	"meName":"GEM port network CTP",
	"meAttrs":[
		{"idx":1,"name":"Port-ID","size":2,"acl":"ACL_SC_RW","type":"short"},
		{"idx":2,"name":"T-CONT pointer","size":2,"acl":"ACL_SC_RW","type":"pointer"},
		{"idx":3,"name":"Direction","size":1,"acl":"ACL_SC_RW","type":"byte"},
		{"idx":4,"name":"Traffic management pointer for upstream","size":2,"acl":"ACL_SC_RW","type":"pointer"},
		{"idx":5,"name":"Traffic descriptor profile pointer for upstream","size":2,"acl":"ACL_SC_RW","type":"pointer"},
		{"idx":6,"name":"UNI counter","size":1,"acl":"ACL_RO","type":"byte"},
		{"idx":7,"name":"Priority queue pointer for downstream","size":2,"acl":"ACL_SC_RW","type":"pointer"},
		{"idx":8,"name":"Encryption state","size":1,"acl":"ACL_RO","type":"byte"},
		{"idx":9,"name":"Traffic descriptor profile pointer for downstream","size":2,"acl":"ACL_SC_RW","type":"pointer"},
		{"idx":10,"name":"Encryption key ring","size":1,"acl":"ACL_SC_RW","type":"byte"}
		]
	},
	{"meId":269,
	"meName":"VP network CTP",
	"meAttrs":[]
	},
	{"meId":270,
	"meName":"VC network CTP-G",
	"meAttrs":[]
	},
	{"meId":271,
	"meName":"GAL TDM profile (deprecated)",
	"meAttrs":[]
	},
	{"meId":272,
	"meName":"GAL Ethernet profile",
	"meAttrs":[
		{"idx":1,"name":"Maximum GEM payload size","size":2,"acl":"ACL_SC_RW","type":"short"}
		]
	},
	{"meId":273,
	"meName":"Threshold data 1",
	"meAttrs":[]
	},
	{"meId":274,
	"meName":"Threshold data 2",
	"meAttrs":[]
	},
	{"meId":275,
	"meName":"GAL TDM performance monitoring history data(deprecated)",
	"meAttrs":[]
	},
	{"meId":276,
	"meName":"GAL Ethernet performance monitoring history data",
	"meAttrs":[]
	},
	{"meId":277,
	"meName":"Priority queue",
	"meAttrs":[
		{"idx":1,"name":"Queue configuration option","size":1,"acl":"ACL_RO","type":"byte"},
		{"idx":2,"name":"Queue configuration option","size":2,"acl":"ACL_RO","type":"short"},
		{"idx":3,"name":"Allocated queue size","size":2,"acl":"ACL_RW","type":"short"},
		{"idx":4,"name":"Discard-block counter reset interval","size":2,"acl":"ACL_RW","type":"short"},
		{"idx":5,"name":"Threshold value for discarded blocks due to buffer overflow","size":2,"acl":"ACL_RW","type":"short"},
		{"idx":6,"name":"Related port","size":4,"acl":"ACL_RW","type":"hex"},
		{"idx":7,"name":"Traffic scheduler pointer","size":2,"acl":"ACL_RW","type":"pointer"},
		{"idx":8,"name":"Weight","size":1,"acl":"ACL_RW","type":"byte"},
		{"idx":9,"name":"Back pressure operation","size":2,"acl":"ACL_RW","type":"short"},
		{"idx":10,"name":"Back pressure time","size":4,"acl":"ACL_RW","type":"int"},
		{"idx":11,"name":"Back pressure occur queue threshold","size":2,"acl":"ACL_RW","type":"short"},
		{"idx":12,"name":"Back pressure clear queue threshold","size":2,"acl":"ACL_RW","type":"short"},
		{"idx":13,"name":"Packet drop queue thresholds","size":8,"acl":"ACL_RW","type":"octstring"},
		{"idx":14,"name":"Packet drop max_p","size":2,"acl":"ACL_RW","type":"short"},
		{"idx":15,"name":"Queue drop w_q","size":1,"acl":"ACL_RW","type":"byte"},
		{"idx":16,"name":"Drop precedence colour marking","size":1,"acl":"ACL_RW","type":"byte"}
		]
	},
	{"meId":278,
	"meName":"Traffic scheduler",
	"meAttrs":[
		{"idx":1,"name":"T-CONT pointer","size":2,"acl":"ACL_RW","type":"pointer"},
		{"idx":2,"name":"Traffic scheduler pointer","size":2,"acl":"ACL_RO","type":"pointer"},
		{"idx":3,"name":"Policy","size":1,"acl":"ACL_RW","type":"byte"},
		{"idx":4,"name":"Priority or weight","size":1,"acl":"ACL_RW","type":"byte"}
		]
	},
	{"meId":279,
	"meName":"Protection data",
	"meAttrs":[]
	},
	{"meId":280,
	"meName":"Traffic descriptor",
	"meAttrs":[]
	},
	{"meId":281,
	"meName":"Multicast GEM interworking termination point",
	"meAttrs":[
		{"idx":1,"name":"GEM port network CTP connectivity pointer","size":2,"acl":"ACL_SC_RW","type":"pointer"},
		{"idx":2,"name":"Interworking option","size":1,"acl":"ACL_SC_RW","type":"byte"},
		{"idx":3,"name":"Service profile pointer","size":2,"acl":"ACL_SC_RW","type":"pointer"},
		{"idx":4,"name":"Not used 1","size":2,"acl":"ACL_SC_RW","type":"short"},
		{"idx":5,"name":"PPTP counter","size":1,"acl":"ACL_RO","type":"byte"},
		{"idx":6,"name":"Operational state","size":1,"acl":"ACL_RO","type":"byte"},
		{"idx":7,"name":"GAL profile pointer","size":2,"acl":"ACL_SC_RW","type":"pointer"},
		{"idx":8,"name":"Not used 2","size":1,"acl":"ACL_SC_RW","type":"byte"},
		{"idx":9,"name":"IPv4 multicast address table","size":0,"acl":"ACL_RW","type":"table","entrylen":12},
		{"idx":10,"name":"IPv6 multicast address table","size":0,"acl":"ACL_RW","type":"table","entrylen":24}
		]
	},
	{"meId":282,
	"meName":"Pseudowire termination point",
	"meAttrs":[]
	},
	{"meId":283,
	"meName":"RTP pseudowire parameters",
	"meAttrs":[]
	},
	{"meId":284,
	"meName":"Pseudowire maintenance profile",
	"meAttrs":[]
	},
	{"meId":285,
	"meName":"Pseudowire performance monitoring history data",
	"meAttrs":[]
	},
	{"meId":286,
	"meName":"Ethernet flow termination point",
	"meAttrs":[]
	},
	{"meId":287,
	"meName":"OMCI",
	"meAttrs":[]
	},
	{"meId":288,
	"meName":"Managed entity",
	"meAttrs":[]
	},
	{"meId":289,
	"meName":"Attribute",
	"meAttrs":[]
	},
	{"meId":290,
	"meName":"Dot1X port extension package",
	"meAttrs":[]
	},
	{"meId":291,
	"meName":"Dot1X configuration profile",
	"meAttrs":[]
	},
	{"meId":292,
	"meName":"Dot1X performance monitoring history data",
	"meAttrs":[]
	},
	{"meId":293,
	"meName":"Radius performance monitoring history data",
	"meAttrs":[]
	},
	{"meId":294,
	"meName":"TU CTP",
	"meAttrs":[]
	},
	{"meId":295,
	"meName":"TU performance monitoring history data",
	"meAttrs":[]
	},
	{"meId":296,
	"meName":"Ethernet performance monitoring history data 3",
	"meAttrs":[]
	},
	{"meId":297,
	"meName":"Port mapping package",
	"meAttrs":[]
	},
	{"meId":298,
	"meName":"Dot1 rate limiter",
	"meAttrs":[]
	},
	{"meId":299,
	"meName":"Dot1ag maintenance domain",
	"meAttrs":[]
	},
	{"meId":300,
	"meName":"Dot1ag maintenance association",
	"meAttrs":[]
	},
	{"meId":301,
	"meName":"Dot1ag default MD level",
	"meAttrs":[]
	},
	{"meId":302,
	"meName":"Dot1ag MEP",
	"meAttrs":[]
	},
	{"meId":303,
	"meName":"Dot1ag MEP status",
	"meAttrs":[]
	},
	{"meId":304,
	"meName":"Dot1ag MEP CCM database",
	"meAttrs":[]
	},
	{"meId":305,
	"meName":"Dot1ag CFM stack",
	"meAttrs":[]
	},
	{"meId":306,
	"meName":"Dot1ag chassis-management info",
	"meAttrs":[]
	},
	{"meId":307,
	"meName":"Octet string",
	"meAttrs":[]
	},
	{"meId":308,
	"meName":"General purpose buffer",
	"meAttrs":[]
	},
	{"meId":309,
	"meName":"Multicast operations profile",
	"meAttrs":[
		{"idx":1,"name":"IGMP version","size":1,"acl":"ACL_SC_RW","type":"byte"},
		{"idx":2,"name":"IGMP function","size":1,"acl":"ACL_SC_RW","type":"byte"},
		{"idx":3,"name":"Immediate leave","size":1,"acl":"ACL_SC_RW","type":"byte"},
		{"idx":4,"name":"Upstream IGMP TCI","size":2,"acl":"ACL_SC_RW","type":"hex"},
		{"idx":5,"name":"Upstream IGMP tag control","size":1,"acl":"ACL_SC_RW","type":"byte"},
		{"idx":6,"name":"Upstream IGMP rate","size":4,"acl":"ACL_SC_RW","type":"int"},
		{"idx":7,"name":"Dynamic access control list table","size":0,"acl":"ACL_RW","type":"table","entrylen":24},
		{"idx":8,"name":"Discussion of table size","size":0,"acl":"ACL_RW","type":"table","entrylen":24},
		{"idx":9,"name":"Static access control list table","size":0,"acl":"ACL_RW","type":"table","entrylen":24},
		{"idx":10,"name":"Lost groups list table","size":0,"acl":"ACL_RO","type":"table","entrylen":10},
		{"idx":11,"name":"Robustness","size":1,"acl":"ACL_SC_RW","type":"byte"},
		{"idx":12,"name":"Querier IP address","size":4,"acl":"ACL_SC_RW","type":"ipaddr"},
		{"idx":13,"name":"Query interval","size":4,"acl":"ACL_SC_RW","type":"int"}, 
		{"idx":14,"name":"Query max response time","size":4,"acl":"ACL_SC_RW","type":"int"}, 
		{"idx":15,"name":"Last member query interval","size":4,"acl":"ACL_RW","type":"int"}, 
		{"idx":16,"name":"Unauthorized join request behaviour","size":1,"acl":"ACL_RW","type":"byte"}, 
		{"idx":17,"name":"Downstream IGMP and multicast TCI: ","size":3,"acl":"ACL_SC_RW","type":"octstring"}
		]
	},
	{"meId":310,
	"meName":"Multicast subscriber config info",
	"meAttrs":[
		{"idx":1,"name":"ME type","size":1,"acl":"ACL_SC_RW","type":"byte"},
		{"idx":2,"name":"Multicast operations profile pointer","size":2,"acl":"ACL_SC_RW","type":"pointer"},
		{"idx":3,"name":"Max simultaneous groups","size":2,"acl":"ACL_SC_RW","type":"short"},
		{"idx":4,"name":"Max multicast bandwidth","size":4,"acl":"ACL_SC_RW","type":"int"},
		{"idx":5,"name":"Bandwidth enforcement","size":1,"acl":"ACL_SC_RW","type":"byte"},
		{"idx":6,"name":"Multicast service package table","size":0,"acl":"ACL_RW","type":"table","entrylen":20},
		{"idx":7,"name":"Allowed preview groups table","size":0,"acl":"ACL_RW","type":"table","entrylen":22}
		]
	},
	{"meId":311,
	"meName":"Multicast subscriber monitor",
	"meAttrs":[]
	},
	{"meId":312,
	"meName":"FEC performance monitoring history data",
	"meAttrs":[]
	},
	{"meId":313,
	"meName":"RE ANI-G",
	"meAttrs":[]
	},
	{"meId":314,
	"meName":"Physical path termination point RE UNI",
	"meAttrs":[]
	},
	{"meId":315,
	"meName":"RE upstream amplifier",
	"meAttrs":[]
	},
	{"meId":316,
	"meName":"RE downstream amplifier",
	"meAttrs":[]
	},
	{"meId":317,
	"meName":"RE config portal",
	"meAttrs":[]
	},
	{"meId":318,
	"meName":"File transfer controller",
	"meAttrs":[
		{"idx":1,"name":"Supported transfer protocols","size":2,"acl":"ACL_RO","type":"hex"},
		{"idx":2,"name":"File type","size":2,"acl":"ACL_RW","type":"pointer"},
		{"idx":3,"name":"File instance","size":2,"acl":"ACL_RW","type":"pointer"},
		{"idx":4,"name":"Local file name pointer","size":2,"acl":"ACL_RW","type":"pointer"},
		{"idx":5,"name":"Network address pointer","size":2,"acl":"ACL_RW","type":"pointer"},
		{"idx":6,"name":"File transfer trigger","size":1,"acl":"ACL_RW","type":"byte"},
		{"idx":7,"name":"File transfer status","size":1,"acl":"ACL_RO","type":"byte"},
		{"idx":8,"name":"GEM IWTP pointer","size":2,"acl":"ACL_RW","type":"pointer"},
		{"idx":9,"name":"VLAN","size":2,"acl":"ACL_RW","type":"short"},
		{"idx":10,"name":"File size","size":4,"acl":"ACL_RW","type":"int"},
		{"idx":11,"name":"Directory listing table","size":0,"acl":"ACL_RO","type":"table","entrylen":25}
		]
	},
	{"meId":319,
	"meName":"CES physical interface performance monitoring history data 2",
	"meAttrs":[]
	},
	{"meId":320,
	"meName":"CES physical interface performance monitoring history data 3",
	"meAttrs":[]
	},
	{"meId":321,
	"meName":"Ethernet frame performance monitoring history data downstream",
	"meAttrs":[]
	},
	{"meId":322,
	"meName":"Ethernet frame performance monitoring history data upstream",
	"meAttrs":[]
	},
	{"meId":323,
	"meName":"VDSL2 line configuration extensions 2",
	"meAttrs":[]
	},
	{"meId":324,
	"meName":"xDSL impulse noise monitor performance monitoring history data",
	"meAttrs":[]
	},
	{"meId":325,
	"meName":"xDSL line inventory and status data part 5",
	"meAttrs":[]
	},
	{"meId":326,
	"meName":"xDSL line inventory and status data part 6",
	"meAttrs":[]
	},
	{"meId":327,
	"meName":"xDSL line inventory and status data part 7",
	"meAttrs":[]
	},
	{"meId":328,
	"meName":"RE common amplifier parameters",
	"meAttrs":[]
	},
	{"meId":329,
	"meName":"Virtual Ethernet interface point",
	"meAttrs":[
		{"idx":1,"name":"Administrative state","size":1,"acl":"ACL_RW","type":"byte"},
		{"idx":2,"name":"Operational state","size":1,"acl":"ACL_RO","type":"byte"},
		{"idx":3,"name":"Interdomain name","size":25,"acl":"ACL_RW","type":"string"},
		{"idx":4,"name":"TCP UDP pointer","size":2,"acl":"ACL_RW","type":"pointer"},
		{"idx":5,"name":"IANA assigned port","size":2,"acl":"ACL_RO","type":"short"}
		]
	},
	{"meId":330,
	"meName":"Generic status portal",
	"meAttrs":[]
	},
	{"meId":331,
	"meName":"ONU-E",
	"meAttrs":[]
	},
	{"meId":332,
	"meName":"Enhanced security control",
	"meAttrs":[]
	},
	{"meId":333,
	"meName":"MPLS pseudowire termination point",
	"meAttrs":[]
	},
	{"meId":334,
	"meName":"Ethernet frame extended PM",
	"meAttrs":[]
	},
	{"meId":335,
	"meName":"SNMP configuration data",
	"meAttrs":[]
	},
	{"meId":336,
	"meName":"ONU dynamic power management control",
	"meAttrs":[]
	},
	{"meId":337,
	"meName":"PW ATM configuration data",
	"meAttrs":[]
	},
	{"meId":338,
	"meName":"PW ATM performance monitoring history data",
	"meAttrs":[]
	},
	{"meId":339,
	"meName":"PW Ethernet configuration data",
	"meAttrs":[]
	},
	{"meId":340,
	"meName":"BBF TR-069 management server",
	"meAttrs":[]
	},
	{"meId":341,
	"meName":"GEM port network CTP performance monitoring history data",
	"meAttrs":[]
	},
	{"meId":342,
	"meName":"TCP UDP performance monitoring history data",
	"meAttrs":[]
	},
	{"meId":343,
	"meName":"Energy consumption performance monitoring history data",
	"meAttrs":[]
	},
	{"meId":344,
	"meName":"XG-PON TC performance monitoring history data",
	"meAttrs":[]
	},
	{"meId":345,
	"meName":"XG-PON downstream management performance monitoring history data",
	"meAttrs":[]
	},
	{"meId":346,
	"meName":"XG-PON upstream management performance monitoring history data",
	"meAttrs":[]
	},
	{"meId":347,
	"meName":"IPv6 host config data",
	"meAttrs":[]
	},
	{"meId":348,
	"meName":"MAC bridge port ICMPv6 process pre-assign table",
	"meAttrs":[]
	},
	{"meId":349,
	"meName":"PoE control",
	"meAttrs":[]
	},
	{"meId":350,
	"meName":"Reserved for vendor-specific use",
	"meAttrs":[]
	},
	{"meId":400,
	"meName":"Ethernet pseudowire parameters",
	"meAttrs":[]
	}
]';

sub getGponMeJson{
	my $meJson = decode_json($gponMeJsonStr);
	return $meJson;
}

sub getGponMeArray{
	my @meArray;
	my $meJson = decode_json($gponMeJsonStr);

	foreach my $meItem (@{$meJson})
	{
		$meArray[$meItem->{"meId"}]->{"meId"} = $meItem->{"meId"};
		$meArray[$meItem->{"meId"}]->{"meName"} = $meItem->{"meName"};
		my @attsArr;
		foreach my $attTem (@{$meItem->{"meAttrs"}})
		{
			$attsArr[$attTem->{"idx"}]->{"idx"}=$attTem->{"idx"};
			$attsArr[$attTem->{"idx"}]->{"name"}=$attTem->{"name"};
			$attsArr[$attTem->{"idx"}]->{"size"}=$attTem->{"size"};
			$attsArr[$attTem->{"idx"}]->{"acl"}=$attTem->{"acl"};
			$attsArr[$attTem->{"idx"}]->{"type"}=$attTem->{"type"};
			if($attTem->{"type"} eq "table")
			{
				$attsArr[$attTem->{"idx"}]->{"entrylen"}=$attTem->{"entrylen"};
			}
		}
		$meArray[$meItem->{"meId"}]->{"attrs"} = \@attsArr;
	}

	return @meArray;
}

return 1;

//Generated by wsdl2apex

public class tempuriOrg {
    public class DNSInfo {
        public String HostName;
        public tempuriOrg.ArrayOfString Aliases;
        public tempuriOrg.ArrayOfString AddressList;
        private String[] HostName_type_info = new String[]{'HostName','http://tempuri.org/',null,'0','1','false'};
        private String[] Aliases_type_info = new String[]{'Aliases','http://tempuri.org/',null,'0','1','false'};
        private String[] AddressList_type_info = new String[]{'AddressList','http://tempuri.org/',null,'0','1','false'};
        private String[] apex_schema_type_info = new String[]{'http://tempuri.org/','true','false'};
        private String[] field_order_type_info = new String[]{'HostName','Aliases','AddressList'};
    }
    public class DNSLookupResponse_element {
        public tempuriOrg.DNSInfo DNSLookupResult;
        private String[] DNSLookupResult_type_info = new String[]{'DNSLookupResult','http://tempuri.org/',null,'0','1','false'};
        private String[] apex_schema_type_info = new String[]{'http://tempuri.org/','true','false'};
        private String[] field_order_type_info = new String[]{'DNSLookupResult'};
    }
    public class ArrayOfString {
        public String[] string_x;
        private String[] string_x_type_info = new String[]{'string','http://tempuri.org/',null,'0','-1','true'};
        private String[] apex_schema_type_info = new String[]{'http://tempuri.org/','true','false'};
        private String[] field_order_type_info = new String[]{'string_x'};
    }
    public class DNSLookup_element {
        public String server;
        private String[] server_type_info = new String[]{'server','http://tempuri.org/',null,'0','1','false'};
        private String[] apex_schema_type_info = new String[]{'http://tempuri.org/','true','false'};
        private String[] field_order_type_info = new String[]{'server'};
    }
    public class DNSSoap {
        public String endpoint_x = 'http://ws.strikeiron.com/relauto/iplookup/DNS';
        public Map<String,String> inputHttpHeaders_x;
        public Map<String,String> outputHttpHeaders_x;
        public String clientCertName_x;
        public String clientCert_x;
        public String clientCertPasswd_x;
        public Integer timeout_x;
        public wsStrikeironCom.SubscriptionInfo SubscriptionInfo;
        public wsStrikeironCom.LicenseInfo LicenseInfo;
        private String SubscriptionInfo_hns = 'SubscriptionInfo=http://ws.strikeiron.com';
        private String LicenseInfo_hns = 'LicenseInfo=http://ws.strikeiron.com';
        private String[] ns_map_type_info = new String[]{'http://tempuri.org/', 'tempuriOrg', 'http://ws.strikeiron.com', 'wsStrikeironCom'};
        public void GetRemainingHits() {
            wsStrikeironCom.GetRemainingHits_element request_x = new wsStrikeironCom.GetRemainingHits_element();
            wsStrikeironCom.GetRemainingHitsResponse_element response_x;
            Map<String, wsStrikeironCom.GetRemainingHitsResponse_element> response_map_x = new Map<String, wsStrikeironCom.GetRemainingHitsResponse_element>();
            response_map_x.put('response_x', response_x);
            WebServiceCallout.invoke(
              this,
              request_x,
              response_map_x,
              new String[]{endpoint_x,
              'http://ws.strikeiron.com/relauto/iplookup/DNS/GetRemainingHits',
              'http://ws.strikeiron.com',
              'GetRemainingHits',
              'http://ws.strikeiron.com',
              'GetRemainingHitsResponse',
              'wsStrikeironCom.GetRemainingHitsResponse_element'}
            );
            response_x = response_map_x.get('response_x');
        }
        public tempuriOrg.DNSInfo DNSLookup(String server) {
            tempuriOrg.DNSLookup_element request_x = new tempuriOrg.DNSLookup_element();
            request_x.server = server;
            tempuriOrg.DNSLookupResponse_element response_x;
            Map<String, tempuriOrg.DNSLookupResponse_element> response_map_x = new Map<String, tempuriOrg.DNSLookupResponse_element>();
            response_map_x.put('response_x', response_x);
            WebServiceCallout.invoke(
              this,
              request_x,
              response_map_x,
              new String[]{endpoint_x,
              'http://tempuri.org/DNSLookup',
              'http://tempuri.org/',
              'DNSLookup',
              'http://tempuri.org/',
              'DNSLookupResponse',
              'tempuriOrg.DNSLookupResponse_element'}
            );
            response_x = response_map_x.get('response_x');
            return response_x.DNSLookupResult;
        }
    }
}
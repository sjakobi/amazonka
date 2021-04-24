{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE TypeFamilies #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Route53.TestDNSAnswer
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets the value that Amazon Route 53 returns in response to a DNS request for a specified record name and type. You can optionally specify the IP address of a DNS resolver, an EDNS0 client subnet IP address, and a subnet mask.
module Network.AWS.Route53.TestDNSAnswer
  ( -- * Creating a Request
    testDNSAnswer,
    TestDNSAnswer,

    -- * Request Lenses
    tdaResolverIP,
    tdaEDNS0ClientSubnetMask,
    tdaEDNS0ClientSubnetIP,
    tdaHostedZoneId,
    tdaRecordName,
    tdaRecordType,

    -- * Destructuring the Response
    testDNSAnswerResponse,
    TestDNSAnswerResponse,

    -- * Response Lenses
    tdarrsResponseStatus,
    tdarrsNameserver,
    tdarrsRecordName,
    tdarrsRecordType,
    tdarrsRecordData,
    tdarrsResponseCode,
    tdarrsProtocol,
  )
where

import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response
import Network.AWS.Route53.Types

-- | Gets the value that Amazon Route 53 returns in response to a DNS request for a specified record name and type. You can optionally specify the IP address of a DNS resolver, an EDNS0 client subnet IP address, and a subnet mask.
--
--
--
-- /See:/ 'testDNSAnswer' smart constructor.
data TestDNSAnswer = TestDNSAnswer'
  { _tdaResolverIP ::
      !(Maybe Text),
    _tdaEDNS0ClientSubnetMask :: !(Maybe Text),
    _tdaEDNS0ClientSubnetIP :: !(Maybe Text),
    _tdaHostedZoneId :: !ResourceId,
    _tdaRecordName :: !Text,
    _tdaRecordType :: !RecordType
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'TestDNSAnswer' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'tdaResolverIP' - If you want to simulate a request from a specific DNS resolver, specify the IP address for that resolver. If you omit this value, @TestDnsAnswer@ uses the IP address of a DNS resolver in the AWS US East (N. Virginia) Region (@us-east-1@ ).
--
-- * 'tdaEDNS0ClientSubnetMask' - If you specify an IP address for @edns0clientsubnetip@ , you can optionally specify the number of bits of the IP address that you want the checking tool to include in the DNS query. For example, if you specify @192.0.2.44@ for @edns0clientsubnetip@ and @24@ for @edns0clientsubnetmask@ , the checking tool will simulate a request from 192.0.2.0/24. The default value is 24 bits for IPv4 addresses and 64 bits for IPv6 addresses. The range of valid values depends on whether @edns0clientsubnetip@ is an IPv4 or an IPv6 address:     * __IPv4__ : Specify a value between 0 and 32     * __IPv6__ : Specify a value between 0 and 128
--
-- * 'tdaEDNS0ClientSubnetIP' - If the resolver that you specified for resolverip supports EDNS0, specify the IPv4 or IPv6 address of a client in the applicable location, for example, @192.0.2.44@ or @2001:db8:85a3::8a2e:370:7334@ .
--
-- * 'tdaHostedZoneId' - The ID of the hosted zone that you want Amazon Route 53 to simulate a query for.
--
-- * 'tdaRecordName' - The name of the resource record set that you want Amazon Route 53 to simulate a query for.
--
-- * 'tdaRecordType' - The type of the resource record set.
testDNSAnswer ::
  -- | 'tdaHostedZoneId'
  ResourceId ->
  -- | 'tdaRecordName'
  Text ->
  -- | 'tdaRecordType'
  RecordType ->
  TestDNSAnswer
testDNSAnswer
  pHostedZoneId_
  pRecordName_
  pRecordType_ =
    TestDNSAnswer'
      { _tdaResolverIP = Nothing,
        _tdaEDNS0ClientSubnetMask = Nothing,
        _tdaEDNS0ClientSubnetIP = Nothing,
        _tdaHostedZoneId = pHostedZoneId_,
        _tdaRecordName = pRecordName_,
        _tdaRecordType = pRecordType_
      }

-- | If you want to simulate a request from a specific DNS resolver, specify the IP address for that resolver. If you omit this value, @TestDnsAnswer@ uses the IP address of a DNS resolver in the AWS US East (N. Virginia) Region (@us-east-1@ ).
tdaResolverIP :: Lens' TestDNSAnswer (Maybe Text)
tdaResolverIP = lens _tdaResolverIP (\s a -> s {_tdaResolverIP = a})

-- | If you specify an IP address for @edns0clientsubnetip@ , you can optionally specify the number of bits of the IP address that you want the checking tool to include in the DNS query. For example, if you specify @192.0.2.44@ for @edns0clientsubnetip@ and @24@ for @edns0clientsubnetmask@ , the checking tool will simulate a request from 192.0.2.0/24. The default value is 24 bits for IPv4 addresses and 64 bits for IPv6 addresses. The range of valid values depends on whether @edns0clientsubnetip@ is an IPv4 or an IPv6 address:     * __IPv4__ : Specify a value between 0 and 32     * __IPv6__ : Specify a value between 0 and 128
tdaEDNS0ClientSubnetMask :: Lens' TestDNSAnswer (Maybe Text)
tdaEDNS0ClientSubnetMask = lens _tdaEDNS0ClientSubnetMask (\s a -> s {_tdaEDNS0ClientSubnetMask = a})

-- | If the resolver that you specified for resolverip supports EDNS0, specify the IPv4 or IPv6 address of a client in the applicable location, for example, @192.0.2.44@ or @2001:db8:85a3::8a2e:370:7334@ .
tdaEDNS0ClientSubnetIP :: Lens' TestDNSAnswer (Maybe Text)
tdaEDNS0ClientSubnetIP = lens _tdaEDNS0ClientSubnetIP (\s a -> s {_tdaEDNS0ClientSubnetIP = a})

-- | The ID of the hosted zone that you want Amazon Route 53 to simulate a query for.
tdaHostedZoneId :: Lens' TestDNSAnswer ResourceId
tdaHostedZoneId = lens _tdaHostedZoneId (\s a -> s {_tdaHostedZoneId = a})

-- | The name of the resource record set that you want Amazon Route 53 to simulate a query for.
tdaRecordName :: Lens' TestDNSAnswer Text
tdaRecordName = lens _tdaRecordName (\s a -> s {_tdaRecordName = a})

-- | The type of the resource record set.
tdaRecordType :: Lens' TestDNSAnswer RecordType
tdaRecordType = lens _tdaRecordType (\s a -> s {_tdaRecordType = a})

instance AWSRequest TestDNSAnswer where
  type Rs TestDNSAnswer = TestDNSAnswerResponse
  request = get route53
  response =
    receiveXML
      ( \s h x ->
          TestDNSAnswerResponse'
            <$> (pure (fromEnum s))
            <*> (x .@ "Nameserver")
            <*> (x .@ "RecordName")
            <*> (x .@ "RecordType")
            <*> ( x .@? "RecordData" .!@ mempty
                    >>= parseXMLList "RecordDataEntry"
                )
            <*> (x .@ "ResponseCode")
            <*> (x .@ "Protocol")
      )

instance Hashable TestDNSAnswer

instance NFData TestDNSAnswer

instance ToHeaders TestDNSAnswer where
  toHeaders = const mempty

instance ToPath TestDNSAnswer where
  toPath = const "/2013-04-01/testdnsanswer"

instance ToQuery TestDNSAnswer where
  toQuery TestDNSAnswer' {..} =
    mconcat
      [ "resolverip" =: _tdaResolverIP,
        "edns0clientsubnetmask" =: _tdaEDNS0ClientSubnetMask,
        "edns0clientsubnetip" =: _tdaEDNS0ClientSubnetIP,
        "hostedzoneid" =: _tdaHostedZoneId,
        "recordname" =: _tdaRecordName,
        "recordtype" =: _tdaRecordType
      ]

-- | A complex type that contains the response to a @TestDNSAnswer@ request.
--
--
--
-- /See:/ 'testDNSAnswerResponse' smart constructor.
data TestDNSAnswerResponse = TestDNSAnswerResponse'
  { _tdarrsResponseStatus ::
      !Int,
    _tdarrsNameserver :: !Text,
    _tdarrsRecordName :: !Text,
    _tdarrsRecordType ::
      !RecordType,
    _tdarrsRecordData ::
      ![Text],
    _tdarrsResponseCode ::
      !Text,
    _tdarrsProtocol :: !Text
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'TestDNSAnswerResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'tdarrsResponseStatus' - -- | The response status code.
--
-- * 'tdarrsNameserver' - The Amazon Route 53 name server used to respond to the request.
--
-- * 'tdarrsRecordName' - The name of the resource record set that you submitted a request for.
--
-- * 'tdarrsRecordType' - The type of the resource record set that you submitted a request for.
--
-- * 'tdarrsRecordData' - A list that contains values that Amazon Route 53 returned for this resource record set.
--
-- * 'tdarrsResponseCode' - A code that indicates whether the request is valid or not. The most common response code is @NOERROR@ , meaning that the request is valid. If the response is not valid, Amazon Route 53 returns a response code that describes the error. For a list of possible response codes, see <http://www.iana.org/assignments/dns-parameters/dns-parameters.xhtml#dns-parameters-6 DNS RCODES> on the IANA website.
--
-- * 'tdarrsProtocol' - The protocol that Amazon Route 53 used to respond to the request, either @UDP@ or @TCP@ .
testDNSAnswerResponse ::
  -- | 'tdarrsResponseStatus'
  Int ->
  -- | 'tdarrsNameserver'
  Text ->
  -- | 'tdarrsRecordName'
  Text ->
  -- | 'tdarrsRecordType'
  RecordType ->
  -- | 'tdarrsResponseCode'
  Text ->
  -- | 'tdarrsProtocol'
  Text ->
  TestDNSAnswerResponse
testDNSAnswerResponse
  pResponseStatus_
  pNameserver_
  pRecordName_
  pRecordType_
  pResponseCode_
  pProtocol_ =
    TestDNSAnswerResponse'
      { _tdarrsResponseStatus =
          pResponseStatus_,
        _tdarrsNameserver = pNameserver_,
        _tdarrsRecordName = pRecordName_,
        _tdarrsRecordType = pRecordType_,
        _tdarrsRecordData = mempty,
        _tdarrsResponseCode = pResponseCode_,
        _tdarrsProtocol = pProtocol_
      }

-- | -- | The response status code.
tdarrsResponseStatus :: Lens' TestDNSAnswerResponse Int
tdarrsResponseStatus = lens _tdarrsResponseStatus (\s a -> s {_tdarrsResponseStatus = a})

-- | The Amazon Route 53 name server used to respond to the request.
tdarrsNameserver :: Lens' TestDNSAnswerResponse Text
tdarrsNameserver = lens _tdarrsNameserver (\s a -> s {_tdarrsNameserver = a})

-- | The name of the resource record set that you submitted a request for.
tdarrsRecordName :: Lens' TestDNSAnswerResponse Text
tdarrsRecordName = lens _tdarrsRecordName (\s a -> s {_tdarrsRecordName = a})

-- | The type of the resource record set that you submitted a request for.
tdarrsRecordType :: Lens' TestDNSAnswerResponse RecordType
tdarrsRecordType = lens _tdarrsRecordType (\s a -> s {_tdarrsRecordType = a})

-- | A list that contains values that Amazon Route 53 returned for this resource record set.
tdarrsRecordData :: Lens' TestDNSAnswerResponse [Text]
tdarrsRecordData = lens _tdarrsRecordData (\s a -> s {_tdarrsRecordData = a}) . _Coerce

-- | A code that indicates whether the request is valid or not. The most common response code is @NOERROR@ , meaning that the request is valid. If the response is not valid, Amazon Route 53 returns a response code that describes the error. For a list of possible response codes, see <http://www.iana.org/assignments/dns-parameters/dns-parameters.xhtml#dns-parameters-6 DNS RCODES> on the IANA website.
tdarrsResponseCode :: Lens' TestDNSAnswerResponse Text
tdarrsResponseCode = lens _tdarrsResponseCode (\s a -> s {_tdarrsResponseCode = a})

-- | The protocol that Amazon Route 53 used to respond to the request, either @UDP@ or @TCP@ .
tdarrsProtocol :: Lens' TestDNSAnswerResponse Text
tdarrsProtocol = lens _tdarrsProtocol (\s a -> s {_tdarrsProtocol = a})

instance NFData TestDNSAnswerResponse

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
-- Module      : Network.AWS.Route53.CreateHostedZone
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates a new public or private hosted zone. You create records in a public hosted zone to define how you want to route traffic on the internet for a domain, such as example.com, and its subdomains (apex.example.com, acme.example.com). You create records in a private hosted zone to define how you want to route traffic for a domain and its subdomains within one or more Amazon Virtual Private Clouds (Amazon VPCs).
--
--
-- /Important:/ You can't convert a public hosted zone to a private hosted zone or vice versa. Instead, you must create a new hosted zone with the same name and create new resource record sets.
--
-- For more information about charges for hosted zones, see <http://aws.amazon.com/route53/pricing/ Amazon Route 53 Pricing> .
--
-- Note the following:
--
--     * You can't create a hosted zone for a top-level domain (TLD) such as .com.
--
--     * For public hosted zones, Route 53 automatically creates a default SOA record and four NS records for the zone. For more information about SOA and NS records, see <https://docs.aws.amazon.com/Route53/latest/DeveloperGuide/SOA-NSrecords.html NS and SOA Records that Route 53 Creates for a Hosted Zone> in the /Amazon Route 53 Developer Guide/ .
--
-- If you want to use the same name servers for multiple public hosted zones, you can optionally associate a reusable delegation set with the hosted zone. See the @DelegationSetId@ element.
--
--     * If your domain is registered with a registrar other than Route 53, you must update the name servers with your registrar to make Route 53 the DNS service for the domain. For more information, see <https://docs.aws.amazon.com/Route53/latest/DeveloperGuide/MigratingDNS.html Migrating DNS Service for an Existing Domain to Amazon Route 53> in the /Amazon Route 53 Developer Guide/ .
--
--
--
-- When you submit a @CreateHostedZone@ request, the initial status of the hosted zone is @PENDING@ . For public hosted zones, this means that the NS and SOA records are not yet available on all Route 53 DNS servers. When the NS and SOA records are available, the status of the zone changes to @INSYNC@ .
module Network.AWS.Route53.CreateHostedZone
  ( -- * Creating a Request
    createHostedZone,
    CreateHostedZone,

    -- * Request Lenses
    chzDelegationSetId,
    chzHostedZoneConfig,
    chzVPC,
    chzName,
    chzCallerReference,

    -- * Destructuring the Response
    createHostedZoneResponse,
    CreateHostedZoneResponse,

    -- * Response Lenses
    chzrrsVPC,
    chzrrsResponseStatus,
    chzrrsHostedZone,
    chzrrsChangeInfo,
    chzrrsDelegationSet,
    chzrrsLocation,
  )
where

import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response
import Network.AWS.Route53.Types

-- | A complex type that contains information about the request to create a public or private hosted zone.
--
--
--
-- /See:/ 'createHostedZone' smart constructor.
data CreateHostedZone = CreateHostedZone'
  { _chzDelegationSetId ::
      !(Maybe ResourceId),
    _chzHostedZoneConfig ::
      !(Maybe HostedZoneConfig),
    _chzVPC :: !(Maybe VPC),
    _chzName :: !Text,
    _chzCallerReference :: !Text
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'CreateHostedZone' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'chzDelegationSetId' - If you want to associate a reusable delegation set with this hosted zone, the ID that Amazon Route 53 assigned to the reusable delegation set when you created it. For more information about reusable delegation sets, see <https://docs.aws.amazon.com/Route53/latest/APIReference/API_CreateReusableDelegationSet.html CreateReusableDelegationSet> .
--
-- * 'chzHostedZoneConfig' - (Optional) A complex type that contains the following optional values:     * For public and private hosted zones, an optional comment     * For private hosted zones, an optional @PrivateZone@ element If you don't specify a comment or the @PrivateZone@ element, omit @HostedZoneConfig@ and the other elements.
--
-- * 'chzVPC' - (Private hosted zones only) A complex type that contains information about the Amazon VPC that you're associating with this hosted zone. You can specify only one Amazon VPC when you create a private hosted zone. To associate additional Amazon VPCs with the hosted zone, use <https://docs.aws.amazon.com/Route53/latest/APIReference/API_AssociateVPCWithHostedZone.html AssociateVPCWithHostedZone> after you create a hosted zone.
--
-- * 'chzName' - The name of the domain. Specify a fully qualified domain name, for example, /www.example.com/ . The trailing dot is optional; Amazon Route 53 assumes that the domain name is fully qualified. This means that Route 53 treats /www.example.com/ (without a trailing dot) and /www.example.com./ (with a trailing dot) as identical. If you're creating a public hosted zone, this is the name you have registered with your DNS registrar. If your domain name is registered with a registrar other than Route 53, change the name servers for your domain to the set of @NameServers@ that @CreateHostedZone@ returns in @DelegationSet@ .
--
-- * 'chzCallerReference' - A unique string that identifies the request and that allows failed @CreateHostedZone@ requests to be retried without the risk of executing the operation twice. You must use a unique @CallerReference@ string every time you submit a @CreateHostedZone@ request. @CallerReference@ can be any unique string, for example, a date/time stamp.
createHostedZone ::
  -- | 'chzName'
  Text ->
  -- | 'chzCallerReference'
  Text ->
  CreateHostedZone
createHostedZone pName_ pCallerReference_ =
  CreateHostedZone'
    { _chzDelegationSetId = Nothing,
      _chzHostedZoneConfig = Nothing,
      _chzVPC = Nothing,
      _chzName = pName_,
      _chzCallerReference = pCallerReference_
    }

-- | If you want to associate a reusable delegation set with this hosted zone, the ID that Amazon Route 53 assigned to the reusable delegation set when you created it. For more information about reusable delegation sets, see <https://docs.aws.amazon.com/Route53/latest/APIReference/API_CreateReusableDelegationSet.html CreateReusableDelegationSet> .
chzDelegationSetId :: Lens' CreateHostedZone (Maybe ResourceId)
chzDelegationSetId = lens _chzDelegationSetId (\s a -> s {_chzDelegationSetId = a})

-- | (Optional) A complex type that contains the following optional values:     * For public and private hosted zones, an optional comment     * For private hosted zones, an optional @PrivateZone@ element If you don't specify a comment or the @PrivateZone@ element, omit @HostedZoneConfig@ and the other elements.
chzHostedZoneConfig :: Lens' CreateHostedZone (Maybe HostedZoneConfig)
chzHostedZoneConfig = lens _chzHostedZoneConfig (\s a -> s {_chzHostedZoneConfig = a})

-- | (Private hosted zones only) A complex type that contains information about the Amazon VPC that you're associating with this hosted zone. You can specify only one Amazon VPC when you create a private hosted zone. To associate additional Amazon VPCs with the hosted zone, use <https://docs.aws.amazon.com/Route53/latest/APIReference/API_AssociateVPCWithHostedZone.html AssociateVPCWithHostedZone> after you create a hosted zone.
chzVPC :: Lens' CreateHostedZone (Maybe VPC)
chzVPC = lens _chzVPC (\s a -> s {_chzVPC = a})

-- | The name of the domain. Specify a fully qualified domain name, for example, /www.example.com/ . The trailing dot is optional; Amazon Route 53 assumes that the domain name is fully qualified. This means that Route 53 treats /www.example.com/ (without a trailing dot) and /www.example.com./ (with a trailing dot) as identical. If you're creating a public hosted zone, this is the name you have registered with your DNS registrar. If your domain name is registered with a registrar other than Route 53, change the name servers for your domain to the set of @NameServers@ that @CreateHostedZone@ returns in @DelegationSet@ .
chzName :: Lens' CreateHostedZone Text
chzName = lens _chzName (\s a -> s {_chzName = a})

-- | A unique string that identifies the request and that allows failed @CreateHostedZone@ requests to be retried without the risk of executing the operation twice. You must use a unique @CallerReference@ string every time you submit a @CreateHostedZone@ request. @CallerReference@ can be any unique string, for example, a date/time stamp.
chzCallerReference :: Lens' CreateHostedZone Text
chzCallerReference = lens _chzCallerReference (\s a -> s {_chzCallerReference = a})

instance AWSRequest CreateHostedZone where
  type Rs CreateHostedZone = CreateHostedZoneResponse
  request = postXML route53
  response =
    receiveXML
      ( \s h x ->
          CreateHostedZoneResponse'
            <$> (x .@? "VPC")
            <*> (pure (fromEnum s))
            <*> (x .@ "HostedZone")
            <*> (x .@ "ChangeInfo")
            <*> (x .@ "DelegationSet")
            <*> (h .# "Location")
      )

instance Hashable CreateHostedZone

instance NFData CreateHostedZone

instance ToElement CreateHostedZone where
  toElement =
    mkElement
      "{https://route53.amazonaws.com/doc/2013-04-01/}CreateHostedZoneRequest"

instance ToHeaders CreateHostedZone where
  toHeaders = const mempty

instance ToPath CreateHostedZone where
  toPath = const "/2013-04-01/hostedzone"

instance ToQuery CreateHostedZone where
  toQuery = const mempty

instance ToXML CreateHostedZone where
  toXML CreateHostedZone' {..} =
    mconcat
      [ "DelegationSetId" @= _chzDelegationSetId,
        "HostedZoneConfig" @= _chzHostedZoneConfig,
        "VPC" @= _chzVPC,
        "Name" @= _chzName,
        "CallerReference" @= _chzCallerReference
      ]

-- | A complex type containing the response information for the hosted zone.
--
--
--
-- /See:/ 'createHostedZoneResponse' smart constructor.
data CreateHostedZoneResponse = CreateHostedZoneResponse'
  { _chzrrsVPC ::
      !(Maybe VPC),
    _chzrrsResponseStatus ::
      !Int,
    _chzrrsHostedZone ::
      !HostedZone,
    _chzrrsChangeInfo ::
      !ChangeInfo,
    _chzrrsDelegationSet ::
      !DelegationSet,
    _chzrrsLocation ::
      !Text
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'CreateHostedZoneResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'chzrrsVPC' - A complex type that contains information about an Amazon VPC that you associated with this hosted zone.
--
-- * 'chzrrsResponseStatus' - -- | The response status code.
--
-- * 'chzrrsHostedZone' - A complex type that contains general information about the hosted zone.
--
-- * 'chzrrsChangeInfo' - A complex type that contains information about the @CreateHostedZone@ request.
--
-- * 'chzrrsDelegationSet' - A complex type that describes the name servers for this hosted zone.
--
-- * 'chzrrsLocation' - The unique URL representing the new hosted zone.
createHostedZoneResponse ::
  -- | 'chzrrsResponseStatus'
  Int ->
  -- | 'chzrrsHostedZone'
  HostedZone ->
  -- | 'chzrrsChangeInfo'
  ChangeInfo ->
  -- | 'chzrrsDelegationSet'
  DelegationSet ->
  -- | 'chzrrsLocation'
  Text ->
  CreateHostedZoneResponse
createHostedZoneResponse
  pResponseStatus_
  pHostedZone_
  pChangeInfo_
  pDelegationSet_
  pLocation_ =
    CreateHostedZoneResponse'
      { _chzrrsVPC = Nothing,
        _chzrrsResponseStatus = pResponseStatus_,
        _chzrrsHostedZone = pHostedZone_,
        _chzrrsChangeInfo = pChangeInfo_,
        _chzrrsDelegationSet = pDelegationSet_,
        _chzrrsLocation = pLocation_
      }

-- | A complex type that contains information about an Amazon VPC that you associated with this hosted zone.
chzrrsVPC :: Lens' CreateHostedZoneResponse (Maybe VPC)
chzrrsVPC = lens _chzrrsVPC (\s a -> s {_chzrrsVPC = a})

-- | -- | The response status code.
chzrrsResponseStatus :: Lens' CreateHostedZoneResponse Int
chzrrsResponseStatus = lens _chzrrsResponseStatus (\s a -> s {_chzrrsResponseStatus = a})

-- | A complex type that contains general information about the hosted zone.
chzrrsHostedZone :: Lens' CreateHostedZoneResponse HostedZone
chzrrsHostedZone = lens _chzrrsHostedZone (\s a -> s {_chzrrsHostedZone = a})

-- | A complex type that contains information about the @CreateHostedZone@ request.
chzrrsChangeInfo :: Lens' CreateHostedZoneResponse ChangeInfo
chzrrsChangeInfo = lens _chzrrsChangeInfo (\s a -> s {_chzrrsChangeInfo = a})

-- | A complex type that describes the name servers for this hosted zone.
chzrrsDelegationSet :: Lens' CreateHostedZoneResponse DelegationSet
chzrrsDelegationSet = lens _chzrrsDelegationSet (\s a -> s {_chzrrsDelegationSet = a})

-- | The unique URL representing the new hosted zone.
chzrrsLocation :: Lens' CreateHostedZoneResponse Text
chzrrsLocation = lens _chzrrsLocation (\s a -> s {_chzrrsLocation = a})

instance NFData CreateHostedZoneResponse

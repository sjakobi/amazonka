{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.EC2.Types.TransitGatewayMulticastDomainAssociation
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.EC2.Types.TransitGatewayMulticastDomainAssociation where

import Network.AWS.EC2.Internal
import Network.AWS.EC2.Types.SubnetAssociation
import Network.AWS.EC2.Types.TransitGatewayAttachmentResourceType
import Network.AWS.Lens
import Network.AWS.Prelude

-- | Describes the resources associated with the transit gateway multicast domain.
--
--
--
-- /See:/ 'transitGatewayMulticastDomainAssociation' smart constructor.
data TransitGatewayMulticastDomainAssociation = TransitGatewayMulticastDomainAssociation'
  { _tgmdaResourceId ::
      !( Maybe
           Text
       ),
    _tgmdaSubnet ::
      !( Maybe
           SubnetAssociation
       ),
    _tgmdaResourceType ::
      !( Maybe
           TransitGatewayAttachmentResourceType
       ),
    _tgmdaResourceOwnerId ::
      !( Maybe
           Text
       ),
    _tgmdaTransitGatewayAttachmentId ::
      !( Maybe
           Text
       )
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'TransitGatewayMulticastDomainAssociation' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'tgmdaResourceId' - The ID of the resource.
--
-- * 'tgmdaSubnet' - The subnet associated with the transit gateway multicast domain.
--
-- * 'tgmdaResourceType' - The type of resource, for example a VPC attachment.
--
-- * 'tgmdaResourceOwnerId' - The ID of the AWS account that owns the transit gateway multicast domain association resource.
--
-- * 'tgmdaTransitGatewayAttachmentId' - The ID of the transit gateway attachment.
transitGatewayMulticastDomainAssociation ::
  TransitGatewayMulticastDomainAssociation
transitGatewayMulticastDomainAssociation =
  TransitGatewayMulticastDomainAssociation'
    { _tgmdaResourceId =
        Nothing,
      _tgmdaSubnet = Nothing,
      _tgmdaResourceType = Nothing,
      _tgmdaResourceOwnerId = Nothing,
      _tgmdaTransitGatewayAttachmentId =
        Nothing
    }

-- | The ID of the resource.
tgmdaResourceId :: Lens' TransitGatewayMulticastDomainAssociation (Maybe Text)
tgmdaResourceId = lens _tgmdaResourceId (\s a -> s {_tgmdaResourceId = a})

-- | The subnet associated with the transit gateway multicast domain.
tgmdaSubnet :: Lens' TransitGatewayMulticastDomainAssociation (Maybe SubnetAssociation)
tgmdaSubnet = lens _tgmdaSubnet (\s a -> s {_tgmdaSubnet = a})

-- | The type of resource, for example a VPC attachment.
tgmdaResourceType :: Lens' TransitGatewayMulticastDomainAssociation (Maybe TransitGatewayAttachmentResourceType)
tgmdaResourceType = lens _tgmdaResourceType (\s a -> s {_tgmdaResourceType = a})

-- | The ID of the AWS account that owns the transit gateway multicast domain association resource.
tgmdaResourceOwnerId :: Lens' TransitGatewayMulticastDomainAssociation (Maybe Text)
tgmdaResourceOwnerId = lens _tgmdaResourceOwnerId (\s a -> s {_tgmdaResourceOwnerId = a})

-- | The ID of the transit gateway attachment.
tgmdaTransitGatewayAttachmentId :: Lens' TransitGatewayMulticastDomainAssociation (Maybe Text)
tgmdaTransitGatewayAttachmentId = lens _tgmdaTransitGatewayAttachmentId (\s a -> s {_tgmdaTransitGatewayAttachmentId = a})

instance
  FromXML
    TransitGatewayMulticastDomainAssociation
  where
  parseXML x =
    TransitGatewayMulticastDomainAssociation'
      <$> (x .@? "resourceId")
      <*> (x .@? "subnet")
      <*> (x .@? "resourceType")
      <*> (x .@? "resourceOwnerId")
      <*> (x .@? "transitGatewayAttachmentId")

instance
  Hashable
    TransitGatewayMulticastDomainAssociation

instance
  NFData
    TransitGatewayMulticastDomainAssociation

{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.EC2.Types.TransitGatewayMulticastDomainAssociations
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.EC2.Types.TransitGatewayMulticastDomainAssociations where

import Network.AWS.EC2.Internal
import Network.AWS.EC2.Types.SubnetAssociation
import Network.AWS.EC2.Types.TransitGatewayAttachmentResourceType
import Network.AWS.Lens
import Network.AWS.Prelude

-- | Describes the multicast domain associations.
--
--
--
-- /See:/ 'transitGatewayMulticastDomainAssociations' smart constructor.
data TransitGatewayMulticastDomainAssociations = TransitGatewayMulticastDomainAssociations'
  { _tgmdasResourceId ::
      !( Maybe
           Text
       ),
    _tgmdasTransitGatewayMulticastDomainId ::
      !( Maybe
           Text
       ),
    _tgmdasResourceType ::
      !( Maybe
           TransitGatewayAttachmentResourceType
       ),
    _tgmdasResourceOwnerId ::
      !( Maybe
           Text
       ),
    _tgmdasTransitGatewayAttachmentId ::
      !( Maybe
           Text
       ),
    _tgmdasSubnets ::
      !( Maybe
           [SubnetAssociation]
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

-- | Creates a value of 'TransitGatewayMulticastDomainAssociations' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'tgmdasResourceId' - The ID of the resource.
--
-- * 'tgmdasTransitGatewayMulticastDomainId' - The ID of the transit gateway multicast domain.
--
-- * 'tgmdasResourceType' - The type of resource, for example a VPC attachment.
--
-- * 'tgmdasResourceOwnerId' - The ID of the AWS account that owns the resource.
--
-- * 'tgmdasTransitGatewayAttachmentId' - The ID of the transit gateway attachment.
--
-- * 'tgmdasSubnets' - The subnets associated with the multicast domain.
transitGatewayMulticastDomainAssociations ::
  TransitGatewayMulticastDomainAssociations
transitGatewayMulticastDomainAssociations =
  TransitGatewayMulticastDomainAssociations'
    { _tgmdasResourceId =
        Nothing,
      _tgmdasTransitGatewayMulticastDomainId =
        Nothing,
      _tgmdasResourceType = Nothing,
      _tgmdasResourceOwnerId = Nothing,
      _tgmdasTransitGatewayAttachmentId =
        Nothing,
      _tgmdasSubnets = Nothing
    }

-- | The ID of the resource.
tgmdasResourceId :: Lens' TransitGatewayMulticastDomainAssociations (Maybe Text)
tgmdasResourceId = lens _tgmdasResourceId (\s a -> s {_tgmdasResourceId = a})

-- | The ID of the transit gateway multicast domain.
tgmdasTransitGatewayMulticastDomainId :: Lens' TransitGatewayMulticastDomainAssociations (Maybe Text)
tgmdasTransitGatewayMulticastDomainId = lens _tgmdasTransitGatewayMulticastDomainId (\s a -> s {_tgmdasTransitGatewayMulticastDomainId = a})

-- | The type of resource, for example a VPC attachment.
tgmdasResourceType :: Lens' TransitGatewayMulticastDomainAssociations (Maybe TransitGatewayAttachmentResourceType)
tgmdasResourceType = lens _tgmdasResourceType (\s a -> s {_tgmdasResourceType = a})

-- | The ID of the AWS account that owns the resource.
tgmdasResourceOwnerId :: Lens' TransitGatewayMulticastDomainAssociations (Maybe Text)
tgmdasResourceOwnerId = lens _tgmdasResourceOwnerId (\s a -> s {_tgmdasResourceOwnerId = a})

-- | The ID of the transit gateway attachment.
tgmdasTransitGatewayAttachmentId :: Lens' TransitGatewayMulticastDomainAssociations (Maybe Text)
tgmdasTransitGatewayAttachmentId = lens _tgmdasTransitGatewayAttachmentId (\s a -> s {_tgmdasTransitGatewayAttachmentId = a})

-- | The subnets associated with the multicast domain.
tgmdasSubnets :: Lens' TransitGatewayMulticastDomainAssociations [SubnetAssociation]
tgmdasSubnets = lens _tgmdasSubnets (\s a -> s {_tgmdasSubnets = a}) . _Default . _Coerce

instance
  FromXML
    TransitGatewayMulticastDomainAssociations
  where
  parseXML x =
    TransitGatewayMulticastDomainAssociations'
      <$> (x .@? "resourceId")
      <*> (x .@? "transitGatewayMulticastDomainId")
      <*> (x .@? "resourceType")
      <*> (x .@? "resourceOwnerId")
      <*> (x .@? "transitGatewayAttachmentId")
      <*> ( x .@? "subnets" .!@ mempty
              >>= may (parseXMLList "item")
          )

instance
  Hashable
    TransitGatewayMulticastDomainAssociations

instance
  NFData
    TransitGatewayMulticastDomainAssociations

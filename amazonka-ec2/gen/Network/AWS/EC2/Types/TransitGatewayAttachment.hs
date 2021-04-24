{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.EC2.Types.TransitGatewayAttachment
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.EC2.Types.TransitGatewayAttachment where

import Network.AWS.EC2.Internal
import Network.AWS.EC2.Types.Tag
import Network.AWS.EC2.Types.TransitGatewayAttachmentAssociation
import Network.AWS.EC2.Types.TransitGatewayAttachmentResourceType
import Network.AWS.EC2.Types.TransitGatewayAttachmentState
import Network.AWS.Lens
import Network.AWS.Prelude

-- | Describes an attachment between a resource and a transit gateway.
--
--
--
-- /See:/ 'transitGatewayAttachment' smart constructor.
data TransitGatewayAttachment = TransitGatewayAttachment'
  { _tResourceId ::
      !(Maybe Text),
    _tCreationTime ::
      !(Maybe ISO8601),
    _tAssociation ::
      !( Maybe
           TransitGatewayAttachmentAssociation
       ),
    _tResourceType ::
      !( Maybe
           TransitGatewayAttachmentResourceType
       ),
    _tState ::
      !( Maybe
           TransitGatewayAttachmentState
       ),
    _tTags ::
      !(Maybe [Tag]),
    _tResourceOwnerId ::
      !(Maybe Text),
    _tTransitGatewayAttachmentId ::
      !(Maybe Text),
    _tTransitGatewayOwnerId ::
      !(Maybe Text),
    _tTransitGatewayId ::
      !(Maybe Text)
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'TransitGatewayAttachment' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'tResourceId' - The ID of the resource.
--
-- * 'tCreationTime' - The creation time.
--
-- * 'tAssociation' - The association.
--
-- * 'tResourceType' - The resource type. Note that the @tgw-peering@ resource type has been deprecated.
--
-- * 'tState' - The attachment state. Note that the @initiating@ state has been deprecated.
--
-- * 'tTags' - The tags for the attachment.
--
-- * 'tResourceOwnerId' - The ID of the AWS account that owns the resource.
--
-- * 'tTransitGatewayAttachmentId' - The ID of the attachment.
--
-- * 'tTransitGatewayOwnerId' - The ID of the AWS account that owns the transit gateway.
--
-- * 'tTransitGatewayId' - The ID of the transit gateway.
transitGatewayAttachment ::
  TransitGatewayAttachment
transitGatewayAttachment =
  TransitGatewayAttachment'
    { _tResourceId = Nothing,
      _tCreationTime = Nothing,
      _tAssociation = Nothing,
      _tResourceType = Nothing,
      _tState = Nothing,
      _tTags = Nothing,
      _tResourceOwnerId = Nothing,
      _tTransitGatewayAttachmentId = Nothing,
      _tTransitGatewayOwnerId = Nothing,
      _tTransitGatewayId = Nothing
    }

-- | The ID of the resource.
tResourceId :: Lens' TransitGatewayAttachment (Maybe Text)
tResourceId = lens _tResourceId (\s a -> s {_tResourceId = a})

-- | The creation time.
tCreationTime :: Lens' TransitGatewayAttachment (Maybe UTCTime)
tCreationTime = lens _tCreationTime (\s a -> s {_tCreationTime = a}) . mapping _Time

-- | The association.
tAssociation :: Lens' TransitGatewayAttachment (Maybe TransitGatewayAttachmentAssociation)
tAssociation = lens _tAssociation (\s a -> s {_tAssociation = a})

-- | The resource type. Note that the @tgw-peering@ resource type has been deprecated.
tResourceType :: Lens' TransitGatewayAttachment (Maybe TransitGatewayAttachmentResourceType)
tResourceType = lens _tResourceType (\s a -> s {_tResourceType = a})

-- | The attachment state. Note that the @initiating@ state has been deprecated.
tState :: Lens' TransitGatewayAttachment (Maybe TransitGatewayAttachmentState)
tState = lens _tState (\s a -> s {_tState = a})

-- | The tags for the attachment.
tTags :: Lens' TransitGatewayAttachment [Tag]
tTags = lens _tTags (\s a -> s {_tTags = a}) . _Default . _Coerce

-- | The ID of the AWS account that owns the resource.
tResourceOwnerId :: Lens' TransitGatewayAttachment (Maybe Text)
tResourceOwnerId = lens _tResourceOwnerId (\s a -> s {_tResourceOwnerId = a})

-- | The ID of the attachment.
tTransitGatewayAttachmentId :: Lens' TransitGatewayAttachment (Maybe Text)
tTransitGatewayAttachmentId = lens _tTransitGatewayAttachmentId (\s a -> s {_tTransitGatewayAttachmentId = a})

-- | The ID of the AWS account that owns the transit gateway.
tTransitGatewayOwnerId :: Lens' TransitGatewayAttachment (Maybe Text)
tTransitGatewayOwnerId = lens _tTransitGatewayOwnerId (\s a -> s {_tTransitGatewayOwnerId = a})

-- | The ID of the transit gateway.
tTransitGatewayId :: Lens' TransitGatewayAttachment (Maybe Text)
tTransitGatewayId = lens _tTransitGatewayId (\s a -> s {_tTransitGatewayId = a})

instance FromXML TransitGatewayAttachment where
  parseXML x =
    TransitGatewayAttachment'
      <$> (x .@? "resourceId")
      <*> (x .@? "creationTime")
      <*> (x .@? "association")
      <*> (x .@? "resourceType")
      <*> (x .@? "state")
      <*> ( x .@? "tagSet" .!@ mempty
              >>= may (parseXMLList "item")
          )
      <*> (x .@? "resourceOwnerId")
      <*> (x .@? "transitGatewayAttachmentId")
      <*> (x .@? "transitGatewayOwnerId")
      <*> (x .@? "transitGatewayId")

instance Hashable TransitGatewayAttachment

instance NFData TransitGatewayAttachment

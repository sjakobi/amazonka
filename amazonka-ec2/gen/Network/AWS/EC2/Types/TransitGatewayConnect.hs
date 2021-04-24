{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.EC2.Types.TransitGatewayConnect
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.EC2.Types.TransitGatewayConnect where

import Network.AWS.EC2.Internal
import Network.AWS.EC2.Types.Tag
import Network.AWS.EC2.Types.TransitGatewayAttachmentState
import Network.AWS.EC2.Types.TransitGatewayConnectOptions
import Network.AWS.Lens
import Network.AWS.Prelude

-- | Describes a transit gateway Connect attachment.
--
--
--
-- /See:/ 'transitGatewayConnect' smart constructor.
data TransitGatewayConnect = TransitGatewayConnect'
  { _tgcCreationTime ::
      !(Maybe ISO8601),
    _tgcOptions ::
      !( Maybe
           TransitGatewayConnectOptions
       ),
    _tgcState ::
      !( Maybe
           TransitGatewayAttachmentState
       ),
    _tgcTags :: !(Maybe [Tag]),
    _tgcTransitGatewayAttachmentId ::
      !(Maybe Text),
    _tgcTransportTransitGatewayAttachmentId ::
      !(Maybe Text),
    _tgcTransitGatewayId ::
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

-- | Creates a value of 'TransitGatewayConnect' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'tgcCreationTime' - The creation time.
--
-- * 'tgcOptions' - The Connect attachment options.
--
-- * 'tgcState' - The state of the attachment.
--
-- * 'tgcTags' - The tags for the attachment.
--
-- * 'tgcTransitGatewayAttachmentId' - The ID of the Connect attachment.
--
-- * 'tgcTransportTransitGatewayAttachmentId' - The ID of the attachment from which the Connect attachment was created.
--
-- * 'tgcTransitGatewayId' - The ID of the transit gateway.
transitGatewayConnect ::
  TransitGatewayConnect
transitGatewayConnect =
  TransitGatewayConnect'
    { _tgcCreationTime = Nothing,
      _tgcOptions = Nothing,
      _tgcState = Nothing,
      _tgcTags = Nothing,
      _tgcTransitGatewayAttachmentId = Nothing,
      _tgcTransportTransitGatewayAttachmentId = Nothing,
      _tgcTransitGatewayId = Nothing
    }

-- | The creation time.
tgcCreationTime :: Lens' TransitGatewayConnect (Maybe UTCTime)
tgcCreationTime = lens _tgcCreationTime (\s a -> s {_tgcCreationTime = a}) . mapping _Time

-- | The Connect attachment options.
tgcOptions :: Lens' TransitGatewayConnect (Maybe TransitGatewayConnectOptions)
tgcOptions = lens _tgcOptions (\s a -> s {_tgcOptions = a})

-- | The state of the attachment.
tgcState :: Lens' TransitGatewayConnect (Maybe TransitGatewayAttachmentState)
tgcState = lens _tgcState (\s a -> s {_tgcState = a})

-- | The tags for the attachment.
tgcTags :: Lens' TransitGatewayConnect [Tag]
tgcTags = lens _tgcTags (\s a -> s {_tgcTags = a}) . _Default . _Coerce

-- | The ID of the Connect attachment.
tgcTransitGatewayAttachmentId :: Lens' TransitGatewayConnect (Maybe Text)
tgcTransitGatewayAttachmentId = lens _tgcTransitGatewayAttachmentId (\s a -> s {_tgcTransitGatewayAttachmentId = a})

-- | The ID of the attachment from which the Connect attachment was created.
tgcTransportTransitGatewayAttachmentId :: Lens' TransitGatewayConnect (Maybe Text)
tgcTransportTransitGatewayAttachmentId = lens _tgcTransportTransitGatewayAttachmentId (\s a -> s {_tgcTransportTransitGatewayAttachmentId = a})

-- | The ID of the transit gateway.
tgcTransitGatewayId :: Lens' TransitGatewayConnect (Maybe Text)
tgcTransitGatewayId = lens _tgcTransitGatewayId (\s a -> s {_tgcTransitGatewayId = a})

instance FromXML TransitGatewayConnect where
  parseXML x =
    TransitGatewayConnect'
      <$> (x .@? "creationTime")
      <*> (x .@? "options")
      <*> (x .@? "state")
      <*> ( x .@? "tagSet" .!@ mempty
              >>= may (parseXMLList "item")
          )
      <*> (x .@? "transitGatewayAttachmentId")
      <*> (x .@? "transportTransitGatewayAttachmentId")
      <*> (x .@? "transitGatewayId")

instance Hashable TransitGatewayConnect

instance NFData TransitGatewayConnect

{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.EC2.Types.TransitGateway
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.EC2.Types.TransitGateway where

import Network.AWS.EC2.Internal
import Network.AWS.EC2.Types.Tag
import Network.AWS.EC2.Types.TransitGatewayOptions
import Network.AWS.EC2.Types.TransitGatewayState
import Network.AWS.Lens
import Network.AWS.Prelude

-- | Describes a transit gateway.
--
--
--
-- /See:/ 'transitGateway' smart constructor.
data TransitGateway = TransitGateway'
  { _tgOwnerId ::
      !(Maybe Text),
    _tgCreationTime :: !(Maybe ISO8601),
    _tgOptions ::
      !(Maybe TransitGatewayOptions),
    _tgTransitGatewayARN :: !(Maybe Text),
    _tgState :: !(Maybe TransitGatewayState),
    _tgTags :: !(Maybe [Tag]),
    _tgDescription :: !(Maybe Text),
    _tgTransitGatewayId :: !(Maybe Text)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'TransitGateway' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'tgOwnerId' - The ID of the AWS account ID that owns the transit gateway.
--
-- * 'tgCreationTime' - The creation time.
--
-- * 'tgOptions' - The transit gateway options.
--
-- * 'tgTransitGatewayARN' - The Amazon Resource Name (ARN) of the transit gateway.
--
-- * 'tgState' - The state of the transit gateway.
--
-- * 'tgTags' - The tags for the transit gateway.
--
-- * 'tgDescription' - The description of the transit gateway.
--
-- * 'tgTransitGatewayId' - The ID of the transit gateway.
transitGateway ::
  TransitGateway
transitGateway =
  TransitGateway'
    { _tgOwnerId = Nothing,
      _tgCreationTime = Nothing,
      _tgOptions = Nothing,
      _tgTransitGatewayARN = Nothing,
      _tgState = Nothing,
      _tgTags = Nothing,
      _tgDescription = Nothing,
      _tgTransitGatewayId = Nothing
    }

-- | The ID of the AWS account ID that owns the transit gateway.
tgOwnerId :: Lens' TransitGateway (Maybe Text)
tgOwnerId = lens _tgOwnerId (\s a -> s {_tgOwnerId = a})

-- | The creation time.
tgCreationTime :: Lens' TransitGateway (Maybe UTCTime)
tgCreationTime = lens _tgCreationTime (\s a -> s {_tgCreationTime = a}) . mapping _Time

-- | The transit gateway options.
tgOptions :: Lens' TransitGateway (Maybe TransitGatewayOptions)
tgOptions = lens _tgOptions (\s a -> s {_tgOptions = a})

-- | The Amazon Resource Name (ARN) of the transit gateway.
tgTransitGatewayARN :: Lens' TransitGateway (Maybe Text)
tgTransitGatewayARN = lens _tgTransitGatewayARN (\s a -> s {_tgTransitGatewayARN = a})

-- | The state of the transit gateway.
tgState :: Lens' TransitGateway (Maybe TransitGatewayState)
tgState = lens _tgState (\s a -> s {_tgState = a})

-- | The tags for the transit gateway.
tgTags :: Lens' TransitGateway [Tag]
tgTags = lens _tgTags (\s a -> s {_tgTags = a}) . _Default . _Coerce

-- | The description of the transit gateway.
tgDescription :: Lens' TransitGateway (Maybe Text)
tgDescription = lens _tgDescription (\s a -> s {_tgDescription = a})

-- | The ID of the transit gateway.
tgTransitGatewayId :: Lens' TransitGateway (Maybe Text)
tgTransitGatewayId = lens _tgTransitGatewayId (\s a -> s {_tgTransitGatewayId = a})

instance FromXML TransitGateway where
  parseXML x =
    TransitGateway'
      <$> (x .@? "ownerId")
      <*> (x .@? "creationTime")
      <*> (x .@? "options")
      <*> (x .@? "transitGatewayArn")
      <*> (x .@? "state")
      <*> ( x .@? "tagSet" .!@ mempty
              >>= may (parseXMLList "item")
          )
      <*> (x .@? "description")
      <*> (x .@? "transitGatewayId")

instance Hashable TransitGateway

instance NFData TransitGateway

{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.EC2.Types.TransitGatewayMulticastDomain
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.EC2.Types.TransitGatewayMulticastDomain where

import Network.AWS.EC2.Internal
import Network.AWS.EC2.Types.Tag
import Network.AWS.EC2.Types.TransitGatewayMulticastDomainOptions
import Network.AWS.EC2.Types.TransitGatewayMulticastDomainState
import Network.AWS.Lens
import Network.AWS.Prelude

-- | Describes the transit gateway multicast domain.
--
--
--
-- /See:/ 'transitGatewayMulticastDomain' smart constructor.
data TransitGatewayMulticastDomain = TransitGatewayMulticastDomain'
  { _tgmdOwnerId ::
      !( Maybe
           Text
       ),
    _tgmdCreationTime ::
      !( Maybe
           ISO8601
       ),
    _tgmdTransitGatewayMulticastDomainId ::
      !( Maybe
           Text
       ),
    _tgmdOptions ::
      !( Maybe
           TransitGatewayMulticastDomainOptions
       ),
    _tgmdState ::
      !( Maybe
           TransitGatewayMulticastDomainState
       ),
    _tgmdTags ::
      !( Maybe
           [Tag]
       ),
    _tgmdTransitGatewayMulticastDomainARN ::
      !( Maybe
           Text
       ),
    _tgmdTransitGatewayId ::
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

-- | Creates a value of 'TransitGatewayMulticastDomain' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'tgmdOwnerId' - The ID of the AWS account that owns the transit gateway multiicast domain.
--
-- * 'tgmdCreationTime' - The time the transit gateway multicast domain was created.
--
-- * 'tgmdTransitGatewayMulticastDomainId' - The ID of the transit gateway multicast domain.
--
-- * 'tgmdOptions' - The options for the transit gateway multicast domain.
--
-- * 'tgmdState' - The state of the transit gateway multicast domain.
--
-- * 'tgmdTags' - The tags for the transit gateway multicast domain.
--
-- * 'tgmdTransitGatewayMulticastDomainARN' - The Amazon Resource Name (ARN) of the transit gateway multicast domain.
--
-- * 'tgmdTransitGatewayId' - The ID of the transit gateway.
transitGatewayMulticastDomain ::
  TransitGatewayMulticastDomain
transitGatewayMulticastDomain =
  TransitGatewayMulticastDomain'
    { _tgmdOwnerId =
        Nothing,
      _tgmdCreationTime = Nothing,
      _tgmdTransitGatewayMulticastDomainId =
        Nothing,
      _tgmdOptions = Nothing,
      _tgmdState = Nothing,
      _tgmdTags = Nothing,
      _tgmdTransitGatewayMulticastDomainARN =
        Nothing,
      _tgmdTransitGatewayId = Nothing
    }

-- | The ID of the AWS account that owns the transit gateway multiicast domain.
tgmdOwnerId :: Lens' TransitGatewayMulticastDomain (Maybe Text)
tgmdOwnerId = lens _tgmdOwnerId (\s a -> s {_tgmdOwnerId = a})

-- | The time the transit gateway multicast domain was created.
tgmdCreationTime :: Lens' TransitGatewayMulticastDomain (Maybe UTCTime)
tgmdCreationTime = lens _tgmdCreationTime (\s a -> s {_tgmdCreationTime = a}) . mapping _Time

-- | The ID of the transit gateway multicast domain.
tgmdTransitGatewayMulticastDomainId :: Lens' TransitGatewayMulticastDomain (Maybe Text)
tgmdTransitGatewayMulticastDomainId = lens _tgmdTransitGatewayMulticastDomainId (\s a -> s {_tgmdTransitGatewayMulticastDomainId = a})

-- | The options for the transit gateway multicast domain.
tgmdOptions :: Lens' TransitGatewayMulticastDomain (Maybe TransitGatewayMulticastDomainOptions)
tgmdOptions = lens _tgmdOptions (\s a -> s {_tgmdOptions = a})

-- | The state of the transit gateway multicast domain.
tgmdState :: Lens' TransitGatewayMulticastDomain (Maybe TransitGatewayMulticastDomainState)
tgmdState = lens _tgmdState (\s a -> s {_tgmdState = a})

-- | The tags for the transit gateway multicast domain.
tgmdTags :: Lens' TransitGatewayMulticastDomain [Tag]
tgmdTags = lens _tgmdTags (\s a -> s {_tgmdTags = a}) . _Default . _Coerce

-- | The Amazon Resource Name (ARN) of the transit gateway multicast domain.
tgmdTransitGatewayMulticastDomainARN :: Lens' TransitGatewayMulticastDomain (Maybe Text)
tgmdTransitGatewayMulticastDomainARN = lens _tgmdTransitGatewayMulticastDomainARN (\s a -> s {_tgmdTransitGatewayMulticastDomainARN = a})

-- | The ID of the transit gateway.
tgmdTransitGatewayId :: Lens' TransitGatewayMulticastDomain (Maybe Text)
tgmdTransitGatewayId = lens _tgmdTransitGatewayId (\s a -> s {_tgmdTransitGatewayId = a})

instance FromXML TransitGatewayMulticastDomain where
  parseXML x =
    TransitGatewayMulticastDomain'
      <$> (x .@? "ownerId")
      <*> (x .@? "creationTime")
      <*> (x .@? "transitGatewayMulticastDomainId")
      <*> (x .@? "options")
      <*> (x .@? "state")
      <*> ( x .@? "tagSet" .!@ mempty
              >>= may (parseXMLList "item")
          )
      <*> (x .@? "transitGatewayMulticastDomainArn")
      <*> (x .@? "transitGatewayId")

instance Hashable TransitGatewayMulticastDomain

instance NFData TransitGatewayMulticastDomain

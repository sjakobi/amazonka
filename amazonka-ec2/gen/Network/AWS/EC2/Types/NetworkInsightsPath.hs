{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.EC2.Types.NetworkInsightsPath
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.EC2.Types.NetworkInsightsPath where

import Network.AWS.EC2.Internal
import Network.AWS.EC2.Types.Protocol
import Network.AWS.EC2.Types.Tag
import Network.AWS.Lens
import Network.AWS.Prelude

-- | Describes a path.
--
--
--
-- /See:/ 'networkInsightsPath' smart constructor.
data NetworkInsightsPath = NetworkInsightsPath'
  { _nipCreatedDate ::
      !(Maybe ISO8601),
    _nipSource :: !(Maybe Text),
    _nipDestinationIP ::
      !(Maybe Text),
    _nipDestination ::
      !(Maybe Text),
    _nipSourceIP :: !(Maybe Text),
    _nipTags :: !(Maybe [Tag]),
    _nipProtocol ::
      !(Maybe Protocol),
    _nipNetworkInsightsPathARN ::
      !(Maybe Text),
    _nipNetworkInsightsPathId ::
      !(Maybe Text),
    _nipDestinationPort ::
      !(Maybe Int)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'NetworkInsightsPath' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'nipCreatedDate' - The time stamp when the path was created.
--
-- * 'nipSource' - The AWS resource that is the source of the path.
--
-- * 'nipDestinationIP' - The IP address of the AWS resource that is the destination of the path.
--
-- * 'nipDestination' - The AWS resource that is the destination of the path.
--
-- * 'nipSourceIP' - The IP address of the AWS resource that is the source of the path.
--
-- * 'nipTags' - The tags associated with the path.
--
-- * 'nipProtocol' - The protocol.
--
-- * 'nipNetworkInsightsPathARN' - The Amazon Resource Name (ARN) of the path.
--
-- * 'nipNetworkInsightsPathId' - The ID of the path.
--
-- * 'nipDestinationPort' - The destination port.
networkInsightsPath ::
  NetworkInsightsPath
networkInsightsPath =
  NetworkInsightsPath'
    { _nipCreatedDate = Nothing,
      _nipSource = Nothing,
      _nipDestinationIP = Nothing,
      _nipDestination = Nothing,
      _nipSourceIP = Nothing,
      _nipTags = Nothing,
      _nipProtocol = Nothing,
      _nipNetworkInsightsPathARN = Nothing,
      _nipNetworkInsightsPathId = Nothing,
      _nipDestinationPort = Nothing
    }

-- | The time stamp when the path was created.
nipCreatedDate :: Lens' NetworkInsightsPath (Maybe UTCTime)
nipCreatedDate = lens _nipCreatedDate (\s a -> s {_nipCreatedDate = a}) . mapping _Time

-- | The AWS resource that is the source of the path.
nipSource :: Lens' NetworkInsightsPath (Maybe Text)
nipSource = lens _nipSource (\s a -> s {_nipSource = a})

-- | The IP address of the AWS resource that is the destination of the path.
nipDestinationIP :: Lens' NetworkInsightsPath (Maybe Text)
nipDestinationIP = lens _nipDestinationIP (\s a -> s {_nipDestinationIP = a})

-- | The AWS resource that is the destination of the path.
nipDestination :: Lens' NetworkInsightsPath (Maybe Text)
nipDestination = lens _nipDestination (\s a -> s {_nipDestination = a})

-- | The IP address of the AWS resource that is the source of the path.
nipSourceIP :: Lens' NetworkInsightsPath (Maybe Text)
nipSourceIP = lens _nipSourceIP (\s a -> s {_nipSourceIP = a})

-- | The tags associated with the path.
nipTags :: Lens' NetworkInsightsPath [Tag]
nipTags = lens _nipTags (\s a -> s {_nipTags = a}) . _Default . _Coerce

-- | The protocol.
nipProtocol :: Lens' NetworkInsightsPath (Maybe Protocol)
nipProtocol = lens _nipProtocol (\s a -> s {_nipProtocol = a})

-- | The Amazon Resource Name (ARN) of the path.
nipNetworkInsightsPathARN :: Lens' NetworkInsightsPath (Maybe Text)
nipNetworkInsightsPathARN = lens _nipNetworkInsightsPathARN (\s a -> s {_nipNetworkInsightsPathARN = a})

-- | The ID of the path.
nipNetworkInsightsPathId :: Lens' NetworkInsightsPath (Maybe Text)
nipNetworkInsightsPathId = lens _nipNetworkInsightsPathId (\s a -> s {_nipNetworkInsightsPathId = a})

-- | The destination port.
nipDestinationPort :: Lens' NetworkInsightsPath (Maybe Int)
nipDestinationPort = lens _nipDestinationPort (\s a -> s {_nipDestinationPort = a})

instance FromXML NetworkInsightsPath where
  parseXML x =
    NetworkInsightsPath'
      <$> (x .@? "createdDate")
      <*> (x .@? "source")
      <*> (x .@? "destinationIp")
      <*> (x .@? "destination")
      <*> (x .@? "sourceIp")
      <*> ( x .@? "tagSet" .!@ mempty
              >>= may (parseXMLList "item")
          )
      <*> (x .@? "protocol")
      <*> (x .@? "networkInsightsPathArn")
      <*> (x .@? "networkInsightsPathId")
      <*> (x .@? "destinationPort")

instance Hashable NetworkInsightsPath

instance NFData NetworkInsightsPath

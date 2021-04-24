{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.EC2.Types.PlacementGroup
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.EC2.Types.PlacementGroup where

import Network.AWS.EC2.Internal
import Network.AWS.EC2.Types.PlacementGroupState
import Network.AWS.EC2.Types.PlacementStrategy
import Network.AWS.EC2.Types.Tag
import Network.AWS.Lens
import Network.AWS.Prelude

-- | Describes a placement group.
--
--
--
-- /See:/ 'placementGroup' smart constructor.
data PlacementGroup = PlacementGroup'
  { _pgStrategy ::
      !(Maybe PlacementStrategy),
    _pgGroupName :: !(Maybe Text),
    _pgGroupId :: !(Maybe Text),
    _pgState :: !(Maybe PlacementGroupState),
    _pgTags :: !(Maybe [Tag]),
    _pgPartitionCount :: !(Maybe Int)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'PlacementGroup' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pgStrategy' - The placement strategy.
--
-- * 'pgGroupName' - The name of the placement group.
--
-- * 'pgGroupId' - The ID of the placement group.
--
-- * 'pgState' - The state of the placement group.
--
-- * 'pgTags' - Any tags applied to the placement group.
--
-- * 'pgPartitionCount' - The number of partitions. Valid only if __strategy__ is set to @partition@ .
placementGroup ::
  PlacementGroup
placementGroup =
  PlacementGroup'
    { _pgStrategy = Nothing,
      _pgGroupName = Nothing,
      _pgGroupId = Nothing,
      _pgState = Nothing,
      _pgTags = Nothing,
      _pgPartitionCount = Nothing
    }

-- | The placement strategy.
pgStrategy :: Lens' PlacementGroup (Maybe PlacementStrategy)
pgStrategy = lens _pgStrategy (\s a -> s {_pgStrategy = a})

-- | The name of the placement group.
pgGroupName :: Lens' PlacementGroup (Maybe Text)
pgGroupName = lens _pgGroupName (\s a -> s {_pgGroupName = a})

-- | The ID of the placement group.
pgGroupId :: Lens' PlacementGroup (Maybe Text)
pgGroupId = lens _pgGroupId (\s a -> s {_pgGroupId = a})

-- | The state of the placement group.
pgState :: Lens' PlacementGroup (Maybe PlacementGroupState)
pgState = lens _pgState (\s a -> s {_pgState = a})

-- | Any tags applied to the placement group.
pgTags :: Lens' PlacementGroup [Tag]
pgTags = lens _pgTags (\s a -> s {_pgTags = a}) . _Default . _Coerce

-- | The number of partitions. Valid only if __strategy__ is set to @partition@ .
pgPartitionCount :: Lens' PlacementGroup (Maybe Int)
pgPartitionCount = lens _pgPartitionCount (\s a -> s {_pgPartitionCount = a})

instance FromXML PlacementGroup where
  parseXML x =
    PlacementGroup'
      <$> (x .@? "strategy")
      <*> (x .@? "groupName")
      <*> (x .@? "groupId")
      <*> (x .@? "state")
      <*> ( x .@? "tagSet" .!@ mempty
              >>= may (parseXMLList "item")
          )
      <*> (x .@? "partitionCount")

instance Hashable PlacementGroup

instance NFData PlacementGroup

{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.DynamoDB.Types.SourceTableFeatureDetails
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.DynamoDB.Types.SourceTableFeatureDetails where

import Network.AWS.DynamoDB.Types.GlobalSecondaryIndexInfo
import Network.AWS.DynamoDB.Types.LocalSecondaryIndexInfo
import Network.AWS.DynamoDB.Types.SSEDescription
import Network.AWS.DynamoDB.Types.StreamSpecification
import Network.AWS.DynamoDB.Types.TimeToLiveDescription
import Network.AWS.Lens
import Network.AWS.Prelude

-- | Contains the details of the features enabled on the table when the backup was created. For example, LSIs, GSIs, streams, TTL.
--
--
--
-- /See:/ 'sourceTableFeatureDetails' smart constructor.
data SourceTableFeatureDetails = SourceTableFeatureDetails'
  { _stfdLocalSecondaryIndexes ::
      !( Maybe
           [LocalSecondaryIndexInfo]
       ),
    _stfdGlobalSecondaryIndexes ::
      !( Maybe
           [GlobalSecondaryIndexInfo]
       ),
    _stfdTimeToLiveDescription ::
      !( Maybe
           TimeToLiveDescription
       ),
    _stfdSSEDescription ::
      !( Maybe
           SSEDescription
       ),
    _stfdStreamDescription ::
      !( Maybe
           StreamSpecification
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

-- | Creates a value of 'SourceTableFeatureDetails' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'stfdLocalSecondaryIndexes' - Represents the LSI properties for the table when the backup was created. It includes the IndexName, KeySchema and Projection for the LSIs on the table at the time of backup.
--
-- * 'stfdGlobalSecondaryIndexes' - Represents the GSI properties for the table when the backup was created. It includes the IndexName, KeySchema, Projection, and ProvisionedThroughput for the GSIs on the table at the time of backup.
--
-- * 'stfdTimeToLiveDescription' - Time to Live settings on the table when the backup was created.
--
-- * 'stfdSSEDescription' - The description of the server-side encryption status on the table when the backup was created.
--
-- * 'stfdStreamDescription' - Stream settings on the table when the backup was created.
sourceTableFeatureDetails ::
  SourceTableFeatureDetails
sourceTableFeatureDetails =
  SourceTableFeatureDetails'
    { _stfdLocalSecondaryIndexes =
        Nothing,
      _stfdGlobalSecondaryIndexes = Nothing,
      _stfdTimeToLiveDescription = Nothing,
      _stfdSSEDescription = Nothing,
      _stfdStreamDescription = Nothing
    }

-- | Represents the LSI properties for the table when the backup was created. It includes the IndexName, KeySchema and Projection for the LSIs on the table at the time of backup.
stfdLocalSecondaryIndexes :: Lens' SourceTableFeatureDetails [LocalSecondaryIndexInfo]
stfdLocalSecondaryIndexes = lens _stfdLocalSecondaryIndexes (\s a -> s {_stfdLocalSecondaryIndexes = a}) . _Default . _Coerce

-- | Represents the GSI properties for the table when the backup was created. It includes the IndexName, KeySchema, Projection, and ProvisionedThroughput for the GSIs on the table at the time of backup.
stfdGlobalSecondaryIndexes :: Lens' SourceTableFeatureDetails [GlobalSecondaryIndexInfo]
stfdGlobalSecondaryIndexes = lens _stfdGlobalSecondaryIndexes (\s a -> s {_stfdGlobalSecondaryIndexes = a}) . _Default . _Coerce

-- | Time to Live settings on the table when the backup was created.
stfdTimeToLiveDescription :: Lens' SourceTableFeatureDetails (Maybe TimeToLiveDescription)
stfdTimeToLiveDescription = lens _stfdTimeToLiveDescription (\s a -> s {_stfdTimeToLiveDescription = a})

-- | The description of the server-side encryption status on the table when the backup was created.
stfdSSEDescription :: Lens' SourceTableFeatureDetails (Maybe SSEDescription)
stfdSSEDescription = lens _stfdSSEDescription (\s a -> s {_stfdSSEDescription = a})

-- | Stream settings on the table when the backup was created.
stfdStreamDescription :: Lens' SourceTableFeatureDetails (Maybe StreamSpecification)
stfdStreamDescription = lens _stfdStreamDescription (\s a -> s {_stfdStreamDescription = a})

instance FromJSON SourceTableFeatureDetails where
  parseJSON =
    withObject
      "SourceTableFeatureDetails"
      ( \x ->
          SourceTableFeatureDetails'
            <$> (x .:? "LocalSecondaryIndexes" .!= mempty)
            <*> (x .:? "GlobalSecondaryIndexes" .!= mempty)
            <*> (x .:? "TimeToLiveDescription")
            <*> (x .:? "SSEDescription")
            <*> (x .:? "StreamDescription")
      )

instance Hashable SourceTableFeatureDetails

instance NFData SourceTableFeatureDetails

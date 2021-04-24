{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.DynamoDB.Types.ConsumedCapacity
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.DynamoDB.Types.ConsumedCapacity where

import Network.AWS.DynamoDB.Types.Capacity
import Network.AWS.Lens
import Network.AWS.Prelude

-- | The capacity units consumed by an operation. The data returned includes the total provisioned throughput consumed, along with statistics for the table and any indexes involved in the operation. @ConsumedCapacity@ is only returned if the request asked for it. For more information, see <https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/ProvisionedThroughputIntro.html Provisioned Throughput> in the /Amazon DynamoDB Developer Guide/ .
--
--
--
-- /See:/ 'consumedCapacity' smart constructor.
data ConsumedCapacity = ConsumedCapacity'
  { _ccLocalSecondaryIndexes ::
      !(Maybe (Map Text Capacity)),
    _ccGlobalSecondaryIndexes ::
      !(Maybe (Map Text Capacity)),
    _ccTableName :: !(Maybe Text),
    _ccWriteCapacityUnits ::
      !(Maybe Double),
    _ccCapacityUnits :: !(Maybe Double),
    _ccTable :: !(Maybe Capacity),
    _ccReadCapacityUnits ::
      !(Maybe Double)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'ConsumedCapacity' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ccLocalSecondaryIndexes' - The amount of throughput consumed on each local index affected by the operation.
--
-- * 'ccGlobalSecondaryIndexes' - The amount of throughput consumed on each global index affected by the operation.
--
-- * 'ccTableName' - The name of the table that was affected by the operation.
--
-- * 'ccWriteCapacityUnits' - The total number of write capacity units consumed by the operation.
--
-- * 'ccCapacityUnits' - The total number of capacity units consumed by the operation.
--
-- * 'ccTable' - The amount of throughput consumed on the table affected by the operation.
--
-- * 'ccReadCapacityUnits' - The total number of read capacity units consumed by the operation.
consumedCapacity ::
  ConsumedCapacity
consumedCapacity =
  ConsumedCapacity'
    { _ccLocalSecondaryIndexes =
        Nothing,
      _ccGlobalSecondaryIndexes = Nothing,
      _ccTableName = Nothing,
      _ccWriteCapacityUnits = Nothing,
      _ccCapacityUnits = Nothing,
      _ccTable = Nothing,
      _ccReadCapacityUnits = Nothing
    }

-- | The amount of throughput consumed on each local index affected by the operation.
ccLocalSecondaryIndexes :: Lens' ConsumedCapacity (HashMap Text Capacity)
ccLocalSecondaryIndexes = lens _ccLocalSecondaryIndexes (\s a -> s {_ccLocalSecondaryIndexes = a}) . _Default . _Map

-- | The amount of throughput consumed on each global index affected by the operation.
ccGlobalSecondaryIndexes :: Lens' ConsumedCapacity (HashMap Text Capacity)
ccGlobalSecondaryIndexes = lens _ccGlobalSecondaryIndexes (\s a -> s {_ccGlobalSecondaryIndexes = a}) . _Default . _Map

-- | The name of the table that was affected by the operation.
ccTableName :: Lens' ConsumedCapacity (Maybe Text)
ccTableName = lens _ccTableName (\s a -> s {_ccTableName = a})

-- | The total number of write capacity units consumed by the operation.
ccWriteCapacityUnits :: Lens' ConsumedCapacity (Maybe Double)
ccWriteCapacityUnits = lens _ccWriteCapacityUnits (\s a -> s {_ccWriteCapacityUnits = a})

-- | The total number of capacity units consumed by the operation.
ccCapacityUnits :: Lens' ConsumedCapacity (Maybe Double)
ccCapacityUnits = lens _ccCapacityUnits (\s a -> s {_ccCapacityUnits = a})

-- | The amount of throughput consumed on the table affected by the operation.
ccTable :: Lens' ConsumedCapacity (Maybe Capacity)
ccTable = lens _ccTable (\s a -> s {_ccTable = a})

-- | The total number of read capacity units consumed by the operation.
ccReadCapacityUnits :: Lens' ConsumedCapacity (Maybe Double)
ccReadCapacityUnits = lens _ccReadCapacityUnits (\s a -> s {_ccReadCapacityUnits = a})

instance FromJSON ConsumedCapacity where
  parseJSON =
    withObject
      "ConsumedCapacity"
      ( \x ->
          ConsumedCapacity'
            <$> (x .:? "LocalSecondaryIndexes" .!= mempty)
            <*> (x .:? "GlobalSecondaryIndexes" .!= mempty)
            <*> (x .:? "TableName")
            <*> (x .:? "WriteCapacityUnits")
            <*> (x .:? "CapacityUnits")
            <*> (x .:? "Table")
            <*> (x .:? "ReadCapacityUnits")
      )

instance Hashable ConsumedCapacity

instance NFData ConsumedCapacity

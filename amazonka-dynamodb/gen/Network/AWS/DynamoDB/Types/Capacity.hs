{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.DynamoDB.Types.Capacity
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.DynamoDB.Types.Capacity where

import Network.AWS.Lens
import Network.AWS.Prelude

-- | Represents the amount of provisioned throughput capacity consumed on a table or an index.
--
--
--
-- /See:/ 'capacity' smart constructor.
data Capacity = Capacity'
  { _cWriteCapacityUnits ::
      !(Maybe Double),
    _cCapacityUnits :: !(Maybe Double),
    _cReadCapacityUnits :: !(Maybe Double)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'Capacity' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cWriteCapacityUnits' - The total number of write capacity units consumed on a table or an index.
--
-- * 'cCapacityUnits' - The total number of capacity units consumed on a table or an index.
--
-- * 'cReadCapacityUnits' - The total number of read capacity units consumed on a table or an index.
capacity ::
  Capacity
capacity =
  Capacity'
    { _cWriteCapacityUnits = Nothing,
      _cCapacityUnits = Nothing,
      _cReadCapacityUnits = Nothing
    }

-- | The total number of write capacity units consumed on a table or an index.
cWriteCapacityUnits :: Lens' Capacity (Maybe Double)
cWriteCapacityUnits = lens _cWriteCapacityUnits (\s a -> s {_cWriteCapacityUnits = a})

-- | The total number of capacity units consumed on a table or an index.
cCapacityUnits :: Lens' Capacity (Maybe Double)
cCapacityUnits = lens _cCapacityUnits (\s a -> s {_cCapacityUnits = a})

-- | The total number of read capacity units consumed on a table or an index.
cReadCapacityUnits :: Lens' Capacity (Maybe Double)
cReadCapacityUnits = lens _cReadCapacityUnits (\s a -> s {_cReadCapacityUnits = a})

instance FromJSON Capacity where
  parseJSON =
    withObject
      "Capacity"
      ( \x ->
          Capacity'
            <$> (x .:? "WriteCapacityUnits")
            <*> (x .:? "CapacityUnits")
            <*> (x .:? "ReadCapacityUnits")
      )

instance Hashable Capacity

instance NFData Capacity

{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Glue.Types.PartitionError
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Glue.Types.PartitionError where

import Network.AWS.Glue.Types.ErrorDetail
import Network.AWS.Lens
import Network.AWS.Prelude

-- | Contains information about a partition error.
--
--
--
-- /See:/ 'partitionError' smart constructor.
data PartitionError = PartitionError'
  { _peErrorDetail ::
      !(Maybe ErrorDetail),
    _pePartitionValues :: !(Maybe [Text])
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'PartitionError' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'peErrorDetail' - The details about the partition error.
--
-- * 'pePartitionValues' - The values that define the partition.
partitionError ::
  PartitionError
partitionError =
  PartitionError'
    { _peErrorDetail = Nothing,
      _pePartitionValues = Nothing
    }

-- | The details about the partition error.
peErrorDetail :: Lens' PartitionError (Maybe ErrorDetail)
peErrorDetail = lens _peErrorDetail (\s a -> s {_peErrorDetail = a})

-- | The values that define the partition.
pePartitionValues :: Lens' PartitionError [Text]
pePartitionValues = lens _pePartitionValues (\s a -> s {_pePartitionValues = a}) . _Default . _Coerce

instance FromJSON PartitionError where
  parseJSON =
    withObject
      "PartitionError"
      ( \x ->
          PartitionError'
            <$> (x .:? "ErrorDetail")
            <*> (x .:? "PartitionValues" .!= mempty)
      )

instance Hashable PartitionError

instance NFData PartitionError

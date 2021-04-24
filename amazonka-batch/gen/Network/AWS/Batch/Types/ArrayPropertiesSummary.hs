{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Batch.Types.ArrayPropertiesSummary
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Batch.Types.ArrayPropertiesSummary where

import Network.AWS.Lens
import Network.AWS.Prelude

-- | An object representing the array properties of a job.
--
--
--
-- /See:/ 'arrayPropertiesSummary' smart constructor.
data ArrayPropertiesSummary = ArrayPropertiesSummary'
  { _apsIndex ::
      !(Maybe Int),
    _apsSize :: !(Maybe Int)
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'ArrayPropertiesSummary' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'apsIndex' - The job index within the array that's associated with this job. This parameter is returned for children of array jobs.
--
-- * 'apsSize' - The size of the array job. This parameter is returned for parent array jobs.
arrayPropertiesSummary ::
  ArrayPropertiesSummary
arrayPropertiesSummary =
  ArrayPropertiesSummary'
    { _apsIndex = Nothing,
      _apsSize = Nothing
    }

-- | The job index within the array that's associated with this job. This parameter is returned for children of array jobs.
apsIndex :: Lens' ArrayPropertiesSummary (Maybe Int)
apsIndex = lens _apsIndex (\s a -> s {_apsIndex = a})

-- | The size of the array job. This parameter is returned for parent array jobs.
apsSize :: Lens' ArrayPropertiesSummary (Maybe Int)
apsSize = lens _apsSize (\s a -> s {_apsSize = a})

instance FromJSON ArrayPropertiesSummary where
  parseJSON =
    withObject
      "ArrayPropertiesSummary"
      ( \x ->
          ArrayPropertiesSummary'
            <$> (x .:? "index") <*> (x .:? "size")
      )

instance Hashable ArrayPropertiesSummary

instance NFData ArrayPropertiesSummary

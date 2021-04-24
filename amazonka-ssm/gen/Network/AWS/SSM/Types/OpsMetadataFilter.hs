{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.SSM.Types.OpsMetadataFilter
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.SSM.Types.OpsMetadataFilter where

import Network.AWS.Lens
import Network.AWS.Prelude

-- | A filter to limit the number of OpsMetadata objects displayed.
--
--
--
-- /See:/ 'opsMetadataFilter' smart constructor.
data OpsMetadataFilter = OpsMetadataFilter'
  { _omfKey ::
      !Text,
    _omfValues :: !(List1 Text)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'OpsMetadataFilter' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'omfKey' - A filter key.
--
-- * 'omfValues' - A filter value.
opsMetadataFilter ::
  -- | 'omfKey'
  Text ->
  -- | 'omfValues'
  NonEmpty Text ->
  OpsMetadataFilter
opsMetadataFilter pKey_ pValues_ =
  OpsMetadataFilter'
    { _omfKey = pKey_,
      _omfValues = _List1 # pValues_
    }

-- | A filter key.
omfKey :: Lens' OpsMetadataFilter Text
omfKey = lens _omfKey (\s a -> s {_omfKey = a})

-- | A filter value.
omfValues :: Lens' OpsMetadataFilter (NonEmpty Text)
omfValues = lens _omfValues (\s a -> s {_omfValues = a}) . _List1

instance Hashable OpsMetadataFilter

instance NFData OpsMetadataFilter

instance ToJSON OpsMetadataFilter where
  toJSON OpsMetadataFilter' {..} =
    object
      ( catMaybes
          [ Just ("Key" .= _omfKey),
            Just ("Values" .= _omfValues)
          ]
      )

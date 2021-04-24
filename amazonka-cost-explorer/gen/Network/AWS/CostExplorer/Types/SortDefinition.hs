{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.CostExplorer.Types.SortDefinition
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.CostExplorer.Types.SortDefinition where

import Network.AWS.CostExplorer.Types.SortOrder
import Network.AWS.Lens
import Network.AWS.Prelude

-- | The details of how to sort the data.
--
--
--
-- /See:/ 'sortDefinition' smart constructor.
data SortDefinition = SortDefinition'
  { _sdSortOrder ::
      !(Maybe SortOrder),
    _sdKey :: !Text
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'SortDefinition' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'sdSortOrder' - The order in which to sort the data.
--
-- * 'sdKey' - The key by which to sort the data.
sortDefinition ::
  -- | 'sdKey'
  Text ->
  SortDefinition
sortDefinition pKey_ =
  SortDefinition'
    { _sdSortOrder = Nothing,
      _sdKey = pKey_
    }

-- | The order in which to sort the data.
sdSortOrder :: Lens' SortDefinition (Maybe SortOrder)
sdSortOrder = lens _sdSortOrder (\s a -> s {_sdSortOrder = a})

-- | The key by which to sort the data.
sdKey :: Lens' SortDefinition Text
sdKey = lens _sdKey (\s a -> s {_sdKey = a})

instance Hashable SortDefinition

instance NFData SortDefinition

instance ToJSON SortDefinition where
  toJSON SortDefinition' {..} =
    object
      ( catMaybes
          [ ("SortOrder" .=) <$> _sdSortOrder,
            Just ("Key" .= _sdKey)
          ]
      )

{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.ServiceCatalog.Types.ListTagOptionsFilters
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.ServiceCatalog.Types.ListTagOptionsFilters where

import Network.AWS.Lens
import Network.AWS.Prelude

-- | Filters to use when listing TagOptions.
--
--
--
-- /See:/ 'listTagOptionsFilters' smart constructor.
data ListTagOptionsFilters = ListTagOptionsFilters'
  { _ltofKey ::
      !(Maybe Text),
    _ltofActive ::
      !(Maybe Bool),
    _ltofValue :: !(Maybe Text)
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'ListTagOptionsFilters' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ltofKey' - The TagOption key.
--
-- * 'ltofActive' - The active state.
--
-- * 'ltofValue' - The TagOption value.
listTagOptionsFilters ::
  ListTagOptionsFilters
listTagOptionsFilters =
  ListTagOptionsFilters'
    { _ltofKey = Nothing,
      _ltofActive = Nothing,
      _ltofValue = Nothing
    }

-- | The TagOption key.
ltofKey :: Lens' ListTagOptionsFilters (Maybe Text)
ltofKey = lens _ltofKey (\s a -> s {_ltofKey = a})

-- | The active state.
ltofActive :: Lens' ListTagOptionsFilters (Maybe Bool)
ltofActive = lens _ltofActive (\s a -> s {_ltofActive = a})

-- | The TagOption value.
ltofValue :: Lens' ListTagOptionsFilters (Maybe Text)
ltofValue = lens _ltofValue (\s a -> s {_ltofValue = a})

instance Hashable ListTagOptionsFilters

instance NFData ListTagOptionsFilters

instance ToJSON ListTagOptionsFilters where
  toJSON ListTagOptionsFilters' {..} =
    object
      ( catMaybes
          [ ("Key" .=) <$> _ltofKey,
            ("Active" .=) <$> _ltofActive,
            ("Value" .=) <$> _ltofValue
          ]
      )

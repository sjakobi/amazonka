{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.ServiceCatalog.Types.ListRecordHistorySearchFilter
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.ServiceCatalog.Types.ListRecordHistorySearchFilter where

import Network.AWS.Lens
import Network.AWS.Prelude

-- | The search filter to use when listing history records.
--
--
--
-- /See:/ 'listRecordHistorySearchFilter' smart constructor.
data ListRecordHistorySearchFilter = ListRecordHistorySearchFilter'
  { _lrhsfKey ::
      !( Maybe
           Text
       ),
    _lrhsfValue ::
      !( Maybe
           Text
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

-- | Creates a value of 'ListRecordHistorySearchFilter' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lrhsfKey' - The filter key.     * @product@ - Filter results based on the specified product identifier.     * @provisionedproduct@ - Filter results based on the provisioned product identifier.
--
-- * 'lrhsfValue' - The filter value.
listRecordHistorySearchFilter ::
  ListRecordHistorySearchFilter
listRecordHistorySearchFilter =
  ListRecordHistorySearchFilter'
    { _lrhsfKey = Nothing,
      _lrhsfValue = Nothing
    }

-- | The filter key.     * @product@ - Filter results based on the specified product identifier.     * @provisionedproduct@ - Filter results based on the provisioned product identifier.
lrhsfKey :: Lens' ListRecordHistorySearchFilter (Maybe Text)
lrhsfKey = lens _lrhsfKey (\s a -> s {_lrhsfKey = a})

-- | The filter value.
lrhsfValue :: Lens' ListRecordHistorySearchFilter (Maybe Text)
lrhsfValue = lens _lrhsfValue (\s a -> s {_lrhsfValue = a})

instance Hashable ListRecordHistorySearchFilter

instance NFData ListRecordHistorySearchFilter

instance ToJSON ListRecordHistorySearchFilter where
  toJSON ListRecordHistorySearchFilter' {..} =
    object
      ( catMaybes
          [ ("Key" .=) <$> _lrhsfKey,
            ("Value" .=) <$> _lrhsfValue
          ]
      )

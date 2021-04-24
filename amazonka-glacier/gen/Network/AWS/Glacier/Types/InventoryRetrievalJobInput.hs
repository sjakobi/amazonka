{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Glacier.Types.InventoryRetrievalJobInput
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Glacier.Types.InventoryRetrievalJobInput where

import Network.AWS.Lens
import Network.AWS.Prelude

-- | Provides options for specifying a range inventory retrieval job.
--
--
--
-- /See:/ 'inventoryRetrievalJobInput' smart constructor.
data InventoryRetrievalJobInput = InventoryRetrievalJobInput'
  { _irjiStartDate ::
      !(Maybe Text),
    _irjiEndDate ::
      !(Maybe Text),
    _irjiLimit ::
      !(Maybe Text),
    _irjiMarker ::
      !(Maybe Text)
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'InventoryRetrievalJobInput' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'irjiStartDate' - The start of the date range in UTC for vault inventory retrieval that includes archives created on or after this date. This value should be a string in the ISO 8601 date format, for example @2013-03-20T17:03:43Z@ .
--
-- * 'irjiEndDate' - The end of the date range in UTC for vault inventory retrieval that includes archives created before this date. This value should be a string in the ISO 8601 date format, for example @2013-03-20T17:03:43Z@ .
--
-- * 'irjiLimit' - Specifies the maximum number of inventory items returned per vault inventory retrieval request. Valid values are greater than or equal to 1.
--
-- * 'irjiMarker' - An opaque string that represents where to continue pagination of the vault inventory retrieval results. You use the marker in a new __InitiateJob__ request to obtain additional inventory items. If there are no more inventory items, this value is @null@ .
inventoryRetrievalJobInput ::
  InventoryRetrievalJobInput
inventoryRetrievalJobInput =
  InventoryRetrievalJobInput'
    { _irjiStartDate =
        Nothing,
      _irjiEndDate = Nothing,
      _irjiLimit = Nothing,
      _irjiMarker = Nothing
    }

-- | The start of the date range in UTC for vault inventory retrieval that includes archives created on or after this date. This value should be a string in the ISO 8601 date format, for example @2013-03-20T17:03:43Z@ .
irjiStartDate :: Lens' InventoryRetrievalJobInput (Maybe Text)
irjiStartDate = lens _irjiStartDate (\s a -> s {_irjiStartDate = a})

-- | The end of the date range in UTC for vault inventory retrieval that includes archives created before this date. This value should be a string in the ISO 8601 date format, for example @2013-03-20T17:03:43Z@ .
irjiEndDate :: Lens' InventoryRetrievalJobInput (Maybe Text)
irjiEndDate = lens _irjiEndDate (\s a -> s {_irjiEndDate = a})

-- | Specifies the maximum number of inventory items returned per vault inventory retrieval request. Valid values are greater than or equal to 1.
irjiLimit :: Lens' InventoryRetrievalJobInput (Maybe Text)
irjiLimit = lens _irjiLimit (\s a -> s {_irjiLimit = a})

-- | An opaque string that represents where to continue pagination of the vault inventory retrieval results. You use the marker in a new __InitiateJob__ request to obtain additional inventory items. If there are no more inventory items, this value is @null@ .
irjiMarker :: Lens' InventoryRetrievalJobInput (Maybe Text)
irjiMarker = lens _irjiMarker (\s a -> s {_irjiMarker = a})

instance Hashable InventoryRetrievalJobInput

instance NFData InventoryRetrievalJobInput

instance ToJSON InventoryRetrievalJobInput where
  toJSON InventoryRetrievalJobInput' {..} =
    object
      ( catMaybes
          [ ("StartDate" .=) <$> _irjiStartDate,
            ("EndDate" .=) <$> _irjiEndDate,
            ("Limit" .=) <$> _irjiLimit,
            ("Marker" .=) <$> _irjiMarker
          ]
      )

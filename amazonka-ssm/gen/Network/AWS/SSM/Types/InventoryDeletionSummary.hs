{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.SSM.Types.InventoryDeletionSummary
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.SSM.Types.InventoryDeletionSummary where

import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.SSM.Types.InventoryDeletionSummaryItem

-- | Information about the delete operation.
--
--
--
-- /See:/ 'inventoryDeletionSummary' smart constructor.
data InventoryDeletionSummary = InventoryDeletionSummary'
  { _idsRemainingCount ::
      !(Maybe Int),
    _idsTotalCount ::
      !(Maybe Int),
    _idsSummaryItems ::
      !( Maybe
           [InventoryDeletionSummaryItem]
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

-- | Creates a value of 'InventoryDeletionSummary' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'idsRemainingCount' - Remaining number of items to delete.
--
-- * 'idsTotalCount' - The total number of items to delete. This count does not change during the delete operation.
--
-- * 'idsSummaryItems' - A list of counts and versions for deleted items.
inventoryDeletionSummary ::
  InventoryDeletionSummary
inventoryDeletionSummary =
  InventoryDeletionSummary'
    { _idsRemainingCount =
        Nothing,
      _idsTotalCount = Nothing,
      _idsSummaryItems = Nothing
    }

-- | Remaining number of items to delete.
idsRemainingCount :: Lens' InventoryDeletionSummary (Maybe Int)
idsRemainingCount = lens _idsRemainingCount (\s a -> s {_idsRemainingCount = a})

-- | The total number of items to delete. This count does not change during the delete operation.
idsTotalCount :: Lens' InventoryDeletionSummary (Maybe Int)
idsTotalCount = lens _idsTotalCount (\s a -> s {_idsTotalCount = a})

-- | A list of counts and versions for deleted items.
idsSummaryItems :: Lens' InventoryDeletionSummary [InventoryDeletionSummaryItem]
idsSummaryItems = lens _idsSummaryItems (\s a -> s {_idsSummaryItems = a}) . _Default . _Coerce

instance FromJSON InventoryDeletionSummary where
  parseJSON =
    withObject
      "InventoryDeletionSummary"
      ( \x ->
          InventoryDeletionSummary'
            <$> (x .:? "RemainingCount")
            <*> (x .:? "TotalCount")
            <*> (x .:? "SummaryItems" .!= mempty)
      )

instance Hashable InventoryDeletionSummary

instance NFData InventoryDeletionSummary

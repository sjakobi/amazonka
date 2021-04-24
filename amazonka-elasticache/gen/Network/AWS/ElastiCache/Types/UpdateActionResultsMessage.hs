{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.ElastiCache.Types.UpdateActionResultsMessage
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.ElastiCache.Types.UpdateActionResultsMessage where

import Network.AWS.ElastiCache.Types.ProcessedUpdateAction
import Network.AWS.ElastiCache.Types.UnprocessedUpdateAction
import Network.AWS.Lens
import Network.AWS.Prelude

-- | /See:/ 'updateActionResultsMessage' smart constructor.
data UpdateActionResultsMessage = UpdateActionResultsMessage'
  { _uarmProcessedUpdateActions ::
      !( Maybe
           [ProcessedUpdateAction]
       ),
    _uarmUnprocessedUpdateActions ::
      !( Maybe
           [UnprocessedUpdateAction]
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

-- | Creates a value of 'UpdateActionResultsMessage' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'uarmProcessedUpdateActions' - Update actions that have been processed successfully
--
-- * 'uarmUnprocessedUpdateActions' - Update actions that haven't been processed successfully
updateActionResultsMessage ::
  UpdateActionResultsMessage
updateActionResultsMessage =
  UpdateActionResultsMessage'
    { _uarmProcessedUpdateActions =
        Nothing,
      _uarmUnprocessedUpdateActions = Nothing
    }

-- | Update actions that have been processed successfully
uarmProcessedUpdateActions :: Lens' UpdateActionResultsMessage [ProcessedUpdateAction]
uarmProcessedUpdateActions = lens _uarmProcessedUpdateActions (\s a -> s {_uarmProcessedUpdateActions = a}) . _Default . _Coerce

-- | Update actions that haven't been processed successfully
uarmUnprocessedUpdateActions :: Lens' UpdateActionResultsMessage [UnprocessedUpdateAction]
uarmUnprocessedUpdateActions = lens _uarmUnprocessedUpdateActions (\s a -> s {_uarmUnprocessedUpdateActions = a}) . _Default . _Coerce

instance FromXML UpdateActionResultsMessage where
  parseXML x =
    UpdateActionResultsMessage'
      <$> ( x .@? "ProcessedUpdateActions" .!@ mempty
              >>= may (parseXMLList "ProcessedUpdateAction")
          )
      <*> ( x .@? "UnprocessedUpdateActions" .!@ mempty
              >>= may (parseXMLList "UnprocessedUpdateAction")
          )

instance Hashable UpdateActionResultsMessage

instance NFData UpdateActionResultsMessage

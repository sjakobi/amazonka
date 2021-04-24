{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.DynamoDB.Types.TransactWriteItem
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.DynamoDB.Types.TransactWriteItem where

import Network.AWS.DynamoDB.Types.ConditionCheck
import Network.AWS.DynamoDB.Types.Delete
import Network.AWS.DynamoDB.Types.Put
import Network.AWS.DynamoDB.Types.Update
import Network.AWS.Lens
import Network.AWS.Prelude

-- | A list of requests that can perform update, put, delete, or check operations on multiple items in one or more tables atomically.
--
--
--
-- /See:/ 'transactWriteItem' smart constructor.
data TransactWriteItem = TransactWriteItem'
  { _twiPut ::
      !(Maybe Put),
    _twiConditionCheck ::
      !(Maybe ConditionCheck),
    _twiUpdate :: !(Maybe Update),
    _twiDelete :: !(Maybe Delete)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'TransactWriteItem' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'twiPut' - A request to perform a @PutItem@ operation.
--
-- * 'twiConditionCheck' - A request to perform a check item operation.
--
-- * 'twiUpdate' - A request to perform an @UpdateItem@ operation.
--
-- * 'twiDelete' - A request to perform a @DeleteItem@ operation.
transactWriteItem ::
  TransactWriteItem
transactWriteItem =
  TransactWriteItem'
    { _twiPut = Nothing,
      _twiConditionCheck = Nothing,
      _twiUpdate = Nothing,
      _twiDelete = Nothing
    }

-- | A request to perform a @PutItem@ operation.
twiPut :: Lens' TransactWriteItem (Maybe Put)
twiPut = lens _twiPut (\s a -> s {_twiPut = a})

-- | A request to perform a check item operation.
twiConditionCheck :: Lens' TransactWriteItem (Maybe ConditionCheck)
twiConditionCheck = lens _twiConditionCheck (\s a -> s {_twiConditionCheck = a})

-- | A request to perform an @UpdateItem@ operation.
twiUpdate :: Lens' TransactWriteItem (Maybe Update)
twiUpdate = lens _twiUpdate (\s a -> s {_twiUpdate = a})

-- | A request to perform a @DeleteItem@ operation.
twiDelete :: Lens' TransactWriteItem (Maybe Delete)
twiDelete = lens _twiDelete (\s a -> s {_twiDelete = a})

instance Hashable TransactWriteItem

instance NFData TransactWriteItem

instance ToJSON TransactWriteItem where
  toJSON TransactWriteItem' {..} =
    object
      ( catMaybes
          [ ("Put" .=) <$> _twiPut,
            ("ConditionCheck" .=) <$> _twiConditionCheck,
            ("Update" .=) <$> _twiUpdate,
            ("Delete" .=) <$> _twiDelete
          ]
      )

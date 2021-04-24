{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.DynamoDB.Types.BatchStatementResponse
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.DynamoDB.Types.BatchStatementResponse where

import Network.AWS.DynamoDB.Types.AttributeValue
import Network.AWS.DynamoDB.Types.BatchStatementError
import Network.AWS.Lens
import Network.AWS.Prelude

-- | A PartiQL batch statement response..
--
--
--
-- /See:/ 'batchStatementResponse' smart constructor.
data BatchStatementResponse = BatchStatementResponse'
  { _bsrTableName ::
      !(Maybe Text),
    _bsrItem ::
      !( Maybe
           ( Map
               Text
               AttributeValue
           )
       ),
    _bsrError ::
      !( Maybe
           BatchStatementError
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

-- | Creates a value of 'BatchStatementResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'bsrTableName' - The table name associated with a failed PartiQL batch statement.
--
-- * 'bsrItem' - A DynamoDB item associated with a BatchStatementResponse
--
-- * 'bsrError' - The error associated with a failed PartiQL batch statement.
batchStatementResponse ::
  BatchStatementResponse
batchStatementResponse =
  BatchStatementResponse'
    { _bsrTableName = Nothing,
      _bsrItem = Nothing,
      _bsrError = Nothing
    }

-- | The table name associated with a failed PartiQL batch statement.
bsrTableName :: Lens' BatchStatementResponse (Maybe Text)
bsrTableName = lens _bsrTableName (\s a -> s {_bsrTableName = a})

-- | A DynamoDB item associated with a BatchStatementResponse
bsrItem :: Lens' BatchStatementResponse (HashMap Text AttributeValue)
bsrItem = lens _bsrItem (\s a -> s {_bsrItem = a}) . _Default . _Map

-- | The error associated with a failed PartiQL batch statement.
bsrError :: Lens' BatchStatementResponse (Maybe BatchStatementError)
bsrError = lens _bsrError (\s a -> s {_bsrError = a})

instance FromJSON BatchStatementResponse where
  parseJSON =
    withObject
      "BatchStatementResponse"
      ( \x ->
          BatchStatementResponse'
            <$> (x .:? "TableName")
            <*> (x .:? "Item" .!= mempty)
            <*> (x .:? "Error")
      )

instance Hashable BatchStatementResponse

instance NFData BatchStatementResponse

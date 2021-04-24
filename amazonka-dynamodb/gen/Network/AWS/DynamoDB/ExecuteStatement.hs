{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE TypeFamilies #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.DynamoDB.ExecuteStatement
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- This operation allows you to perform reads and singleton writes on data stored in DynamoDB, using PartiQL.
module Network.AWS.DynamoDB.ExecuteStatement
  ( -- * Creating a Request
    executeStatement,
    ExecuteStatement,

    -- * Request Lenses
    esNextToken,
    esConsistentRead,
    esParameters,
    esStatement,

    -- * Destructuring the Response
    executeStatementResponse,
    ExecuteStatementResponse,

    -- * Response Lenses
    esrrsNextToken,
    esrrsItems,
    esrrsResponseStatus,
  )
where

import Network.AWS.DynamoDB.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'executeStatement' smart constructor.
data ExecuteStatement = ExecuteStatement'
  { _esNextToken ::
      !(Maybe Text),
    _esConsistentRead :: !(Maybe Bool),
    _esParameters ::
      !(Maybe (List1 AttributeValue)),
    _esStatement :: !Text
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'ExecuteStatement' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'esNextToken' - Set this value to get remaining results, if @NextToken@ was returned in the statement response.
--
-- * 'esConsistentRead' - The consistency of a read operation. If set to @true@ , then a strongly consistent read is used; otherwise, an eventually consistent read is used.
--
-- * 'esParameters' - The parameters for the PartiQL statement, if any.
--
-- * 'esStatement' - The PartiQL statement representing the operation to run.
executeStatement ::
  -- | 'esStatement'
  Text ->
  ExecuteStatement
executeStatement pStatement_ =
  ExecuteStatement'
    { _esNextToken = Nothing,
      _esConsistentRead = Nothing,
      _esParameters = Nothing,
      _esStatement = pStatement_
    }

-- | Set this value to get remaining results, if @NextToken@ was returned in the statement response.
esNextToken :: Lens' ExecuteStatement (Maybe Text)
esNextToken = lens _esNextToken (\s a -> s {_esNextToken = a})

-- | The consistency of a read operation. If set to @true@ , then a strongly consistent read is used; otherwise, an eventually consistent read is used.
esConsistentRead :: Lens' ExecuteStatement (Maybe Bool)
esConsistentRead = lens _esConsistentRead (\s a -> s {_esConsistentRead = a})

-- | The parameters for the PartiQL statement, if any.
esParameters :: Lens' ExecuteStatement (Maybe (NonEmpty AttributeValue))
esParameters = lens _esParameters (\s a -> s {_esParameters = a}) . mapping _List1

-- | The PartiQL statement representing the operation to run.
esStatement :: Lens' ExecuteStatement Text
esStatement = lens _esStatement (\s a -> s {_esStatement = a})

instance AWSRequest ExecuteStatement where
  type Rs ExecuteStatement = ExecuteStatementResponse
  request = postJSON dynamoDB
  response =
    receiveJSON
      ( \s h x ->
          ExecuteStatementResponse'
            <$> (x .?> "NextToken")
            <*> (x .?> "Items" .!@ mempty)
            <*> (pure (fromEnum s))
      )

instance Hashable ExecuteStatement

instance NFData ExecuteStatement

instance ToHeaders ExecuteStatement where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ("DynamoDB_20120810.ExecuteStatement" :: ByteString),
            "Content-Type"
              =# ("application/x-amz-json-1.0" :: ByteString)
          ]
      )

instance ToJSON ExecuteStatement where
  toJSON ExecuteStatement' {..} =
    object
      ( catMaybes
          [ ("NextToken" .=) <$> _esNextToken,
            ("ConsistentRead" .=) <$> _esConsistentRead,
            ("Parameters" .=) <$> _esParameters,
            Just ("Statement" .= _esStatement)
          ]
      )

instance ToPath ExecuteStatement where
  toPath = const "/"

instance ToQuery ExecuteStatement where
  toQuery = const mempty

-- | /See:/ 'executeStatementResponse' smart constructor.
data ExecuteStatementResponse = ExecuteStatementResponse'
  { _esrrsNextToken ::
      !(Maybe Text),
    _esrrsItems ::
      !( Maybe
           [ Map
               Text
               AttributeValue
           ]
       ),
    _esrrsResponseStatus ::
      !Int
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'ExecuteStatementResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'esrrsNextToken' - If the response of a read request exceeds the response payload limit DynamoDB will set this value in the response. If set, you can use that this value in the subsequent request to get the remaining results.
--
-- * 'esrrsItems' - If a read operation was used, this property will contain the result of the reade operation; a map of attribute names and their values. For the write operations this value will be empty.
--
-- * 'esrrsResponseStatus' - -- | The response status code.
executeStatementResponse ::
  -- | 'esrrsResponseStatus'
  Int ->
  ExecuteStatementResponse
executeStatementResponse pResponseStatus_ =
  ExecuteStatementResponse'
    { _esrrsNextToken =
        Nothing,
      _esrrsItems = Nothing,
      _esrrsResponseStatus = pResponseStatus_
    }

-- | If the response of a read request exceeds the response payload limit DynamoDB will set this value in the response. If set, you can use that this value in the subsequent request to get the remaining results.
esrrsNextToken :: Lens' ExecuteStatementResponse (Maybe Text)
esrrsNextToken = lens _esrrsNextToken (\s a -> s {_esrrsNextToken = a})

-- | If a read operation was used, this property will contain the result of the reade operation; a map of attribute names and their values. For the write operations this value will be empty.
esrrsItems :: Lens' ExecuteStatementResponse [HashMap Text AttributeValue]
esrrsItems = lens _esrrsItems (\s a -> s {_esrrsItems = a}) . _Default . _Coerce

-- | -- | The response status code.
esrrsResponseStatus :: Lens' ExecuteStatementResponse Int
esrrsResponseStatus = lens _esrrsResponseStatus (\s a -> s {_esrrsResponseStatus = a})

instance NFData ExecuteStatementResponse

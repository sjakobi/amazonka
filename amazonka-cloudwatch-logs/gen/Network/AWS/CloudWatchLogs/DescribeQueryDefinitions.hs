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
-- Module      : Network.AWS.CloudWatchLogs.DescribeQueryDefinitions
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- This operation returns a paginated list of your saved CloudWatch Logs Insights query definitions.
--
--
-- You can use the @queryDefinitionNamePrefix@ parameter to limit the results to only the query definitions that have names that start with a certain string.
module Network.AWS.CloudWatchLogs.DescribeQueryDefinitions
  ( -- * Creating a Request
    describeQueryDefinitions,
    DescribeQueryDefinitions,

    -- * Request Lenses
    dqdNextToken,
    dqdMaxResults,
    dqdQueryDefinitionNamePrefix,

    -- * Destructuring the Response
    describeQueryDefinitionsResponse,
    DescribeQueryDefinitionsResponse,

    -- * Response Lenses
    dqdrrsNextToken,
    dqdrrsQueryDefinitions,
    dqdrrsResponseStatus,
  )
where

import Network.AWS.CloudWatchLogs.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'describeQueryDefinitions' smart constructor.
data DescribeQueryDefinitions = DescribeQueryDefinitions'
  { _dqdNextToken ::
      !(Maybe Text),
    _dqdMaxResults ::
      !(Maybe Nat),
    _dqdQueryDefinitionNamePrefix ::
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

-- | Creates a value of 'DescribeQueryDefinitions' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dqdNextToken' - Undocumented member.
--
-- * 'dqdMaxResults' - Limits the number of returned query definitions to the specified number.
--
-- * 'dqdQueryDefinitionNamePrefix' - Use this parameter to filter your results to only the query definitions that have names that start with the prefix you specify.
describeQueryDefinitions ::
  DescribeQueryDefinitions
describeQueryDefinitions =
  DescribeQueryDefinitions'
    { _dqdNextToken = Nothing,
      _dqdMaxResults = Nothing,
      _dqdQueryDefinitionNamePrefix = Nothing
    }

-- | Undocumented member.
dqdNextToken :: Lens' DescribeQueryDefinitions (Maybe Text)
dqdNextToken = lens _dqdNextToken (\s a -> s {_dqdNextToken = a})

-- | Limits the number of returned query definitions to the specified number.
dqdMaxResults :: Lens' DescribeQueryDefinitions (Maybe Natural)
dqdMaxResults = lens _dqdMaxResults (\s a -> s {_dqdMaxResults = a}) . mapping _Nat

-- | Use this parameter to filter your results to only the query definitions that have names that start with the prefix you specify.
dqdQueryDefinitionNamePrefix :: Lens' DescribeQueryDefinitions (Maybe Text)
dqdQueryDefinitionNamePrefix = lens _dqdQueryDefinitionNamePrefix (\s a -> s {_dqdQueryDefinitionNamePrefix = a})

instance AWSRequest DescribeQueryDefinitions where
  type
    Rs DescribeQueryDefinitions =
      DescribeQueryDefinitionsResponse
  request = postJSON cloudWatchLogs
  response =
    receiveJSON
      ( \s h x ->
          DescribeQueryDefinitionsResponse'
            <$> (x .?> "nextToken")
            <*> (x .?> "queryDefinitions" .!@ mempty)
            <*> (pure (fromEnum s))
      )

instance Hashable DescribeQueryDefinitions

instance NFData DescribeQueryDefinitions

instance ToHeaders DescribeQueryDefinitions where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ( "Logs_20140328.DescribeQueryDefinitions" ::
                     ByteString
                 ),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON DescribeQueryDefinitions where
  toJSON DescribeQueryDefinitions' {..} =
    object
      ( catMaybes
          [ ("nextToken" .=) <$> _dqdNextToken,
            ("maxResults" .=) <$> _dqdMaxResults,
            ("queryDefinitionNamePrefix" .=)
              <$> _dqdQueryDefinitionNamePrefix
          ]
      )

instance ToPath DescribeQueryDefinitions where
  toPath = const "/"

instance ToQuery DescribeQueryDefinitions where
  toQuery = const mempty

-- | /See:/ 'describeQueryDefinitionsResponse' smart constructor.
data DescribeQueryDefinitionsResponse = DescribeQueryDefinitionsResponse'
  { _dqdrrsNextToken ::
      !( Maybe
           Text
       ),
    _dqdrrsQueryDefinitions ::
      !( Maybe
           [QueryDefinition]
       ),
    _dqdrrsResponseStatus ::
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

-- | Creates a value of 'DescribeQueryDefinitionsResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dqdrrsNextToken' - Undocumented member.
--
-- * 'dqdrrsQueryDefinitions' - The list of query definitions that match your request.
--
-- * 'dqdrrsResponseStatus' - -- | The response status code.
describeQueryDefinitionsResponse ::
  -- | 'dqdrrsResponseStatus'
  Int ->
  DescribeQueryDefinitionsResponse
describeQueryDefinitionsResponse pResponseStatus_ =
  DescribeQueryDefinitionsResponse'
    { _dqdrrsNextToken =
        Nothing,
      _dqdrrsQueryDefinitions = Nothing,
      _dqdrrsResponseStatus = pResponseStatus_
    }

-- | Undocumented member.
dqdrrsNextToken :: Lens' DescribeQueryDefinitionsResponse (Maybe Text)
dqdrrsNextToken = lens _dqdrrsNextToken (\s a -> s {_dqdrrsNextToken = a})

-- | The list of query definitions that match your request.
dqdrrsQueryDefinitions :: Lens' DescribeQueryDefinitionsResponse [QueryDefinition]
dqdrrsQueryDefinitions = lens _dqdrrsQueryDefinitions (\s a -> s {_dqdrrsQueryDefinitions = a}) . _Default . _Coerce

-- | -- | The response status code.
dqdrrsResponseStatus :: Lens' DescribeQueryDefinitionsResponse Int
dqdrrsResponseStatus = lens _dqdrrsResponseStatus (\s a -> s {_dqdrrsResponseStatus = a})

instance NFData DescribeQueryDefinitionsResponse

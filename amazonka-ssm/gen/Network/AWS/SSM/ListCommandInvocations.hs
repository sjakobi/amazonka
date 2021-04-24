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
-- Module      : Network.AWS.SSM.ListCommandInvocations
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- An invocation is copy of a command sent to a specific instance. A command can apply to one or more instances. A command invocation applies to one instance. For example, if a user runs SendCommand against three instances, then a command invocation is created for each requested instance ID. ListCommandInvocations provide status about command execution.
--
--
--
-- This operation returns paginated results.
module Network.AWS.SSM.ListCommandInvocations
  ( -- * Creating a Request
    listCommandInvocations,
    ListCommandInvocations,

    -- * Request Lenses
    lNextToken,
    lInstanceId,
    lMaxResults,
    lCommandId,
    lDetails,
    lFilters,

    -- * Destructuring the Response
    listCommandInvocationsResponse,
    ListCommandInvocationsResponse,

    -- * Response Lenses
    lcirrsNextToken,
    lcirrsCommandInvocations,
    lcirrsResponseStatus,
  )
where

import Network.AWS.Lens
import Network.AWS.Pager
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response
import Network.AWS.SSM.Types

-- | /See:/ 'listCommandInvocations' smart constructor.
data ListCommandInvocations = ListCommandInvocations'
  { _lNextToken ::
      !(Maybe Text),
    _lInstanceId ::
      !(Maybe Text),
    _lMaxResults ::
      !(Maybe Nat),
    _lCommandId ::
      !(Maybe Text),
    _lDetails ::
      !(Maybe Bool),
    _lFilters ::
      !( Maybe
           ( List1
               CommandFilter
           )
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

-- | Creates a value of 'ListCommandInvocations' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lNextToken' - (Optional) The token for the next set of items to return. (You received this token from a previous call.)
--
-- * 'lInstanceId' - (Optional) The command execution details for a specific instance ID.
--
-- * 'lMaxResults' - (Optional) The maximum number of items to return for this call. The call also returns a token that you can specify in a subsequent call to get the next set of results.
--
-- * 'lCommandId' - (Optional) The invocations for a specific command ID.
--
-- * 'lDetails' - (Optional) If set this returns the response of the command executions and any command output. By default this is set to False.
--
-- * 'lFilters' - (Optional) One or more filters. Use a filter to return a more specific list of results.
listCommandInvocations ::
  ListCommandInvocations
listCommandInvocations =
  ListCommandInvocations'
    { _lNextToken = Nothing,
      _lInstanceId = Nothing,
      _lMaxResults = Nothing,
      _lCommandId = Nothing,
      _lDetails = Nothing,
      _lFilters = Nothing
    }

-- | (Optional) The token for the next set of items to return. (You received this token from a previous call.)
lNextToken :: Lens' ListCommandInvocations (Maybe Text)
lNextToken = lens _lNextToken (\s a -> s {_lNextToken = a})

-- | (Optional) The command execution details for a specific instance ID.
lInstanceId :: Lens' ListCommandInvocations (Maybe Text)
lInstanceId = lens _lInstanceId (\s a -> s {_lInstanceId = a})

-- | (Optional) The maximum number of items to return for this call. The call also returns a token that you can specify in a subsequent call to get the next set of results.
lMaxResults :: Lens' ListCommandInvocations (Maybe Natural)
lMaxResults = lens _lMaxResults (\s a -> s {_lMaxResults = a}) . mapping _Nat

-- | (Optional) The invocations for a specific command ID.
lCommandId :: Lens' ListCommandInvocations (Maybe Text)
lCommandId = lens _lCommandId (\s a -> s {_lCommandId = a})

-- | (Optional) If set this returns the response of the command executions and any command output. By default this is set to False.
lDetails :: Lens' ListCommandInvocations (Maybe Bool)
lDetails = lens _lDetails (\s a -> s {_lDetails = a})

-- | (Optional) One or more filters. Use a filter to return a more specific list of results.
lFilters :: Lens' ListCommandInvocations (Maybe (NonEmpty CommandFilter))
lFilters = lens _lFilters (\s a -> s {_lFilters = a}) . mapping _List1

instance AWSPager ListCommandInvocations where
  page rq rs
    | stop (rs ^. lcirrsNextToken) = Nothing
    | stop (rs ^. lcirrsCommandInvocations) = Nothing
    | otherwise =
      Just $ rq & lNextToken .~ rs ^. lcirrsNextToken

instance AWSRequest ListCommandInvocations where
  type
    Rs ListCommandInvocations =
      ListCommandInvocationsResponse
  request = postJSON ssm
  response =
    receiveJSON
      ( \s h x ->
          ListCommandInvocationsResponse'
            <$> (x .?> "NextToken")
            <*> (x .?> "CommandInvocations" .!@ mempty)
            <*> (pure (fromEnum s))
      )

instance Hashable ListCommandInvocations

instance NFData ListCommandInvocations

instance ToHeaders ListCommandInvocations where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ("AmazonSSM.ListCommandInvocations" :: ByteString),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON ListCommandInvocations where
  toJSON ListCommandInvocations' {..} =
    object
      ( catMaybes
          [ ("NextToken" .=) <$> _lNextToken,
            ("InstanceId" .=) <$> _lInstanceId,
            ("MaxResults" .=) <$> _lMaxResults,
            ("CommandId" .=) <$> _lCommandId,
            ("Details" .=) <$> _lDetails,
            ("Filters" .=) <$> _lFilters
          ]
      )

instance ToPath ListCommandInvocations where
  toPath = const "/"

instance ToQuery ListCommandInvocations where
  toQuery = const mempty

-- | /See:/ 'listCommandInvocationsResponse' smart constructor.
data ListCommandInvocationsResponse = ListCommandInvocationsResponse'
  { _lcirrsNextToken ::
      !( Maybe
           Text
       ),
    _lcirrsCommandInvocations ::
      !( Maybe
           [CommandInvocation]
       ),
    _lcirrsResponseStatus ::
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

-- | Creates a value of 'ListCommandInvocationsResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lcirrsNextToken' - (Optional) The token for the next set of items to return. (You received this token from a previous call.)
--
-- * 'lcirrsCommandInvocations' - (Optional) A list of all invocations.
--
-- * 'lcirrsResponseStatus' - -- | The response status code.
listCommandInvocationsResponse ::
  -- | 'lcirrsResponseStatus'
  Int ->
  ListCommandInvocationsResponse
listCommandInvocationsResponse pResponseStatus_ =
  ListCommandInvocationsResponse'
    { _lcirrsNextToken =
        Nothing,
      _lcirrsCommandInvocations = Nothing,
      _lcirrsResponseStatus = pResponseStatus_
    }

-- | (Optional) The token for the next set of items to return. (You received this token from a previous call.)
lcirrsNextToken :: Lens' ListCommandInvocationsResponse (Maybe Text)
lcirrsNextToken = lens _lcirrsNextToken (\s a -> s {_lcirrsNextToken = a})

-- | (Optional) A list of all invocations.
lcirrsCommandInvocations :: Lens' ListCommandInvocationsResponse [CommandInvocation]
lcirrsCommandInvocations = lens _lcirrsCommandInvocations (\s a -> s {_lcirrsCommandInvocations = a}) . _Default . _Coerce

-- | -- | The response status code.
lcirrsResponseStatus :: Lens' ListCommandInvocationsResponse Int
lcirrsResponseStatus = lens _lcirrsResponseStatus (\s a -> s {_lcirrsResponseStatus = a})

instance NFData ListCommandInvocationsResponse

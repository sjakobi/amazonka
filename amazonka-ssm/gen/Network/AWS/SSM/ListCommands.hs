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
-- Module      : Network.AWS.SSM.ListCommands
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists the commands requested by users of the AWS account.
--
--
--
-- This operation returns paginated results.
module Network.AWS.SSM.ListCommands
  ( -- * Creating a Request
    listCommands,
    ListCommands,

    -- * Request Lenses
    lcNextToken,
    lcInstanceId,
    lcMaxResults,
    lcCommandId,
    lcFilters,

    -- * Destructuring the Response
    listCommandsResponse,
    ListCommandsResponse,

    -- * Response Lenses
    lcrrsNextToken,
    lcrrsCommands,
    lcrrsResponseStatus,
  )
where

import Network.AWS.Lens
import Network.AWS.Pager
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response
import Network.AWS.SSM.Types

-- | /See:/ 'listCommands' smart constructor.
data ListCommands = ListCommands'
  { _lcNextToken ::
      !(Maybe Text),
    _lcInstanceId :: !(Maybe Text),
    _lcMaxResults :: !(Maybe Nat),
    _lcCommandId :: !(Maybe Text),
    _lcFilters :: !(Maybe (List1 CommandFilter))
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'ListCommands' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lcNextToken' - (Optional) The token for the next set of items to return. (You received this token from a previous call.)
--
-- * 'lcInstanceId' - (Optional) Lists commands issued against this instance ID.
--
-- * 'lcMaxResults' - (Optional) The maximum number of items to return for this call. The call also returns a token that you can specify in a subsequent call to get the next set of results.
--
-- * 'lcCommandId' - (Optional) If provided, lists only the specified command.
--
-- * 'lcFilters' - (Optional) One or more filters. Use a filter to return a more specific list of results.
listCommands ::
  ListCommands
listCommands =
  ListCommands'
    { _lcNextToken = Nothing,
      _lcInstanceId = Nothing,
      _lcMaxResults = Nothing,
      _lcCommandId = Nothing,
      _lcFilters = Nothing
    }

-- | (Optional) The token for the next set of items to return. (You received this token from a previous call.)
lcNextToken :: Lens' ListCommands (Maybe Text)
lcNextToken = lens _lcNextToken (\s a -> s {_lcNextToken = a})

-- | (Optional) Lists commands issued against this instance ID.
lcInstanceId :: Lens' ListCommands (Maybe Text)
lcInstanceId = lens _lcInstanceId (\s a -> s {_lcInstanceId = a})

-- | (Optional) The maximum number of items to return for this call. The call also returns a token that you can specify in a subsequent call to get the next set of results.
lcMaxResults :: Lens' ListCommands (Maybe Natural)
lcMaxResults = lens _lcMaxResults (\s a -> s {_lcMaxResults = a}) . mapping _Nat

-- | (Optional) If provided, lists only the specified command.
lcCommandId :: Lens' ListCommands (Maybe Text)
lcCommandId = lens _lcCommandId (\s a -> s {_lcCommandId = a})

-- | (Optional) One or more filters. Use a filter to return a more specific list of results.
lcFilters :: Lens' ListCommands (Maybe (NonEmpty CommandFilter))
lcFilters = lens _lcFilters (\s a -> s {_lcFilters = a}) . mapping _List1

instance AWSPager ListCommands where
  page rq rs
    | stop (rs ^. lcrrsNextToken) = Nothing
    | stop (rs ^. lcrrsCommands) = Nothing
    | otherwise =
      Just $ rq & lcNextToken .~ rs ^. lcrrsNextToken

instance AWSRequest ListCommands where
  type Rs ListCommands = ListCommandsResponse
  request = postJSON ssm
  response =
    receiveJSON
      ( \s h x ->
          ListCommandsResponse'
            <$> (x .?> "NextToken")
            <*> (x .?> "Commands" .!@ mempty)
            <*> (pure (fromEnum s))
      )

instance Hashable ListCommands

instance NFData ListCommands

instance ToHeaders ListCommands where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ("AmazonSSM.ListCommands" :: ByteString),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON ListCommands where
  toJSON ListCommands' {..} =
    object
      ( catMaybes
          [ ("NextToken" .=) <$> _lcNextToken,
            ("InstanceId" .=) <$> _lcInstanceId,
            ("MaxResults" .=) <$> _lcMaxResults,
            ("CommandId" .=) <$> _lcCommandId,
            ("Filters" .=) <$> _lcFilters
          ]
      )

instance ToPath ListCommands where
  toPath = const "/"

instance ToQuery ListCommands where
  toQuery = const mempty

-- | /See:/ 'listCommandsResponse' smart constructor.
data ListCommandsResponse = ListCommandsResponse'
  { _lcrrsNextToken ::
      !(Maybe Text),
    _lcrrsCommands ::
      !(Maybe [Command]),
    _lcrrsResponseStatus :: !Int
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'ListCommandsResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lcrrsNextToken' - (Optional) The token for the next set of items to return. (You received this token from a previous call.)
--
-- * 'lcrrsCommands' - (Optional) The list of commands requested by the user.
--
-- * 'lcrrsResponseStatus' - -- | The response status code.
listCommandsResponse ::
  -- | 'lcrrsResponseStatus'
  Int ->
  ListCommandsResponse
listCommandsResponse pResponseStatus_ =
  ListCommandsResponse'
    { _lcrrsNextToken = Nothing,
      _lcrrsCommands = Nothing,
      _lcrrsResponseStatus = pResponseStatus_
    }

-- | (Optional) The token for the next set of items to return. (You received this token from a previous call.)
lcrrsNextToken :: Lens' ListCommandsResponse (Maybe Text)
lcrrsNextToken = lens _lcrrsNextToken (\s a -> s {_lcrrsNextToken = a})

-- | (Optional) The list of commands requested by the user.
lcrrsCommands :: Lens' ListCommandsResponse [Command]
lcrrsCommands = lens _lcrrsCommands (\s a -> s {_lcrrsCommands = a}) . _Default . _Coerce

-- | -- | The response status code.
lcrrsResponseStatus :: Lens' ListCommandsResponse Int
lcrrsResponseStatus = lens _lcrrsResponseStatus (\s a -> s {_lcrrsResponseStatus = a})

instance NFData ListCommandsResponse

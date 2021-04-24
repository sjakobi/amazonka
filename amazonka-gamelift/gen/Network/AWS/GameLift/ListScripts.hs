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
-- Module      : Network.AWS.GameLift.ListScripts
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves script records for all Realtime scripts that are associated with the AWS account in use.
--
--
-- __Learn more__
--
-- <https://docs.aws.amazon.com/gamelift/latest/developerguide/realtime-intro.html Amazon GameLift Realtime Servers>
--
-- __Related operations__
--
--     * 'CreateScript'
--
--     * 'ListScripts'
--
--     * 'DescribeScript'
--
--     * 'UpdateScript'
--
--     * 'DeleteScript'
--
--
--
--
-- This operation returns paginated results.
module Network.AWS.GameLift.ListScripts
  ( -- * Creating a Request
    listScripts,
    ListScripts,

    -- * Request Lenses
    lsNextToken,
    lsLimit,

    -- * Destructuring the Response
    listScriptsResponse,
    ListScriptsResponse,

    -- * Response Lenses
    lsrrsNextToken,
    lsrrsScripts,
    lsrrsResponseStatus,
  )
where

import Network.AWS.GameLift.Types
import Network.AWS.Lens
import Network.AWS.Pager
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'listScripts' smart constructor.
data ListScripts = ListScripts'
  { _lsNextToken ::
      !(Maybe Text),
    _lsLimit :: !(Maybe Nat)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'ListScripts' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lsNextToken' - A token that indicates the start of the next sequential page of results. Use the token that is returned with a previous call to this operation. To start at the beginning of the result set, do not specify a value.
--
-- * 'lsLimit' - The maximum number of results to return. Use this parameter with @NextToken@ to get results as a set of sequential pages.
listScripts ::
  ListScripts
listScripts =
  ListScripts'
    { _lsNextToken = Nothing,
      _lsLimit = Nothing
    }

-- | A token that indicates the start of the next sequential page of results. Use the token that is returned with a previous call to this operation. To start at the beginning of the result set, do not specify a value.
lsNextToken :: Lens' ListScripts (Maybe Text)
lsNextToken = lens _lsNextToken (\s a -> s {_lsNextToken = a})

-- | The maximum number of results to return. Use this parameter with @NextToken@ to get results as a set of sequential pages.
lsLimit :: Lens' ListScripts (Maybe Natural)
lsLimit = lens _lsLimit (\s a -> s {_lsLimit = a}) . mapping _Nat

instance AWSPager ListScripts where
  page rq rs
    | stop (rs ^. lsrrsNextToken) = Nothing
    | stop (rs ^. lsrrsScripts) = Nothing
    | otherwise =
      Just $ rq & lsNextToken .~ rs ^. lsrrsNextToken

instance AWSRequest ListScripts where
  type Rs ListScripts = ListScriptsResponse
  request = postJSON gameLift
  response =
    receiveJSON
      ( \s h x ->
          ListScriptsResponse'
            <$> (x .?> "NextToken")
            <*> (x .?> "Scripts" .!@ mempty)
            <*> (pure (fromEnum s))
      )

instance Hashable ListScripts

instance NFData ListScripts

instance ToHeaders ListScripts where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ("GameLift.ListScripts" :: ByteString),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON ListScripts where
  toJSON ListScripts' {..} =
    object
      ( catMaybes
          [ ("NextToken" .=) <$> _lsNextToken,
            ("Limit" .=) <$> _lsLimit
          ]
      )

instance ToPath ListScripts where
  toPath = const "/"

instance ToQuery ListScripts where
  toQuery = const mempty

-- | /See:/ 'listScriptsResponse' smart constructor.
data ListScriptsResponse = ListScriptsResponse'
  { _lsrrsNextToken ::
      !(Maybe Text),
    _lsrrsScripts ::
      !(Maybe [Script]),
    _lsrrsResponseStatus :: !Int
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'ListScriptsResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lsrrsNextToken' - A token that indicates where to resume retrieving results on the next call to this operation. If no token is returned, these results represent the end of the list.
--
-- * 'lsrrsScripts' - A set of properties describing the requested script.
--
-- * 'lsrrsResponseStatus' - -- | The response status code.
listScriptsResponse ::
  -- | 'lsrrsResponseStatus'
  Int ->
  ListScriptsResponse
listScriptsResponse pResponseStatus_ =
  ListScriptsResponse'
    { _lsrrsNextToken = Nothing,
      _lsrrsScripts = Nothing,
      _lsrrsResponseStatus = pResponseStatus_
    }

-- | A token that indicates where to resume retrieving results on the next call to this operation. If no token is returned, these results represent the end of the list.
lsrrsNextToken :: Lens' ListScriptsResponse (Maybe Text)
lsrrsNextToken = lens _lsrrsNextToken (\s a -> s {_lsrrsNextToken = a})

-- | A set of properties describing the requested script.
lsrrsScripts :: Lens' ListScriptsResponse [Script]
lsrrsScripts = lens _lsrrsScripts (\s a -> s {_lsrrsScripts = a}) . _Default . _Coerce

-- | -- | The response status code.
lsrrsResponseStatus :: Lens' ListScriptsResponse Int
lsrrsResponseStatus = lens _lsrrsResponseStatus (\s a -> s {_lsrrsResponseStatus = a})

instance NFData ListScriptsResponse

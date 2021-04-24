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
-- Module      : Network.AWS.DeviceFarm.ListSuites
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets information about test suites for a given job.
--
--
--
-- This operation returns paginated results.
module Network.AWS.DeviceFarm.ListSuites
  ( -- * Creating a Request
    listSuites,
    ListSuites,

    -- * Request Lenses
    lssNextToken,
    lssArn,

    -- * Destructuring the Response
    listSuitesResponse,
    ListSuitesResponse,

    -- * Response Lenses
    lisrsNextToken,
    lisrsSuites,
    lisrsResponseStatus,
  )
where

import Network.AWS.DeviceFarm.Types
import Network.AWS.Lens
import Network.AWS.Pager
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | Represents a request to the list suites operation.
--
--
--
-- /See:/ 'listSuites' smart constructor.
data ListSuites = ListSuites'
  { _lssNextToken ::
      !(Maybe Text),
    _lssArn :: !Text
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'ListSuites' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lssNextToken' - An identifier that was returned from the previous call to this operation, which can be used to return the next set of items in the list.
--
-- * 'lssArn' - The job's Amazon Resource Name (ARN).
listSuites ::
  -- | 'lssArn'
  Text ->
  ListSuites
listSuites pArn_ =
  ListSuites'
    { _lssNextToken = Nothing,
      _lssArn = pArn_
    }

-- | An identifier that was returned from the previous call to this operation, which can be used to return the next set of items in the list.
lssNextToken :: Lens' ListSuites (Maybe Text)
lssNextToken = lens _lssNextToken (\s a -> s {_lssNextToken = a})

-- | The job's Amazon Resource Name (ARN).
lssArn :: Lens' ListSuites Text
lssArn = lens _lssArn (\s a -> s {_lssArn = a})

instance AWSPager ListSuites where
  page rq rs
    | stop (rs ^. lisrsNextToken) = Nothing
    | stop (rs ^. lisrsSuites) = Nothing
    | otherwise =
      Just $ rq & lssNextToken .~ rs ^. lisrsNextToken

instance AWSRequest ListSuites where
  type Rs ListSuites = ListSuitesResponse
  request = postJSON deviceFarm
  response =
    receiveJSON
      ( \s h x ->
          ListSuitesResponse'
            <$> (x .?> "nextToken")
            <*> (x .?> "suites" .!@ mempty)
            <*> (pure (fromEnum s))
      )

instance Hashable ListSuites

instance NFData ListSuites

instance ToHeaders ListSuites where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ("DeviceFarm_20150623.ListSuites" :: ByteString),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON ListSuites where
  toJSON ListSuites' {..} =
    object
      ( catMaybes
          [ ("nextToken" .=) <$> _lssNextToken,
            Just ("arn" .= _lssArn)
          ]
      )

instance ToPath ListSuites where
  toPath = const "/"

instance ToQuery ListSuites where
  toQuery = const mempty

-- | Represents the result of a list suites request.
--
--
--
-- /See:/ 'listSuitesResponse' smart constructor.
data ListSuitesResponse = ListSuitesResponse'
  { _lisrsNextToken ::
      !(Maybe Text),
    _lisrsSuites :: !(Maybe [Suite]),
    _lisrsResponseStatus :: !Int
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'ListSuitesResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lisrsNextToken' - If the number of items that are returned is significantly large, this is an identifier that is also returned. It can be used in a subsequent call to this operation to return the next set of items in the list.
--
-- * 'lisrsSuites' - Information about the suites.
--
-- * 'lisrsResponseStatus' - -- | The response status code.
listSuitesResponse ::
  -- | 'lisrsResponseStatus'
  Int ->
  ListSuitesResponse
listSuitesResponse pResponseStatus_ =
  ListSuitesResponse'
    { _lisrsNextToken = Nothing,
      _lisrsSuites = Nothing,
      _lisrsResponseStatus = pResponseStatus_
    }

-- | If the number of items that are returned is significantly large, this is an identifier that is also returned. It can be used in a subsequent call to this operation to return the next set of items in the list.
lisrsNextToken :: Lens' ListSuitesResponse (Maybe Text)
lisrsNextToken = lens _lisrsNextToken (\s a -> s {_lisrsNextToken = a})

-- | Information about the suites.
lisrsSuites :: Lens' ListSuitesResponse [Suite]
lisrsSuites = lens _lisrsSuites (\s a -> s {_lisrsSuites = a}) . _Default . _Coerce

-- | -- | The response status code.
lisrsResponseStatus :: Lens' ListSuitesResponse Int
lisrsResponseStatus = lens _lisrsResponseStatus (\s a -> s {_lisrsResponseStatus = a})

instance NFData ListSuitesResponse

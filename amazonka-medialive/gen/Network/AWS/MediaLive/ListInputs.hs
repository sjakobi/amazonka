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
-- Module      : Network.AWS.MediaLive.ListInputs
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Produces list of inputs that have been created
--
-- This operation returns paginated results.
module Network.AWS.MediaLive.ListInputs
  ( -- * Creating a Request
    listInputs,
    ListInputs,

    -- * Request Lenses
    liNextToken,
    liMaxResults,

    -- * Destructuring the Response
    listInputsResponse,
    ListInputsResponse,

    -- * Response Lenses
    lirrsNextToken,
    lirrsInputs,
    lirrsResponseStatus,
  )
where

import Network.AWS.Lens
import Network.AWS.MediaLive.Types
import Network.AWS.Pager
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | Placeholder documentation for ListInputsRequest
--
-- /See:/ 'listInputs' smart constructor.
data ListInputs = ListInputs'
  { _liNextToken ::
      !(Maybe Text),
    _liMaxResults :: !(Maybe Nat)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'ListInputs' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'liNextToken' - Undocumented member.
--
-- * 'liMaxResults' - Undocumented member.
listInputs ::
  ListInputs
listInputs =
  ListInputs'
    { _liNextToken = Nothing,
      _liMaxResults = Nothing
    }

-- | Undocumented member.
liNextToken :: Lens' ListInputs (Maybe Text)
liNextToken = lens _liNextToken (\s a -> s {_liNextToken = a})

-- | Undocumented member.
liMaxResults :: Lens' ListInputs (Maybe Natural)
liMaxResults = lens _liMaxResults (\s a -> s {_liMaxResults = a}) . mapping _Nat

instance AWSPager ListInputs where
  page rq rs
    | stop (rs ^. lirrsNextToken) = Nothing
    | stop (rs ^. lirrsInputs) = Nothing
    | otherwise =
      Just $ rq & liNextToken .~ rs ^. lirrsNextToken

instance AWSRequest ListInputs where
  type Rs ListInputs = ListInputsResponse
  request = get mediaLive
  response =
    receiveJSON
      ( \s h x ->
          ListInputsResponse'
            <$> (x .?> "nextToken")
            <*> (x .?> "inputs" .!@ mempty)
            <*> (pure (fromEnum s))
      )

instance Hashable ListInputs

instance NFData ListInputs

instance ToHeaders ListInputs where
  toHeaders =
    const
      ( mconcat
          [ "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToPath ListInputs where
  toPath = const "/prod/inputs"

instance ToQuery ListInputs where
  toQuery ListInputs' {..} =
    mconcat
      [ "nextToken" =: _liNextToken,
        "maxResults" =: _liMaxResults
      ]

-- | Placeholder documentation for ListInputsResponse
--
-- /See:/ 'listInputsResponse' smart constructor.
data ListInputsResponse = ListInputsResponse'
  { _lirrsNextToken ::
      !(Maybe Text),
    _lirrsInputs :: !(Maybe [Input]),
    _lirrsResponseStatus :: !Int
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'ListInputsResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lirrsNextToken' - Undocumented member.
--
-- * 'lirrsInputs' - Undocumented member.
--
-- * 'lirrsResponseStatus' - -- | The response status code.
listInputsResponse ::
  -- | 'lirrsResponseStatus'
  Int ->
  ListInputsResponse
listInputsResponse pResponseStatus_ =
  ListInputsResponse'
    { _lirrsNextToken = Nothing,
      _lirrsInputs = Nothing,
      _lirrsResponseStatus = pResponseStatus_
    }

-- | Undocumented member.
lirrsNextToken :: Lens' ListInputsResponse (Maybe Text)
lirrsNextToken = lens _lirrsNextToken (\s a -> s {_lirrsNextToken = a})

-- | Undocumented member.
lirrsInputs :: Lens' ListInputsResponse [Input]
lirrsInputs = lens _lirrsInputs (\s a -> s {_lirrsInputs = a}) . _Default . _Coerce

-- | -- | The response status code.
lirrsResponseStatus :: Lens' ListInputsResponse Int
lirrsResponseStatus = lens _lirrsResponseStatus (\s a -> s {_lirrsResponseStatus = a})

instance NFData ListInputsResponse

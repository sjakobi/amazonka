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
-- Module      : Network.AWS.MediaLive.ListMultiplexPrograms
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- List the programs that currently exist for a specific multiplex.
--
-- This operation returns paginated results.
module Network.AWS.MediaLive.ListMultiplexPrograms
  ( -- * Creating a Request
    listMultiplexPrograms,
    ListMultiplexPrograms,

    -- * Request Lenses
    lmpNextToken,
    lmpMaxResults,
    lmpMultiplexId,

    -- * Destructuring the Response
    listMultiplexProgramsResponse,
    ListMultiplexProgramsResponse,

    -- * Response Lenses
    lmprrsMultiplexPrograms,
    lmprrsNextToken,
    lmprrsResponseStatus,
  )
where

import Network.AWS.Lens
import Network.AWS.MediaLive.Types
import Network.AWS.Pager
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | Placeholder documentation for ListMultiplexProgramsRequest
--
-- /See:/ 'listMultiplexPrograms' smart constructor.
data ListMultiplexPrograms = ListMultiplexPrograms'
  { _lmpNextToken ::
      !(Maybe Text),
    _lmpMaxResults ::
      !(Maybe Nat),
    _lmpMultiplexId :: !Text
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'ListMultiplexPrograms' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lmpNextToken' - The token to retrieve the next page of results.
--
-- * 'lmpMaxResults' - The maximum number of items to return.
--
-- * 'lmpMultiplexId' - The ID of the multiplex that the programs belong to.
listMultiplexPrograms ::
  -- | 'lmpMultiplexId'
  Text ->
  ListMultiplexPrograms
listMultiplexPrograms pMultiplexId_ =
  ListMultiplexPrograms'
    { _lmpNextToken = Nothing,
      _lmpMaxResults = Nothing,
      _lmpMultiplexId = pMultiplexId_
    }

-- | The token to retrieve the next page of results.
lmpNextToken :: Lens' ListMultiplexPrograms (Maybe Text)
lmpNextToken = lens _lmpNextToken (\s a -> s {_lmpNextToken = a})

-- | The maximum number of items to return.
lmpMaxResults :: Lens' ListMultiplexPrograms (Maybe Natural)
lmpMaxResults = lens _lmpMaxResults (\s a -> s {_lmpMaxResults = a}) . mapping _Nat

-- | The ID of the multiplex that the programs belong to.
lmpMultiplexId :: Lens' ListMultiplexPrograms Text
lmpMultiplexId = lens _lmpMultiplexId (\s a -> s {_lmpMultiplexId = a})

instance AWSPager ListMultiplexPrograms where
  page rq rs
    | stop (rs ^. lmprrsNextToken) = Nothing
    | stop (rs ^. lmprrsMultiplexPrograms) = Nothing
    | otherwise =
      Just $ rq & lmpNextToken .~ rs ^. lmprrsNextToken

instance AWSRequest ListMultiplexPrograms where
  type
    Rs ListMultiplexPrograms =
      ListMultiplexProgramsResponse
  request = get mediaLive
  response =
    receiveJSON
      ( \s h x ->
          ListMultiplexProgramsResponse'
            <$> (x .?> "multiplexPrograms" .!@ mempty)
            <*> (x .?> "nextToken")
            <*> (pure (fromEnum s))
      )

instance Hashable ListMultiplexPrograms

instance NFData ListMultiplexPrograms

instance ToHeaders ListMultiplexPrograms where
  toHeaders =
    const
      ( mconcat
          [ "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToPath ListMultiplexPrograms where
  toPath ListMultiplexPrograms' {..} =
    mconcat
      [ "/prod/multiplexes/",
        toBS _lmpMultiplexId,
        "/programs"
      ]

instance ToQuery ListMultiplexPrograms where
  toQuery ListMultiplexPrograms' {..} =
    mconcat
      [ "nextToken" =: _lmpNextToken,
        "maxResults" =: _lmpMaxResults
      ]

-- | Placeholder documentation for ListMultiplexProgramsResponse
--
-- /See:/ 'listMultiplexProgramsResponse' smart constructor.
data ListMultiplexProgramsResponse = ListMultiplexProgramsResponse'
  { _lmprrsMultiplexPrograms ::
      !( Maybe
           [MultiplexProgramSummary]
       ),
    _lmprrsNextToken ::
      !( Maybe
           Text
       ),
    _lmprrsResponseStatus ::
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

-- | Creates a value of 'ListMultiplexProgramsResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lmprrsMultiplexPrograms' - List of multiplex programs.
--
-- * 'lmprrsNextToken' - Token for the next ListMultiplexProgram request.
--
-- * 'lmprrsResponseStatus' - -- | The response status code.
listMultiplexProgramsResponse ::
  -- | 'lmprrsResponseStatus'
  Int ->
  ListMultiplexProgramsResponse
listMultiplexProgramsResponse pResponseStatus_ =
  ListMultiplexProgramsResponse'
    { _lmprrsMultiplexPrograms =
        Nothing,
      _lmprrsNextToken = Nothing,
      _lmprrsResponseStatus = pResponseStatus_
    }

-- | List of multiplex programs.
lmprrsMultiplexPrograms :: Lens' ListMultiplexProgramsResponse [MultiplexProgramSummary]
lmprrsMultiplexPrograms = lens _lmprrsMultiplexPrograms (\s a -> s {_lmprrsMultiplexPrograms = a}) . _Default . _Coerce

-- | Token for the next ListMultiplexProgram request.
lmprrsNextToken :: Lens' ListMultiplexProgramsResponse (Maybe Text)
lmprrsNextToken = lens _lmprrsNextToken (\s a -> s {_lmprrsNextToken = a})

-- | -- | The response status code.
lmprrsResponseStatus :: Lens' ListMultiplexProgramsResponse Int
lmprrsResponseStatus = lens _lmprrsResponseStatus (\s a -> s {_lmprrsResponseStatus = a})

instance NFData ListMultiplexProgramsResponse

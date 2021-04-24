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
-- Module      : Network.AWS.MechanicalTurk.ListWorkerBlocks
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- The @ListWorkersBlocks@ operation retrieves a list of Workers who are blocked from working on your HITs.
--
--
--
-- This operation returns paginated results.
module Network.AWS.MechanicalTurk.ListWorkerBlocks
  ( -- * Creating a Request
    listWorkerBlocks,
    ListWorkerBlocks,

    -- * Request Lenses
    lwbNextToken,
    lwbMaxResults,

    -- * Destructuring the Response
    listWorkerBlocksResponse,
    ListWorkerBlocksResponse,

    -- * Response Lenses
    lwbrrsNextToken,
    lwbrrsWorkerBlocks,
    lwbrrsNumResults,
    lwbrrsResponseStatus,
  )
where

import Network.AWS.Lens
import Network.AWS.MechanicalTurk.Types
import Network.AWS.Pager
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'listWorkerBlocks' smart constructor.
data ListWorkerBlocks = ListWorkerBlocks'
  { _lwbNextToken ::
      !(Maybe Text),
    _lwbMaxResults :: !(Maybe Nat)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'ListWorkerBlocks' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lwbNextToken' - Pagination token
--
-- * 'lwbMaxResults' - Undocumented member.
listWorkerBlocks ::
  ListWorkerBlocks
listWorkerBlocks =
  ListWorkerBlocks'
    { _lwbNextToken = Nothing,
      _lwbMaxResults = Nothing
    }

-- | Pagination token
lwbNextToken :: Lens' ListWorkerBlocks (Maybe Text)
lwbNextToken = lens _lwbNextToken (\s a -> s {_lwbNextToken = a})

-- | Undocumented member.
lwbMaxResults :: Lens' ListWorkerBlocks (Maybe Natural)
lwbMaxResults = lens _lwbMaxResults (\s a -> s {_lwbMaxResults = a}) . mapping _Nat

instance AWSPager ListWorkerBlocks where
  page rq rs
    | stop (rs ^. lwbrrsNextToken) = Nothing
    | stop (rs ^. lwbrrsWorkerBlocks) = Nothing
    | otherwise =
      Just $ rq & lwbNextToken .~ rs ^. lwbrrsNextToken

instance AWSRequest ListWorkerBlocks where
  type Rs ListWorkerBlocks = ListWorkerBlocksResponse
  request = postJSON mechanicalTurk
  response =
    receiveJSON
      ( \s h x ->
          ListWorkerBlocksResponse'
            <$> (x .?> "NextToken")
            <*> (x .?> "WorkerBlocks" .!@ mempty)
            <*> (x .?> "NumResults")
            <*> (pure (fromEnum s))
      )

instance Hashable ListWorkerBlocks

instance NFData ListWorkerBlocks

instance ToHeaders ListWorkerBlocks where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ( "MTurkRequesterServiceV20170117.ListWorkerBlocks" ::
                     ByteString
                 ),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON ListWorkerBlocks where
  toJSON ListWorkerBlocks' {..} =
    object
      ( catMaybes
          [ ("NextToken" .=) <$> _lwbNextToken,
            ("MaxResults" .=) <$> _lwbMaxResults
          ]
      )

instance ToPath ListWorkerBlocks where
  toPath = const "/"

instance ToQuery ListWorkerBlocks where
  toQuery = const mempty

-- | /See:/ 'listWorkerBlocksResponse' smart constructor.
data ListWorkerBlocksResponse = ListWorkerBlocksResponse'
  { _lwbrrsNextToken ::
      !(Maybe Text),
    _lwbrrsWorkerBlocks ::
      !( Maybe
           [WorkerBlock]
       ),
    _lwbrrsNumResults ::
      !(Maybe Int),
    _lwbrrsResponseStatus ::
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

-- | Creates a value of 'ListWorkerBlocksResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lwbrrsNextToken' - Undocumented member.
--
-- * 'lwbrrsWorkerBlocks' - The list of WorkerBlocks, containing the collection of Worker IDs and reasons for blocking.
--
-- * 'lwbrrsNumResults' - The number of assignments on the page in the filtered results list, equivalent to the number of assignments returned by this call.
--
-- * 'lwbrrsResponseStatus' - -- | The response status code.
listWorkerBlocksResponse ::
  -- | 'lwbrrsResponseStatus'
  Int ->
  ListWorkerBlocksResponse
listWorkerBlocksResponse pResponseStatus_ =
  ListWorkerBlocksResponse'
    { _lwbrrsNextToken =
        Nothing,
      _lwbrrsWorkerBlocks = Nothing,
      _lwbrrsNumResults = Nothing,
      _lwbrrsResponseStatus = pResponseStatus_
    }

-- | Undocumented member.
lwbrrsNextToken :: Lens' ListWorkerBlocksResponse (Maybe Text)
lwbrrsNextToken = lens _lwbrrsNextToken (\s a -> s {_lwbrrsNextToken = a})

-- | The list of WorkerBlocks, containing the collection of Worker IDs and reasons for blocking.
lwbrrsWorkerBlocks :: Lens' ListWorkerBlocksResponse [WorkerBlock]
lwbrrsWorkerBlocks = lens _lwbrrsWorkerBlocks (\s a -> s {_lwbrrsWorkerBlocks = a}) . _Default . _Coerce

-- | The number of assignments on the page in the filtered results list, equivalent to the number of assignments returned by this call.
lwbrrsNumResults :: Lens' ListWorkerBlocksResponse (Maybe Int)
lwbrrsNumResults = lens _lwbrrsNumResults (\s a -> s {_lwbrrsNumResults = a})

-- | -- | The response status code.
lwbrrsResponseStatus :: Lens' ListWorkerBlocksResponse Int
lwbrrsResponseStatus = lens _lwbrrsResponseStatus (\s a -> s {_lwbrrsResponseStatus = a})

instance NFData ListWorkerBlocksResponse

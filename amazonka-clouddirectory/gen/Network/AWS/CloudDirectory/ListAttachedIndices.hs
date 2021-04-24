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
-- Module      : Network.AWS.CloudDirectory.ListAttachedIndices
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists indices attached to the specified object.
--
--
--
-- This operation returns paginated results.
module Network.AWS.CloudDirectory.ListAttachedIndices
  ( -- * Creating a Request
    listAttachedIndices,
    ListAttachedIndices,

    -- * Request Lenses
    laiNextToken,
    laiMaxResults,
    laiConsistencyLevel,
    laiDirectoryARN,
    laiTargetReference,

    -- * Destructuring the Response
    listAttachedIndicesResponse,
    ListAttachedIndicesResponse,

    -- * Response Lenses
    lairrsNextToken,
    lairrsIndexAttachments,
    lairrsResponseStatus,
  )
where

import Network.AWS.CloudDirectory.Types
import Network.AWS.Lens
import Network.AWS.Pager
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'listAttachedIndices' smart constructor.
data ListAttachedIndices = ListAttachedIndices'
  { _laiNextToken ::
      !(Maybe Text),
    _laiMaxResults :: !(Maybe Nat),
    _laiConsistencyLevel ::
      !(Maybe ConsistencyLevel),
    _laiDirectoryARN :: !Text,
    _laiTargetReference ::
      !ObjectReference
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'ListAttachedIndices' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'laiNextToken' - The pagination token.
--
-- * 'laiMaxResults' - The maximum number of results to retrieve.
--
-- * 'laiConsistencyLevel' - The consistency level to use for this operation.
--
-- * 'laiDirectoryARN' - The ARN of the directory.
--
-- * 'laiTargetReference' - A reference to the object that has indices attached.
listAttachedIndices ::
  -- | 'laiDirectoryARN'
  Text ->
  -- | 'laiTargetReference'
  ObjectReference ->
  ListAttachedIndices
listAttachedIndices pDirectoryARN_ pTargetReference_ =
  ListAttachedIndices'
    { _laiNextToken = Nothing,
      _laiMaxResults = Nothing,
      _laiConsistencyLevel = Nothing,
      _laiDirectoryARN = pDirectoryARN_,
      _laiTargetReference = pTargetReference_
    }

-- | The pagination token.
laiNextToken :: Lens' ListAttachedIndices (Maybe Text)
laiNextToken = lens _laiNextToken (\s a -> s {_laiNextToken = a})

-- | The maximum number of results to retrieve.
laiMaxResults :: Lens' ListAttachedIndices (Maybe Natural)
laiMaxResults = lens _laiMaxResults (\s a -> s {_laiMaxResults = a}) . mapping _Nat

-- | The consistency level to use for this operation.
laiConsistencyLevel :: Lens' ListAttachedIndices (Maybe ConsistencyLevel)
laiConsistencyLevel = lens _laiConsistencyLevel (\s a -> s {_laiConsistencyLevel = a})

-- | The ARN of the directory.
laiDirectoryARN :: Lens' ListAttachedIndices Text
laiDirectoryARN = lens _laiDirectoryARN (\s a -> s {_laiDirectoryARN = a})

-- | A reference to the object that has indices attached.
laiTargetReference :: Lens' ListAttachedIndices ObjectReference
laiTargetReference = lens _laiTargetReference (\s a -> s {_laiTargetReference = a})

instance AWSPager ListAttachedIndices where
  page rq rs
    | stop (rs ^. lairrsNextToken) = Nothing
    | stop (rs ^. lairrsIndexAttachments) = Nothing
    | otherwise =
      Just $ rq & laiNextToken .~ rs ^. lairrsNextToken

instance AWSRequest ListAttachedIndices where
  type
    Rs ListAttachedIndices =
      ListAttachedIndicesResponse
  request = postJSON cloudDirectory
  response =
    receiveJSON
      ( \s h x ->
          ListAttachedIndicesResponse'
            <$> (x .?> "NextToken")
            <*> (x .?> "IndexAttachments" .!@ mempty)
            <*> (pure (fromEnum s))
      )

instance Hashable ListAttachedIndices

instance NFData ListAttachedIndices

instance ToHeaders ListAttachedIndices where
  toHeaders ListAttachedIndices' {..} =
    mconcat
      [ "x-amz-consistency-level" =# _laiConsistencyLevel,
        "x-amz-data-partition" =# _laiDirectoryARN
      ]

instance ToJSON ListAttachedIndices where
  toJSON ListAttachedIndices' {..} =
    object
      ( catMaybes
          [ ("NextToken" .=) <$> _laiNextToken,
            ("MaxResults" .=) <$> _laiMaxResults,
            Just ("TargetReference" .= _laiTargetReference)
          ]
      )

instance ToPath ListAttachedIndices where
  toPath =
    const
      "/amazonclouddirectory/2017-01-11/object/indices"

instance ToQuery ListAttachedIndices where
  toQuery = const mempty

-- | /See:/ 'listAttachedIndicesResponse' smart constructor.
data ListAttachedIndicesResponse = ListAttachedIndicesResponse'
  { _lairrsNextToken ::
      !(Maybe Text),
    _lairrsIndexAttachments ::
      !( Maybe
           [IndexAttachment]
       ),
    _lairrsResponseStatus ::
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

-- | Creates a value of 'ListAttachedIndicesResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lairrsNextToken' - The pagination token.
--
-- * 'lairrsIndexAttachments' - The indices attached to the specified object.
--
-- * 'lairrsResponseStatus' - -- | The response status code.
listAttachedIndicesResponse ::
  -- | 'lairrsResponseStatus'
  Int ->
  ListAttachedIndicesResponse
listAttachedIndicesResponse pResponseStatus_ =
  ListAttachedIndicesResponse'
    { _lairrsNextToken =
        Nothing,
      _lairrsIndexAttachments = Nothing,
      _lairrsResponseStatus = pResponseStatus_
    }

-- | The pagination token.
lairrsNextToken :: Lens' ListAttachedIndicesResponse (Maybe Text)
lairrsNextToken = lens _lairrsNextToken (\s a -> s {_lairrsNextToken = a})

-- | The indices attached to the specified object.
lairrsIndexAttachments :: Lens' ListAttachedIndicesResponse [IndexAttachment]
lairrsIndexAttachments = lens _lairrsIndexAttachments (\s a -> s {_lairrsIndexAttachments = a}) . _Default . _Coerce

-- | -- | The response status code.
lairrsResponseStatus :: Lens' ListAttachedIndicesResponse Int
lairrsResponseStatus = lens _lairrsResponseStatus (\s a -> s {_lairrsResponseStatus = a})

instance NFData ListAttachedIndicesResponse

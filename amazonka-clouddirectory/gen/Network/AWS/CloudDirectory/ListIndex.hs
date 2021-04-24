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
-- Module      : Network.AWS.CloudDirectory.ListIndex
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists objects attached to the specified index.
--
--
--
-- This operation returns paginated results.
module Network.AWS.CloudDirectory.ListIndex
  ( -- * Creating a Request
    listIndex,
    ListIndex,

    -- * Request Lenses
    liNextToken,
    liMaxResults,
    liConsistencyLevel,
    liRangesOnIndexedValues,
    liDirectoryARN,
    liIndexReference,

    -- * Destructuring the Response
    listIndexResponse,
    ListIndexResponse,

    -- * Response Lenses
    lirrsNextToken,
    lirrsIndexAttachments,
    lirrsResponseStatus,
  )
where

import Network.AWS.CloudDirectory.Types
import Network.AWS.Lens
import Network.AWS.Pager
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'listIndex' smart constructor.
data ListIndex = ListIndex'
  { _liNextToken ::
      !(Maybe Text),
    _liMaxResults :: !(Maybe Nat),
    _liConsistencyLevel :: !(Maybe ConsistencyLevel),
    _liRangesOnIndexedValues ::
      !(Maybe [ObjectAttributeRange]),
    _liDirectoryARN :: !Text,
    _liIndexReference :: !ObjectReference
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'ListIndex' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'liNextToken' - The pagination token.
--
-- * 'liMaxResults' - The maximum number of objects in a single page to retrieve from the index during a request. For more information, see <http://docs.aws.amazon.com/clouddirectory/latest/developerguide/limits.html Amazon Cloud Directory Limits> .
--
-- * 'liConsistencyLevel' - The consistency level to execute the request at.
--
-- * 'liRangesOnIndexedValues' - Specifies the ranges of indexed values that you want to query.
--
-- * 'liDirectoryARN' - The ARN of the directory that the index exists in.
--
-- * 'liIndexReference' - The reference to the index to list.
listIndex ::
  -- | 'liDirectoryARN'
  Text ->
  -- | 'liIndexReference'
  ObjectReference ->
  ListIndex
listIndex pDirectoryARN_ pIndexReference_ =
  ListIndex'
    { _liNextToken = Nothing,
      _liMaxResults = Nothing,
      _liConsistencyLevel = Nothing,
      _liRangesOnIndexedValues = Nothing,
      _liDirectoryARN = pDirectoryARN_,
      _liIndexReference = pIndexReference_
    }

-- | The pagination token.
liNextToken :: Lens' ListIndex (Maybe Text)
liNextToken = lens _liNextToken (\s a -> s {_liNextToken = a})

-- | The maximum number of objects in a single page to retrieve from the index during a request. For more information, see <http://docs.aws.amazon.com/clouddirectory/latest/developerguide/limits.html Amazon Cloud Directory Limits> .
liMaxResults :: Lens' ListIndex (Maybe Natural)
liMaxResults = lens _liMaxResults (\s a -> s {_liMaxResults = a}) . mapping _Nat

-- | The consistency level to execute the request at.
liConsistencyLevel :: Lens' ListIndex (Maybe ConsistencyLevel)
liConsistencyLevel = lens _liConsistencyLevel (\s a -> s {_liConsistencyLevel = a})

-- | Specifies the ranges of indexed values that you want to query.
liRangesOnIndexedValues :: Lens' ListIndex [ObjectAttributeRange]
liRangesOnIndexedValues = lens _liRangesOnIndexedValues (\s a -> s {_liRangesOnIndexedValues = a}) . _Default . _Coerce

-- | The ARN of the directory that the index exists in.
liDirectoryARN :: Lens' ListIndex Text
liDirectoryARN = lens _liDirectoryARN (\s a -> s {_liDirectoryARN = a})

-- | The reference to the index to list.
liIndexReference :: Lens' ListIndex ObjectReference
liIndexReference = lens _liIndexReference (\s a -> s {_liIndexReference = a})

instance AWSPager ListIndex where
  page rq rs
    | stop (rs ^. lirrsNextToken) = Nothing
    | stop (rs ^. lirrsIndexAttachments) = Nothing
    | otherwise =
      Just $ rq & liNextToken .~ rs ^. lirrsNextToken

instance AWSRequest ListIndex where
  type Rs ListIndex = ListIndexResponse
  request = postJSON cloudDirectory
  response =
    receiveJSON
      ( \s h x ->
          ListIndexResponse'
            <$> (x .?> "NextToken")
            <*> (x .?> "IndexAttachments" .!@ mempty)
            <*> (pure (fromEnum s))
      )

instance Hashable ListIndex

instance NFData ListIndex

instance ToHeaders ListIndex where
  toHeaders ListIndex' {..} =
    mconcat
      [ "x-amz-consistency-level" =# _liConsistencyLevel,
        "x-amz-data-partition" =# _liDirectoryARN
      ]

instance ToJSON ListIndex where
  toJSON ListIndex' {..} =
    object
      ( catMaybes
          [ ("NextToken" .=) <$> _liNextToken,
            ("MaxResults" .=) <$> _liMaxResults,
            ("RangesOnIndexedValues" .=)
              <$> _liRangesOnIndexedValues,
            Just ("IndexReference" .= _liIndexReference)
          ]
      )

instance ToPath ListIndex where
  toPath =
    const
      "/amazonclouddirectory/2017-01-11/index/targets"

instance ToQuery ListIndex where
  toQuery = const mempty

-- | /See:/ 'listIndexResponse' smart constructor.
data ListIndexResponse = ListIndexResponse'
  { _lirrsNextToken ::
      !(Maybe Text),
    _lirrsIndexAttachments ::
      !(Maybe [IndexAttachment]),
    _lirrsResponseStatus :: !Int
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'ListIndexResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lirrsNextToken' - The pagination token.
--
-- * 'lirrsIndexAttachments' - The objects and indexed values attached to the index.
--
-- * 'lirrsResponseStatus' - -- | The response status code.
listIndexResponse ::
  -- | 'lirrsResponseStatus'
  Int ->
  ListIndexResponse
listIndexResponse pResponseStatus_ =
  ListIndexResponse'
    { _lirrsNextToken = Nothing,
      _lirrsIndexAttachments = Nothing,
      _lirrsResponseStatus = pResponseStatus_
    }

-- | The pagination token.
lirrsNextToken :: Lens' ListIndexResponse (Maybe Text)
lirrsNextToken = lens _lirrsNextToken (\s a -> s {_lirrsNextToken = a})

-- | The objects and indexed values attached to the index.
lirrsIndexAttachments :: Lens' ListIndexResponse [IndexAttachment]
lirrsIndexAttachments = lens _lirrsIndexAttachments (\s a -> s {_lirrsIndexAttachments = a}) . _Default . _Coerce

-- | -- | The response status code.
lirrsResponseStatus :: Lens' ListIndexResponse Int
lirrsResponseStatus = lens _lirrsResponseStatus (\s a -> s {_lirrsResponseStatus = a})

instance NFData ListIndexResponse

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
-- Module      : Network.AWS.CloudDirectory.ListObjectPolicies
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns policies attached to an object in pagination fashion.
--
--
--
-- This operation returns paginated results.
module Network.AWS.CloudDirectory.ListObjectPolicies
  ( -- * Creating a Request
    listObjectPolicies,
    ListObjectPolicies,

    -- * Request Lenses
    lNextToken,
    lMaxResults,
    lConsistencyLevel,
    lDirectoryARN,
    lObjectReference,

    -- * Destructuring the Response
    listObjectPoliciesResponse,
    ListObjectPoliciesResponse,

    -- * Response Lenses
    lrsNextToken,
    lrsAttachedPolicyIds,
    lrsResponseStatus,
  )
where

import Network.AWS.CloudDirectory.Types
import Network.AWS.Lens
import Network.AWS.Pager
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'listObjectPolicies' smart constructor.
data ListObjectPolicies = ListObjectPolicies'
  { _lNextToken ::
      !(Maybe Text),
    _lMaxResults :: !(Maybe Nat),
    _lConsistencyLevel ::
      !(Maybe ConsistencyLevel),
    _lDirectoryARN :: !Text,
    _lObjectReference ::
      !ObjectReference
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'ListObjectPolicies' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lNextToken' - The pagination token.
--
-- * 'lMaxResults' - The maximum number of items to be retrieved in a single call. This is an approximate number.
--
-- * 'lConsistencyLevel' - Represents the manner and timing in which the successful write or update of an object is reflected in a subsequent read operation of that same object.
--
-- * 'lDirectoryARN' - The Amazon Resource Name (ARN) that is associated with the 'Directory' where objects reside. For more information, see 'arns' .
--
-- * 'lObjectReference' - Reference that identifies the object for which policies will be listed.
listObjectPolicies ::
  -- | 'lDirectoryARN'
  Text ->
  -- | 'lObjectReference'
  ObjectReference ->
  ListObjectPolicies
listObjectPolicies pDirectoryARN_ pObjectReference_ =
  ListObjectPolicies'
    { _lNextToken = Nothing,
      _lMaxResults = Nothing,
      _lConsistencyLevel = Nothing,
      _lDirectoryARN = pDirectoryARN_,
      _lObjectReference = pObjectReference_
    }

-- | The pagination token.
lNextToken :: Lens' ListObjectPolicies (Maybe Text)
lNextToken = lens _lNextToken (\s a -> s {_lNextToken = a})

-- | The maximum number of items to be retrieved in a single call. This is an approximate number.
lMaxResults :: Lens' ListObjectPolicies (Maybe Natural)
lMaxResults = lens _lMaxResults (\s a -> s {_lMaxResults = a}) . mapping _Nat

-- | Represents the manner and timing in which the successful write or update of an object is reflected in a subsequent read operation of that same object.
lConsistencyLevel :: Lens' ListObjectPolicies (Maybe ConsistencyLevel)
lConsistencyLevel = lens _lConsistencyLevel (\s a -> s {_lConsistencyLevel = a})

-- | The Amazon Resource Name (ARN) that is associated with the 'Directory' where objects reside. For more information, see 'arns' .
lDirectoryARN :: Lens' ListObjectPolicies Text
lDirectoryARN = lens _lDirectoryARN (\s a -> s {_lDirectoryARN = a})

-- | Reference that identifies the object for which policies will be listed.
lObjectReference :: Lens' ListObjectPolicies ObjectReference
lObjectReference = lens _lObjectReference (\s a -> s {_lObjectReference = a})

instance AWSPager ListObjectPolicies where
  page rq rs
    | stop (rs ^. lrsNextToken) = Nothing
    | stop (rs ^. lrsAttachedPolicyIds) = Nothing
    | otherwise =
      Just $ rq & lNextToken .~ rs ^. lrsNextToken

instance AWSRequest ListObjectPolicies where
  type
    Rs ListObjectPolicies =
      ListObjectPoliciesResponse
  request = postJSON cloudDirectory
  response =
    receiveJSON
      ( \s h x ->
          ListObjectPoliciesResponse'
            <$> (x .?> "NextToken")
            <*> (x .?> "AttachedPolicyIds" .!@ mempty)
            <*> (pure (fromEnum s))
      )

instance Hashable ListObjectPolicies

instance NFData ListObjectPolicies

instance ToHeaders ListObjectPolicies where
  toHeaders ListObjectPolicies' {..} =
    mconcat
      [ "x-amz-consistency-level" =# _lConsistencyLevel,
        "x-amz-data-partition" =# _lDirectoryARN
      ]

instance ToJSON ListObjectPolicies where
  toJSON ListObjectPolicies' {..} =
    object
      ( catMaybes
          [ ("NextToken" .=) <$> _lNextToken,
            ("MaxResults" .=) <$> _lMaxResults,
            Just ("ObjectReference" .= _lObjectReference)
          ]
      )

instance ToPath ListObjectPolicies where
  toPath =
    const
      "/amazonclouddirectory/2017-01-11/object/policy"

instance ToQuery ListObjectPolicies where
  toQuery = const mempty

-- | /See:/ 'listObjectPoliciesResponse' smart constructor.
data ListObjectPoliciesResponse = ListObjectPoliciesResponse'
  { _lrsNextToken ::
      !(Maybe Text),
    _lrsAttachedPolicyIds ::
      !(Maybe [Text]),
    _lrsResponseStatus ::
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

-- | Creates a value of 'ListObjectPoliciesResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lrsNextToken' - The pagination token.
--
-- * 'lrsAttachedPolicyIds' - A list of policy @ObjectIdentifiers@ , that are attached to the object.
--
-- * 'lrsResponseStatus' - -- | The response status code.
listObjectPoliciesResponse ::
  -- | 'lrsResponseStatus'
  Int ->
  ListObjectPoliciesResponse
listObjectPoliciesResponse pResponseStatus_ =
  ListObjectPoliciesResponse'
    { _lrsNextToken =
        Nothing,
      _lrsAttachedPolicyIds = Nothing,
      _lrsResponseStatus = pResponseStatus_
    }

-- | The pagination token.
lrsNextToken :: Lens' ListObjectPoliciesResponse (Maybe Text)
lrsNextToken = lens _lrsNextToken (\s a -> s {_lrsNextToken = a})

-- | A list of policy @ObjectIdentifiers@ , that are attached to the object.
lrsAttachedPolicyIds :: Lens' ListObjectPoliciesResponse [Text]
lrsAttachedPolicyIds = lens _lrsAttachedPolicyIds (\s a -> s {_lrsAttachedPolicyIds = a}) . _Default . _Coerce

-- | -- | The response status code.
lrsResponseStatus :: Lens' ListObjectPoliciesResponse Int
lrsResponseStatus = lens _lrsResponseStatus (\s a -> s {_lrsResponseStatus = a})

instance NFData ListObjectPoliciesResponse

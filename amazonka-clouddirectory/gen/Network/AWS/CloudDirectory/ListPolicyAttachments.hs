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
-- Module      : Network.AWS.CloudDirectory.ListPolicyAttachments
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns all of the @ObjectIdentifiers@ to which a given policy is attached.
--
--
--
-- This operation returns paginated results.
module Network.AWS.CloudDirectory.ListPolicyAttachments
  ( -- * Creating a Request
    listPolicyAttachments,
    ListPolicyAttachments,

    -- * Request Lenses
    lpaNextToken,
    lpaMaxResults,
    lpaConsistencyLevel,
    lpaDirectoryARN,
    lpaPolicyReference,

    -- * Destructuring the Response
    listPolicyAttachmentsResponse,
    ListPolicyAttachmentsResponse,

    -- * Response Lenses
    lparrsNextToken,
    lparrsObjectIdentifiers,
    lparrsResponseStatus,
  )
where

import Network.AWS.CloudDirectory.Types
import Network.AWS.Lens
import Network.AWS.Pager
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'listPolicyAttachments' smart constructor.
data ListPolicyAttachments = ListPolicyAttachments'
  { _lpaNextToken ::
      !(Maybe Text),
    _lpaMaxResults ::
      !(Maybe Nat),
    _lpaConsistencyLevel ::
      !(Maybe ConsistencyLevel),
    _lpaDirectoryARN :: !Text,
    _lpaPolicyReference ::
      !ObjectReference
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'ListPolicyAttachments' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lpaNextToken' - The pagination token.
--
-- * 'lpaMaxResults' - The maximum number of items to be retrieved in a single call. This is an approximate number.
--
-- * 'lpaConsistencyLevel' - Represents the manner and timing in which the successful write or update of an object is reflected in a subsequent read operation of that same object.
--
-- * 'lpaDirectoryARN' - The Amazon Resource Name (ARN) that is associated with the 'Directory' where objects reside. For more information, see 'arns' .
--
-- * 'lpaPolicyReference' - The reference that identifies the policy object.
listPolicyAttachments ::
  -- | 'lpaDirectoryARN'
  Text ->
  -- | 'lpaPolicyReference'
  ObjectReference ->
  ListPolicyAttachments
listPolicyAttachments
  pDirectoryARN_
  pPolicyReference_ =
    ListPolicyAttachments'
      { _lpaNextToken = Nothing,
        _lpaMaxResults = Nothing,
        _lpaConsistencyLevel = Nothing,
        _lpaDirectoryARN = pDirectoryARN_,
        _lpaPolicyReference = pPolicyReference_
      }

-- | The pagination token.
lpaNextToken :: Lens' ListPolicyAttachments (Maybe Text)
lpaNextToken = lens _lpaNextToken (\s a -> s {_lpaNextToken = a})

-- | The maximum number of items to be retrieved in a single call. This is an approximate number.
lpaMaxResults :: Lens' ListPolicyAttachments (Maybe Natural)
lpaMaxResults = lens _lpaMaxResults (\s a -> s {_lpaMaxResults = a}) . mapping _Nat

-- | Represents the manner and timing in which the successful write or update of an object is reflected in a subsequent read operation of that same object.
lpaConsistencyLevel :: Lens' ListPolicyAttachments (Maybe ConsistencyLevel)
lpaConsistencyLevel = lens _lpaConsistencyLevel (\s a -> s {_lpaConsistencyLevel = a})

-- | The Amazon Resource Name (ARN) that is associated with the 'Directory' where objects reside. For more information, see 'arns' .
lpaDirectoryARN :: Lens' ListPolicyAttachments Text
lpaDirectoryARN = lens _lpaDirectoryARN (\s a -> s {_lpaDirectoryARN = a})

-- | The reference that identifies the policy object.
lpaPolicyReference :: Lens' ListPolicyAttachments ObjectReference
lpaPolicyReference = lens _lpaPolicyReference (\s a -> s {_lpaPolicyReference = a})

instance AWSPager ListPolicyAttachments where
  page rq rs
    | stop (rs ^. lparrsNextToken) = Nothing
    | stop (rs ^. lparrsObjectIdentifiers) = Nothing
    | otherwise =
      Just $ rq & lpaNextToken .~ rs ^. lparrsNextToken

instance AWSRequest ListPolicyAttachments where
  type
    Rs ListPolicyAttachments =
      ListPolicyAttachmentsResponse
  request = postJSON cloudDirectory
  response =
    receiveJSON
      ( \s h x ->
          ListPolicyAttachmentsResponse'
            <$> (x .?> "NextToken")
            <*> (x .?> "ObjectIdentifiers" .!@ mempty)
            <*> (pure (fromEnum s))
      )

instance Hashable ListPolicyAttachments

instance NFData ListPolicyAttachments

instance ToHeaders ListPolicyAttachments where
  toHeaders ListPolicyAttachments' {..} =
    mconcat
      [ "x-amz-consistency-level" =# _lpaConsistencyLevel,
        "x-amz-data-partition" =# _lpaDirectoryARN
      ]

instance ToJSON ListPolicyAttachments where
  toJSON ListPolicyAttachments' {..} =
    object
      ( catMaybes
          [ ("NextToken" .=) <$> _lpaNextToken,
            ("MaxResults" .=) <$> _lpaMaxResults,
            Just ("PolicyReference" .= _lpaPolicyReference)
          ]
      )

instance ToPath ListPolicyAttachments where
  toPath =
    const
      "/amazonclouddirectory/2017-01-11/policy/attachment"

instance ToQuery ListPolicyAttachments where
  toQuery = const mempty

-- | /See:/ 'listPolicyAttachmentsResponse' smart constructor.
data ListPolicyAttachmentsResponse = ListPolicyAttachmentsResponse'
  { _lparrsNextToken ::
      !( Maybe
           Text
       ),
    _lparrsObjectIdentifiers ::
      !( Maybe
           [Text]
       ),
    _lparrsResponseStatus ::
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

-- | Creates a value of 'ListPolicyAttachmentsResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lparrsNextToken' - The pagination token.
--
-- * 'lparrsObjectIdentifiers' - A list of @ObjectIdentifiers@ to which the policy is attached.
--
-- * 'lparrsResponseStatus' - -- | The response status code.
listPolicyAttachmentsResponse ::
  -- | 'lparrsResponseStatus'
  Int ->
  ListPolicyAttachmentsResponse
listPolicyAttachmentsResponse pResponseStatus_ =
  ListPolicyAttachmentsResponse'
    { _lparrsNextToken =
        Nothing,
      _lparrsObjectIdentifiers = Nothing,
      _lparrsResponseStatus = pResponseStatus_
    }

-- | The pagination token.
lparrsNextToken :: Lens' ListPolicyAttachmentsResponse (Maybe Text)
lparrsNextToken = lens _lparrsNextToken (\s a -> s {_lparrsNextToken = a})

-- | A list of @ObjectIdentifiers@ to which the policy is attached.
lparrsObjectIdentifiers :: Lens' ListPolicyAttachmentsResponse [Text]
lparrsObjectIdentifiers = lens _lparrsObjectIdentifiers (\s a -> s {_lparrsObjectIdentifiers = a}) . _Default . _Coerce

-- | -- | The response status code.
lparrsResponseStatus :: Lens' ListPolicyAttachmentsResponse Int
lparrsResponseStatus = lens _lparrsResponseStatus (\s a -> s {_lparrsResponseStatus = a})

instance NFData ListPolicyAttachmentsResponse

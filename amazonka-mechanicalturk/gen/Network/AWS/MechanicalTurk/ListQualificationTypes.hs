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
-- Module      : Network.AWS.MechanicalTurk.ListQualificationTypes
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- The @ListQualificationTypes@ operation returns a list of Qualification types, filtered by an optional search term.
--
--
--
-- This operation returns paginated results.
module Network.AWS.MechanicalTurk.ListQualificationTypes
  ( -- * Creating a Request
    listQualificationTypes,
    ListQualificationTypes,

    -- * Request Lenses
    lqtNextToken,
    lqtMaxResults,
    lqtQuery,
    lqtMustBeOwnedByCaller,
    lqtMustBeRequestable,

    -- * Destructuring the Response
    listQualificationTypesResponse,
    ListQualificationTypesResponse,

    -- * Response Lenses
    lqtrrsNextToken,
    lqtrrsQualificationTypes,
    lqtrrsNumResults,
    lqtrrsResponseStatus,
  )
where

import Network.AWS.Lens
import Network.AWS.MechanicalTurk.Types
import Network.AWS.Pager
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'listQualificationTypes' smart constructor.
data ListQualificationTypes = ListQualificationTypes'
  { _lqtNextToken ::
      !(Maybe Text),
    _lqtMaxResults ::
      !(Maybe Nat),
    _lqtQuery ::
      !(Maybe Text),
    _lqtMustBeOwnedByCaller ::
      !(Maybe Bool),
    _lqtMustBeRequestable ::
      !Bool
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'ListQualificationTypes' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lqtNextToken' - Undocumented member.
--
-- * 'lqtMaxResults' - The maximum number of results to return in a single call.
--
-- * 'lqtQuery' - A text query against all of the searchable attributes of Qualification types.
--
-- * 'lqtMustBeOwnedByCaller' - Specifies that only Qualification types that the Requester created are returned. If false, the operation returns all Qualification types.
--
-- * 'lqtMustBeRequestable' - Specifies that only Qualification types that a user can request through the Amazon Mechanical Turk web site, such as by taking a Qualification test, are returned as results of the search. Some Qualification types, such as those assigned automatically by the system, cannot be requested directly by users. If false, all Qualification types, including those managed by the system, are considered. Valid values are True | False.
listQualificationTypes ::
  -- | 'lqtMustBeRequestable'
  Bool ->
  ListQualificationTypes
listQualificationTypes pMustBeRequestable_ =
  ListQualificationTypes'
    { _lqtNextToken = Nothing,
      _lqtMaxResults = Nothing,
      _lqtQuery = Nothing,
      _lqtMustBeOwnedByCaller = Nothing,
      _lqtMustBeRequestable = pMustBeRequestable_
    }

-- | Undocumented member.
lqtNextToken :: Lens' ListQualificationTypes (Maybe Text)
lqtNextToken = lens _lqtNextToken (\s a -> s {_lqtNextToken = a})

-- | The maximum number of results to return in a single call.
lqtMaxResults :: Lens' ListQualificationTypes (Maybe Natural)
lqtMaxResults = lens _lqtMaxResults (\s a -> s {_lqtMaxResults = a}) . mapping _Nat

-- | A text query against all of the searchable attributes of Qualification types.
lqtQuery :: Lens' ListQualificationTypes (Maybe Text)
lqtQuery = lens _lqtQuery (\s a -> s {_lqtQuery = a})

-- | Specifies that only Qualification types that the Requester created are returned. If false, the operation returns all Qualification types.
lqtMustBeOwnedByCaller :: Lens' ListQualificationTypes (Maybe Bool)
lqtMustBeOwnedByCaller = lens _lqtMustBeOwnedByCaller (\s a -> s {_lqtMustBeOwnedByCaller = a})

-- | Specifies that only Qualification types that a user can request through the Amazon Mechanical Turk web site, such as by taking a Qualification test, are returned as results of the search. Some Qualification types, such as those assigned automatically by the system, cannot be requested directly by users. If false, all Qualification types, including those managed by the system, are considered. Valid values are True | False.
lqtMustBeRequestable :: Lens' ListQualificationTypes Bool
lqtMustBeRequestable = lens _lqtMustBeRequestable (\s a -> s {_lqtMustBeRequestable = a})

instance AWSPager ListQualificationTypes where
  page rq rs
    | stop (rs ^. lqtrrsNextToken) = Nothing
    | stop (rs ^. lqtrrsQualificationTypes) = Nothing
    | otherwise =
      Just $ rq & lqtNextToken .~ rs ^. lqtrrsNextToken

instance AWSRequest ListQualificationTypes where
  type
    Rs ListQualificationTypes =
      ListQualificationTypesResponse
  request = postJSON mechanicalTurk
  response =
    receiveJSON
      ( \s h x ->
          ListQualificationTypesResponse'
            <$> (x .?> "NextToken")
            <*> (x .?> "QualificationTypes" .!@ mempty)
            <*> (x .?> "NumResults")
            <*> (pure (fromEnum s))
      )

instance Hashable ListQualificationTypes

instance NFData ListQualificationTypes

instance ToHeaders ListQualificationTypes where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ( "MTurkRequesterServiceV20170117.ListQualificationTypes" ::
                     ByteString
                 ),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON ListQualificationTypes where
  toJSON ListQualificationTypes' {..} =
    object
      ( catMaybes
          [ ("NextToken" .=) <$> _lqtNextToken,
            ("MaxResults" .=) <$> _lqtMaxResults,
            ("Query" .=) <$> _lqtQuery,
            ("MustBeOwnedByCaller" .=)
              <$> _lqtMustBeOwnedByCaller,
            Just ("MustBeRequestable" .= _lqtMustBeRequestable)
          ]
      )

instance ToPath ListQualificationTypes where
  toPath = const "/"

instance ToQuery ListQualificationTypes where
  toQuery = const mempty

-- | /See:/ 'listQualificationTypesResponse' smart constructor.
data ListQualificationTypesResponse = ListQualificationTypesResponse'
  { _lqtrrsNextToken ::
      !( Maybe
           Text
       ),
    _lqtrrsQualificationTypes ::
      !( Maybe
           [QualificationType]
       ),
    _lqtrrsNumResults ::
      !( Maybe
           Int
       ),
    _lqtrrsResponseStatus ::
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

-- | Creates a value of 'ListQualificationTypesResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lqtrrsNextToken' - Undocumented member.
--
-- * 'lqtrrsQualificationTypes' - The list of QualificationType elements returned by the query.
--
-- * 'lqtrrsNumResults' - The number of Qualification types on this page in the filtered results list, equivalent to the number of types this operation returns.
--
-- * 'lqtrrsResponseStatus' - -- | The response status code.
listQualificationTypesResponse ::
  -- | 'lqtrrsResponseStatus'
  Int ->
  ListQualificationTypesResponse
listQualificationTypesResponse pResponseStatus_ =
  ListQualificationTypesResponse'
    { _lqtrrsNextToken =
        Nothing,
      _lqtrrsQualificationTypes = Nothing,
      _lqtrrsNumResults = Nothing,
      _lqtrrsResponseStatus = pResponseStatus_
    }

-- | Undocumented member.
lqtrrsNextToken :: Lens' ListQualificationTypesResponse (Maybe Text)
lqtrrsNextToken = lens _lqtrrsNextToken (\s a -> s {_lqtrrsNextToken = a})

-- | The list of QualificationType elements returned by the query.
lqtrrsQualificationTypes :: Lens' ListQualificationTypesResponse [QualificationType]
lqtrrsQualificationTypes = lens _lqtrrsQualificationTypes (\s a -> s {_lqtrrsQualificationTypes = a}) . _Default . _Coerce

-- | The number of Qualification types on this page in the filtered results list, equivalent to the number of types this operation returns.
lqtrrsNumResults :: Lens' ListQualificationTypesResponse (Maybe Int)
lqtrrsNumResults = lens _lqtrrsNumResults (\s a -> s {_lqtrrsNumResults = a})

-- | -- | The response status code.
lqtrrsResponseStatus :: Lens' ListQualificationTypesResponse Int
lqtrrsResponseStatus = lens _lqtrrsResponseStatus (\s a -> s {_lqtrrsResponseStatus = a})

instance NFData ListQualificationTypesResponse

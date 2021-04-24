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
-- Module      : Network.AWS.MechanicalTurk.ListQualificationRequests
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- The @ListQualificationRequests@ operation retrieves requests for Qualifications of a particular Qualification type. The owner of the Qualification type calls this operation to poll for pending requests, and accepts them using the AcceptQualification operation.
--
--
--
-- This operation returns paginated results.
module Network.AWS.MechanicalTurk.ListQualificationRequests
  ( -- * Creating a Request
    listQualificationRequests,
    ListQualificationRequests,

    -- * Request Lenses
    lqrQualificationTypeId,
    lqrNextToken,
    lqrMaxResults,

    -- * Destructuring the Response
    listQualificationRequestsResponse,
    ListQualificationRequestsResponse,

    -- * Response Lenses
    lqrrrsNextToken,
    lqrrrsNumResults,
    lqrrrsQualificationRequests,
    lqrrrsResponseStatus,
  )
where

import Network.AWS.Lens
import Network.AWS.MechanicalTurk.Types
import Network.AWS.Pager
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'listQualificationRequests' smart constructor.
data ListQualificationRequests = ListQualificationRequests'
  { _lqrQualificationTypeId ::
      !(Maybe Text),
    _lqrNextToken ::
      !(Maybe Text),
    _lqrMaxResults ::
      !(Maybe Nat)
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'ListQualificationRequests' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lqrQualificationTypeId' - The ID of the QualificationType.
--
-- * 'lqrNextToken' - Undocumented member.
--
-- * 'lqrMaxResults' - The maximum number of results to return in a single call.
listQualificationRequests ::
  ListQualificationRequests
listQualificationRequests =
  ListQualificationRequests'
    { _lqrQualificationTypeId =
        Nothing,
      _lqrNextToken = Nothing,
      _lqrMaxResults = Nothing
    }

-- | The ID of the QualificationType.
lqrQualificationTypeId :: Lens' ListQualificationRequests (Maybe Text)
lqrQualificationTypeId = lens _lqrQualificationTypeId (\s a -> s {_lqrQualificationTypeId = a})

-- | Undocumented member.
lqrNextToken :: Lens' ListQualificationRequests (Maybe Text)
lqrNextToken = lens _lqrNextToken (\s a -> s {_lqrNextToken = a})

-- | The maximum number of results to return in a single call.
lqrMaxResults :: Lens' ListQualificationRequests (Maybe Natural)
lqrMaxResults = lens _lqrMaxResults (\s a -> s {_lqrMaxResults = a}) . mapping _Nat

instance AWSPager ListQualificationRequests where
  page rq rs
    | stop (rs ^. lqrrrsNextToken) = Nothing
    | stop (rs ^. lqrrrsQualificationRequests) = Nothing
    | otherwise =
      Just $ rq & lqrNextToken .~ rs ^. lqrrrsNextToken

instance AWSRequest ListQualificationRequests where
  type
    Rs ListQualificationRequests =
      ListQualificationRequestsResponse
  request = postJSON mechanicalTurk
  response =
    receiveJSON
      ( \s h x ->
          ListQualificationRequestsResponse'
            <$> (x .?> "NextToken")
            <*> (x .?> "NumResults")
            <*> (x .?> "QualificationRequests" .!@ mempty)
            <*> (pure (fromEnum s))
      )

instance Hashable ListQualificationRequests

instance NFData ListQualificationRequests

instance ToHeaders ListQualificationRequests where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ( "MTurkRequesterServiceV20170117.ListQualificationRequests" ::
                     ByteString
                 ),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON ListQualificationRequests where
  toJSON ListQualificationRequests' {..} =
    object
      ( catMaybes
          [ ("QualificationTypeId" .=)
              <$> _lqrQualificationTypeId,
            ("NextToken" .=) <$> _lqrNextToken,
            ("MaxResults" .=) <$> _lqrMaxResults
          ]
      )

instance ToPath ListQualificationRequests where
  toPath = const "/"

instance ToQuery ListQualificationRequests where
  toQuery = const mempty

-- | /See:/ 'listQualificationRequestsResponse' smart constructor.
data ListQualificationRequestsResponse = ListQualificationRequestsResponse'
  { _lqrrrsNextToken ::
      !( Maybe
           Text
       ),
    _lqrrrsNumResults ::
      !( Maybe
           Int
       ),
    _lqrrrsQualificationRequests ::
      !( Maybe
           [QualificationRequest]
       ),
    _lqrrrsResponseStatus ::
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

-- | Creates a value of 'ListQualificationRequestsResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lqrrrsNextToken' - Undocumented member.
--
-- * 'lqrrrsNumResults' - The number of Qualification requests on this page in the filtered results list, equivalent to the number of Qualification requests being returned by this call.
--
-- * 'lqrrrsQualificationRequests' - The Qualification request. The response includes one QualificationRequest element for each Qualification request returned by the query.
--
-- * 'lqrrrsResponseStatus' - -- | The response status code.
listQualificationRequestsResponse ::
  -- | 'lqrrrsResponseStatus'
  Int ->
  ListQualificationRequestsResponse
listQualificationRequestsResponse pResponseStatus_ =
  ListQualificationRequestsResponse'
    { _lqrrrsNextToken =
        Nothing,
      _lqrrrsNumResults = Nothing,
      _lqrrrsQualificationRequests = Nothing,
      _lqrrrsResponseStatus = pResponseStatus_
    }

-- | Undocumented member.
lqrrrsNextToken :: Lens' ListQualificationRequestsResponse (Maybe Text)
lqrrrsNextToken = lens _lqrrrsNextToken (\s a -> s {_lqrrrsNextToken = a})

-- | The number of Qualification requests on this page in the filtered results list, equivalent to the number of Qualification requests being returned by this call.
lqrrrsNumResults :: Lens' ListQualificationRequestsResponse (Maybe Int)
lqrrrsNumResults = lens _lqrrrsNumResults (\s a -> s {_lqrrrsNumResults = a})

-- | The Qualification request. The response includes one QualificationRequest element for each Qualification request returned by the query.
lqrrrsQualificationRequests :: Lens' ListQualificationRequestsResponse [QualificationRequest]
lqrrrsQualificationRequests = lens _lqrrrsQualificationRequests (\s a -> s {_lqrrrsQualificationRequests = a}) . _Default . _Coerce

-- | -- | The response status code.
lqrrrsResponseStatus :: Lens' ListQualificationRequestsResponse Int
lqrrrsResponseStatus = lens _lqrrrsResponseStatus (\s a -> s {_lqrrrsResponseStatus = a})

instance NFData ListQualificationRequestsResponse

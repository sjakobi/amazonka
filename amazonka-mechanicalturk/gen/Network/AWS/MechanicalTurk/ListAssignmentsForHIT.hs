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
-- Module      : Network.AWS.MechanicalTurk.ListAssignmentsForHIT
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- The @ListAssignmentsForHIT@ operation retrieves completed assignments for a HIT. You can use this operation to retrieve the results for a HIT.
--
--
-- You can get assignments for a HIT at any time, even if the HIT is not yet Reviewable. If a HIT requested multiple assignments, and has received some results but has not yet become Reviewable, you can still retrieve the partial results with this operation.
--
-- Use the AssignmentStatus parameter to control which set of assignments for a HIT are returned. The ListAssignmentsForHIT operation can return submitted assignments awaiting approval, or it can return assignments that have already been approved or rejected. You can set AssignmentStatus=Approved,Rejected to get assignments that have already been approved and rejected together in one result set.
--
-- Only the Requester who created the HIT can retrieve the assignments for that HIT.
--
-- Results are sorted and divided into numbered pages and the operation returns a single page of results. You can use the parameters of the operation to control sorting and pagination.
--
--
-- This operation returns paginated results.
module Network.AWS.MechanicalTurk.ListAssignmentsForHIT
  ( -- * Creating a Request
    listAssignmentsForHIT,
    ListAssignmentsForHIT,

    -- * Request Lenses
    lafhitNextToken,
    lafhitAssignmentStatuses,
    lafhitMaxResults,
    lafhitHITId,

    -- * Destructuring the Response
    listAssignmentsForHITResponse,
    ListAssignmentsForHITResponse,

    -- * Response Lenses
    lafhitrrsNextToken,
    lafhitrrsAssignments,
    lafhitrrsNumResults,
    lafhitrrsResponseStatus,
  )
where

import Network.AWS.Lens
import Network.AWS.MechanicalTurk.Types
import Network.AWS.Pager
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'listAssignmentsForHIT' smart constructor.
data ListAssignmentsForHIT = ListAssignmentsForHIT'
  { _lafhitNextToken ::
      !(Maybe Text),
    _lafhitAssignmentStatuses ::
      !(Maybe [AssignmentStatus]),
    _lafhitMaxResults ::
      !(Maybe Nat),
    _lafhitHITId :: !Text
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'ListAssignmentsForHIT' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lafhitNextToken' - Pagination token
--
-- * 'lafhitAssignmentStatuses' - The status of the assignments to return: Submitted | Approved | Rejected
--
-- * 'lafhitMaxResults' - Undocumented member.
--
-- * 'lafhitHITId' - The ID of the HIT.
listAssignmentsForHIT ::
  -- | 'lafhitHITId'
  Text ->
  ListAssignmentsForHIT
listAssignmentsForHIT pHITId_ =
  ListAssignmentsForHIT'
    { _lafhitNextToken = Nothing,
      _lafhitAssignmentStatuses = Nothing,
      _lafhitMaxResults = Nothing,
      _lafhitHITId = pHITId_
    }

-- | Pagination token
lafhitNextToken :: Lens' ListAssignmentsForHIT (Maybe Text)
lafhitNextToken = lens _lafhitNextToken (\s a -> s {_lafhitNextToken = a})

-- | The status of the assignments to return: Submitted | Approved | Rejected
lafhitAssignmentStatuses :: Lens' ListAssignmentsForHIT [AssignmentStatus]
lafhitAssignmentStatuses = lens _lafhitAssignmentStatuses (\s a -> s {_lafhitAssignmentStatuses = a}) . _Default . _Coerce

-- | Undocumented member.
lafhitMaxResults :: Lens' ListAssignmentsForHIT (Maybe Natural)
lafhitMaxResults = lens _lafhitMaxResults (\s a -> s {_lafhitMaxResults = a}) . mapping _Nat

-- | The ID of the HIT.
lafhitHITId :: Lens' ListAssignmentsForHIT Text
lafhitHITId = lens _lafhitHITId (\s a -> s {_lafhitHITId = a})

instance AWSPager ListAssignmentsForHIT where
  page rq rs
    | stop (rs ^. lafhitrrsNextToken) = Nothing
    | stop (rs ^. lafhitrrsAssignments) = Nothing
    | otherwise =
      Just $
        rq
          & lafhitNextToken .~ rs ^. lafhitrrsNextToken

instance AWSRequest ListAssignmentsForHIT where
  type
    Rs ListAssignmentsForHIT =
      ListAssignmentsForHITResponse
  request = postJSON mechanicalTurk
  response =
    receiveJSON
      ( \s h x ->
          ListAssignmentsForHITResponse'
            <$> (x .?> "NextToken")
            <*> (x .?> "Assignments" .!@ mempty)
            <*> (x .?> "NumResults")
            <*> (pure (fromEnum s))
      )

instance Hashable ListAssignmentsForHIT

instance NFData ListAssignmentsForHIT

instance ToHeaders ListAssignmentsForHIT where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ( "MTurkRequesterServiceV20170117.ListAssignmentsForHIT" ::
                     ByteString
                 ),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON ListAssignmentsForHIT where
  toJSON ListAssignmentsForHIT' {..} =
    object
      ( catMaybes
          [ ("NextToken" .=) <$> _lafhitNextToken,
            ("AssignmentStatuses" .=)
              <$> _lafhitAssignmentStatuses,
            ("MaxResults" .=) <$> _lafhitMaxResults,
            Just ("HITId" .= _lafhitHITId)
          ]
      )

instance ToPath ListAssignmentsForHIT where
  toPath = const "/"

instance ToQuery ListAssignmentsForHIT where
  toQuery = const mempty

-- | /See:/ 'listAssignmentsForHITResponse' smart constructor.
data ListAssignmentsForHITResponse = ListAssignmentsForHITResponse'
  { _lafhitrrsNextToken ::
      !( Maybe
           Text
       ),
    _lafhitrrsAssignments ::
      !( Maybe
           [Assignment]
       ),
    _lafhitrrsNumResults ::
      !( Maybe
           Int
       ),
    _lafhitrrsResponseStatus ::
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

-- | Creates a value of 'ListAssignmentsForHITResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lafhitrrsNextToken' - Undocumented member.
--
-- * 'lafhitrrsAssignments' - The collection of Assignment data structures returned by this call.
--
-- * 'lafhitrrsNumResults' - The number of assignments on the page in the filtered results list, equivalent to the number of assignments returned by this call.
--
-- * 'lafhitrrsResponseStatus' - -- | The response status code.
listAssignmentsForHITResponse ::
  -- | 'lafhitrrsResponseStatus'
  Int ->
  ListAssignmentsForHITResponse
listAssignmentsForHITResponse pResponseStatus_ =
  ListAssignmentsForHITResponse'
    { _lafhitrrsNextToken =
        Nothing,
      _lafhitrrsAssignments = Nothing,
      _lafhitrrsNumResults = Nothing,
      _lafhitrrsResponseStatus = pResponseStatus_
    }

-- | Undocumented member.
lafhitrrsNextToken :: Lens' ListAssignmentsForHITResponse (Maybe Text)
lafhitrrsNextToken = lens _lafhitrrsNextToken (\s a -> s {_lafhitrrsNextToken = a})

-- | The collection of Assignment data structures returned by this call.
lafhitrrsAssignments :: Lens' ListAssignmentsForHITResponse [Assignment]
lafhitrrsAssignments = lens _lafhitrrsAssignments (\s a -> s {_lafhitrrsAssignments = a}) . _Default . _Coerce

-- | The number of assignments on the page in the filtered results list, equivalent to the number of assignments returned by this call.
lafhitrrsNumResults :: Lens' ListAssignmentsForHITResponse (Maybe Int)
lafhitrrsNumResults = lens _lafhitrrsNumResults (\s a -> s {_lafhitrrsNumResults = a})

-- | -- | The response status code.
lafhitrrsResponseStatus :: Lens' ListAssignmentsForHITResponse Int
lafhitrrsResponseStatus = lens _lafhitrrsResponseStatus (\s a -> s {_lafhitrrsResponseStatus = a})

instance NFData ListAssignmentsForHITResponse

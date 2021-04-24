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
-- Module      : Network.AWS.MechanicalTurk.ListBonusPayments
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- The @ListBonusPayments@ operation retrieves the amounts of bonuses you have paid to Workers for a given HIT or assignment.
--
--
--
-- This operation returns paginated results.
module Network.AWS.MechanicalTurk.ListBonusPayments
  ( -- * Creating a Request
    listBonusPayments,
    ListBonusPayments,

    -- * Request Lenses
    lbpNextToken,
    lbpAssignmentId,
    lbpMaxResults,
    lbpHITId,

    -- * Destructuring the Response
    listBonusPaymentsResponse,
    ListBonusPaymentsResponse,

    -- * Response Lenses
    lbprrsNextToken,
    lbprrsNumResults,
    lbprrsBonusPayments,
    lbprrsResponseStatus,
  )
where

import Network.AWS.Lens
import Network.AWS.MechanicalTurk.Types
import Network.AWS.Pager
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'listBonusPayments' smart constructor.
data ListBonusPayments = ListBonusPayments'
  { _lbpNextToken ::
      !(Maybe Text),
    _lbpAssignmentId :: !(Maybe Text),
    _lbpMaxResults :: !(Maybe Nat),
    _lbpHITId :: !(Maybe Text)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'ListBonusPayments' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lbpNextToken' - Pagination token
--
-- * 'lbpAssignmentId' - The ID of the assignment associated with the bonus payments to retrieve. If specified, only bonus payments for the given assignment are returned. Either the HITId parameter or the AssignmentId parameter must be specified
--
-- * 'lbpMaxResults' - Undocumented member.
--
-- * 'lbpHITId' - The ID of the HIT associated with the bonus payments to retrieve. If not specified, all bonus payments for all assignments for the given HIT are returned. Either the HITId parameter or the AssignmentId parameter must be specified
listBonusPayments ::
  ListBonusPayments
listBonusPayments =
  ListBonusPayments'
    { _lbpNextToken = Nothing,
      _lbpAssignmentId = Nothing,
      _lbpMaxResults = Nothing,
      _lbpHITId = Nothing
    }

-- | Pagination token
lbpNextToken :: Lens' ListBonusPayments (Maybe Text)
lbpNextToken = lens _lbpNextToken (\s a -> s {_lbpNextToken = a})

-- | The ID of the assignment associated with the bonus payments to retrieve. If specified, only bonus payments for the given assignment are returned. Either the HITId parameter or the AssignmentId parameter must be specified
lbpAssignmentId :: Lens' ListBonusPayments (Maybe Text)
lbpAssignmentId = lens _lbpAssignmentId (\s a -> s {_lbpAssignmentId = a})

-- | Undocumented member.
lbpMaxResults :: Lens' ListBonusPayments (Maybe Natural)
lbpMaxResults = lens _lbpMaxResults (\s a -> s {_lbpMaxResults = a}) . mapping _Nat

-- | The ID of the HIT associated with the bonus payments to retrieve. If not specified, all bonus payments for all assignments for the given HIT are returned. Either the HITId parameter or the AssignmentId parameter must be specified
lbpHITId :: Lens' ListBonusPayments (Maybe Text)
lbpHITId = lens _lbpHITId (\s a -> s {_lbpHITId = a})

instance AWSPager ListBonusPayments where
  page rq rs
    | stop (rs ^. lbprrsNextToken) = Nothing
    | stop (rs ^. lbprrsBonusPayments) = Nothing
    | otherwise =
      Just $ rq & lbpNextToken .~ rs ^. lbprrsNextToken

instance AWSRequest ListBonusPayments where
  type Rs ListBonusPayments = ListBonusPaymentsResponse
  request = postJSON mechanicalTurk
  response =
    receiveJSON
      ( \s h x ->
          ListBonusPaymentsResponse'
            <$> (x .?> "NextToken")
            <*> (x .?> "NumResults")
            <*> (x .?> "BonusPayments" .!@ mempty)
            <*> (pure (fromEnum s))
      )

instance Hashable ListBonusPayments

instance NFData ListBonusPayments

instance ToHeaders ListBonusPayments where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ( "MTurkRequesterServiceV20170117.ListBonusPayments" ::
                     ByteString
                 ),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON ListBonusPayments where
  toJSON ListBonusPayments' {..} =
    object
      ( catMaybes
          [ ("NextToken" .=) <$> _lbpNextToken,
            ("AssignmentId" .=) <$> _lbpAssignmentId,
            ("MaxResults" .=) <$> _lbpMaxResults,
            ("HITId" .=) <$> _lbpHITId
          ]
      )

instance ToPath ListBonusPayments where
  toPath = const "/"

instance ToQuery ListBonusPayments where
  toQuery = const mempty

-- | /See:/ 'listBonusPaymentsResponse' smart constructor.
data ListBonusPaymentsResponse = ListBonusPaymentsResponse'
  { _lbprrsNextToken ::
      !(Maybe Text),
    _lbprrsNumResults ::
      !(Maybe Int),
    _lbprrsBonusPayments ::
      !( Maybe
           [BonusPayment]
       ),
    _lbprrsResponseStatus ::
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

-- | Creates a value of 'ListBonusPaymentsResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lbprrsNextToken' - Undocumented member.
--
-- * 'lbprrsNumResults' - The number of bonus payments on this page in the filtered results list, equivalent to the number of bonus payments being returned by this call.
--
-- * 'lbprrsBonusPayments' - A successful request to the ListBonusPayments operation returns a list of BonusPayment objects.
--
-- * 'lbprrsResponseStatus' - -- | The response status code.
listBonusPaymentsResponse ::
  -- | 'lbprrsResponseStatus'
  Int ->
  ListBonusPaymentsResponse
listBonusPaymentsResponse pResponseStatus_ =
  ListBonusPaymentsResponse'
    { _lbprrsNextToken =
        Nothing,
      _lbprrsNumResults = Nothing,
      _lbprrsBonusPayments = Nothing,
      _lbprrsResponseStatus = pResponseStatus_
    }

-- | Undocumented member.
lbprrsNextToken :: Lens' ListBonusPaymentsResponse (Maybe Text)
lbprrsNextToken = lens _lbprrsNextToken (\s a -> s {_lbprrsNextToken = a})

-- | The number of bonus payments on this page in the filtered results list, equivalent to the number of bonus payments being returned by this call.
lbprrsNumResults :: Lens' ListBonusPaymentsResponse (Maybe Int)
lbprrsNumResults = lens _lbprrsNumResults (\s a -> s {_lbprrsNumResults = a})

-- | A successful request to the ListBonusPayments operation returns a list of BonusPayment objects.
lbprrsBonusPayments :: Lens' ListBonusPaymentsResponse [BonusPayment]
lbprrsBonusPayments = lens _lbprrsBonusPayments (\s a -> s {_lbprrsBonusPayments = a}) . _Default . _Coerce

-- | -- | The response status code.
lbprrsResponseStatus :: Lens' ListBonusPaymentsResponse Int
lbprrsResponseStatus = lens _lbprrsResponseStatus (\s a -> s {_lbprrsResponseStatus = a})

instance NFData ListBonusPaymentsResponse

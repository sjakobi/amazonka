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
-- Module      : Network.AWS.MechanicalTurk.ListReviewPolicyResultsForHIT
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- The @ListReviewPolicyResultsForHIT@ operation retrieves the computed results and the actions taken in the course of executing your Review Policies for a given HIT. For information about how to specify Review Policies when you call CreateHIT, see Review Policies. The ListReviewPolicyResultsForHIT operation can return results for both Assignment-level and HIT-level review results.
module Network.AWS.MechanicalTurk.ListReviewPolicyResultsForHIT
  ( -- * Creating a Request
    listReviewPolicyResultsForHIT,
    ListReviewPolicyResultsForHIT,

    -- * Request Lenses
    lrprfhitNextToken,
    lrprfhitMaxResults,
    lrprfhitRetrieveResults,
    lrprfhitRetrieveActions,
    lrprfhitPolicyLevels,
    lrprfhitHITId,

    -- * Destructuring the Response
    listReviewPolicyResultsForHITResponse,
    ListReviewPolicyResultsForHITResponse,

    -- * Response Lenses
    lrprfhitrrsNextToken,
    lrprfhitrrsHITId,
    lrprfhitrrsHITReviewPolicy,
    lrprfhitrrsAssignmentReviewReport,
    lrprfhitrrsHITReviewReport,
    lrprfhitrrsAssignmentReviewPolicy,
    lrprfhitrrsResponseStatus,
  )
where

import Network.AWS.Lens
import Network.AWS.MechanicalTurk.Types
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'listReviewPolicyResultsForHIT' smart constructor.
data ListReviewPolicyResultsForHIT = ListReviewPolicyResultsForHIT'
  { _lrprfhitNextToken ::
      !( Maybe
           Text
       ),
    _lrprfhitMaxResults ::
      !( Maybe
           Nat
       ),
    _lrprfhitRetrieveResults ::
      !( Maybe
           Bool
       ),
    _lrprfhitRetrieveActions ::
      !( Maybe
           Bool
       ),
    _lrprfhitPolicyLevels ::
      !( Maybe
           [ReviewPolicyLevel]
       ),
    _lrprfhitHITId ::
      !Text
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'ListReviewPolicyResultsForHIT' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lrprfhitNextToken' - Pagination token
--
-- * 'lrprfhitMaxResults' - Limit the number of results returned.
--
-- * 'lrprfhitRetrieveResults' - Specify if the operation should retrieve a list of the results computed by the Review Policies.
--
-- * 'lrprfhitRetrieveActions' - Specify if the operation should retrieve a list of the actions taken executing the Review Policies and their outcomes.
--
-- * 'lrprfhitPolicyLevels' - The Policy Level(s) to retrieve review results for - HIT or Assignment. If omitted, the default behavior is to retrieve all data for both policy levels. For a list of all the described policies, see Review Policies.
--
-- * 'lrprfhitHITId' - The unique identifier of the HIT to retrieve review results for.
listReviewPolicyResultsForHIT ::
  -- | 'lrprfhitHITId'
  Text ->
  ListReviewPolicyResultsForHIT
listReviewPolicyResultsForHIT pHITId_ =
  ListReviewPolicyResultsForHIT'
    { _lrprfhitNextToken =
        Nothing,
      _lrprfhitMaxResults = Nothing,
      _lrprfhitRetrieveResults = Nothing,
      _lrprfhitRetrieveActions = Nothing,
      _lrprfhitPolicyLevels = Nothing,
      _lrprfhitHITId = pHITId_
    }

-- | Pagination token
lrprfhitNextToken :: Lens' ListReviewPolicyResultsForHIT (Maybe Text)
lrprfhitNextToken = lens _lrprfhitNextToken (\s a -> s {_lrprfhitNextToken = a})

-- | Limit the number of results returned.
lrprfhitMaxResults :: Lens' ListReviewPolicyResultsForHIT (Maybe Natural)
lrprfhitMaxResults = lens _lrprfhitMaxResults (\s a -> s {_lrprfhitMaxResults = a}) . mapping _Nat

-- | Specify if the operation should retrieve a list of the results computed by the Review Policies.
lrprfhitRetrieveResults :: Lens' ListReviewPolicyResultsForHIT (Maybe Bool)
lrprfhitRetrieveResults = lens _lrprfhitRetrieveResults (\s a -> s {_lrprfhitRetrieveResults = a})

-- | Specify if the operation should retrieve a list of the actions taken executing the Review Policies and their outcomes.
lrprfhitRetrieveActions :: Lens' ListReviewPolicyResultsForHIT (Maybe Bool)
lrprfhitRetrieveActions = lens _lrprfhitRetrieveActions (\s a -> s {_lrprfhitRetrieveActions = a})

-- | The Policy Level(s) to retrieve review results for - HIT or Assignment. If omitted, the default behavior is to retrieve all data for both policy levels. For a list of all the described policies, see Review Policies.
lrprfhitPolicyLevels :: Lens' ListReviewPolicyResultsForHIT [ReviewPolicyLevel]
lrprfhitPolicyLevels = lens _lrprfhitPolicyLevels (\s a -> s {_lrprfhitPolicyLevels = a}) . _Default . _Coerce

-- | The unique identifier of the HIT to retrieve review results for.
lrprfhitHITId :: Lens' ListReviewPolicyResultsForHIT Text
lrprfhitHITId = lens _lrprfhitHITId (\s a -> s {_lrprfhitHITId = a})

instance AWSRequest ListReviewPolicyResultsForHIT where
  type
    Rs ListReviewPolicyResultsForHIT =
      ListReviewPolicyResultsForHITResponse
  request = postJSON mechanicalTurk
  response =
    receiveJSON
      ( \s h x ->
          ListReviewPolicyResultsForHITResponse'
            <$> (x .?> "NextToken")
            <*> (x .?> "HITId")
            <*> (x .?> "HITReviewPolicy")
            <*> (x .?> "AssignmentReviewReport")
            <*> (x .?> "HITReviewReport")
            <*> (x .?> "AssignmentReviewPolicy")
            <*> (pure (fromEnum s))
      )

instance Hashable ListReviewPolicyResultsForHIT

instance NFData ListReviewPolicyResultsForHIT

instance ToHeaders ListReviewPolicyResultsForHIT where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ( "MTurkRequesterServiceV20170117.ListReviewPolicyResultsForHIT" ::
                     ByteString
                 ),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON ListReviewPolicyResultsForHIT where
  toJSON ListReviewPolicyResultsForHIT' {..} =
    object
      ( catMaybes
          [ ("NextToken" .=) <$> _lrprfhitNextToken,
            ("MaxResults" .=) <$> _lrprfhitMaxResults,
            ("RetrieveResults" .=) <$> _lrprfhitRetrieveResults,
            ("RetrieveActions" .=) <$> _lrprfhitRetrieveActions,
            ("PolicyLevels" .=) <$> _lrprfhitPolicyLevels,
            Just ("HITId" .= _lrprfhitHITId)
          ]
      )

instance ToPath ListReviewPolicyResultsForHIT where
  toPath = const "/"

instance ToQuery ListReviewPolicyResultsForHIT where
  toQuery = const mempty

-- | /See:/ 'listReviewPolicyResultsForHITResponse' smart constructor.
data ListReviewPolicyResultsForHITResponse = ListReviewPolicyResultsForHITResponse'
  { _lrprfhitrrsNextToken ::
      !( Maybe
           Text
       ),
    _lrprfhitrrsHITId ::
      !( Maybe
           Text
       ),
    _lrprfhitrrsHITReviewPolicy ::
      !( Maybe
           ReviewPolicy
       ),
    _lrprfhitrrsAssignmentReviewReport ::
      !( Maybe
           ReviewReport
       ),
    _lrprfhitrrsHITReviewReport ::
      !( Maybe
           ReviewReport
       ),
    _lrprfhitrrsAssignmentReviewPolicy ::
      !( Maybe
           ReviewPolicy
       ),
    _lrprfhitrrsResponseStatus ::
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

-- | Creates a value of 'ListReviewPolicyResultsForHITResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lrprfhitrrsNextToken' - Undocumented member.
--
-- * 'lrprfhitrrsHITId' - The HITId of the HIT for which results have been returned.
--
-- * 'lrprfhitrrsHITReviewPolicy' - The name of the HIT-level Review Policy. This contains only the PolicyName element.
--
-- * 'lrprfhitrrsAssignmentReviewReport' - Contains both ReviewResult and ReviewAction elements for an Assignment.
--
-- * 'lrprfhitrrsHITReviewReport' - Contains both ReviewResult and ReviewAction elements for a particular HIT.
--
-- * 'lrprfhitrrsAssignmentReviewPolicy' - The name of the Assignment-level Review Policy. This contains only the PolicyName element.
--
-- * 'lrprfhitrrsResponseStatus' - -- | The response status code.
listReviewPolicyResultsForHITResponse ::
  -- | 'lrprfhitrrsResponseStatus'
  Int ->
  ListReviewPolicyResultsForHITResponse
listReviewPolicyResultsForHITResponse
  pResponseStatus_ =
    ListReviewPolicyResultsForHITResponse'
      { _lrprfhitrrsNextToken =
          Nothing,
        _lrprfhitrrsHITId = Nothing,
        _lrprfhitrrsHITReviewPolicy =
          Nothing,
        _lrprfhitrrsAssignmentReviewReport =
          Nothing,
        _lrprfhitrrsHITReviewReport =
          Nothing,
        _lrprfhitrrsAssignmentReviewPolicy =
          Nothing,
        _lrprfhitrrsResponseStatus =
          pResponseStatus_
      }

-- | Undocumented member.
lrprfhitrrsNextToken :: Lens' ListReviewPolicyResultsForHITResponse (Maybe Text)
lrprfhitrrsNextToken = lens _lrprfhitrrsNextToken (\s a -> s {_lrprfhitrrsNextToken = a})

-- | The HITId of the HIT for which results have been returned.
lrprfhitrrsHITId :: Lens' ListReviewPolicyResultsForHITResponse (Maybe Text)
lrprfhitrrsHITId = lens _lrprfhitrrsHITId (\s a -> s {_lrprfhitrrsHITId = a})

-- | The name of the HIT-level Review Policy. This contains only the PolicyName element.
lrprfhitrrsHITReviewPolicy :: Lens' ListReviewPolicyResultsForHITResponse (Maybe ReviewPolicy)
lrprfhitrrsHITReviewPolicy = lens _lrprfhitrrsHITReviewPolicy (\s a -> s {_lrprfhitrrsHITReviewPolicy = a})

-- | Contains both ReviewResult and ReviewAction elements for an Assignment.
lrprfhitrrsAssignmentReviewReport :: Lens' ListReviewPolicyResultsForHITResponse (Maybe ReviewReport)
lrprfhitrrsAssignmentReviewReport = lens _lrprfhitrrsAssignmentReviewReport (\s a -> s {_lrprfhitrrsAssignmentReviewReport = a})

-- | Contains both ReviewResult and ReviewAction elements for a particular HIT.
lrprfhitrrsHITReviewReport :: Lens' ListReviewPolicyResultsForHITResponse (Maybe ReviewReport)
lrprfhitrrsHITReviewReport = lens _lrprfhitrrsHITReviewReport (\s a -> s {_lrprfhitrrsHITReviewReport = a})

-- | The name of the Assignment-level Review Policy. This contains only the PolicyName element.
lrprfhitrrsAssignmentReviewPolicy :: Lens' ListReviewPolicyResultsForHITResponse (Maybe ReviewPolicy)
lrprfhitrrsAssignmentReviewPolicy = lens _lrprfhitrrsAssignmentReviewPolicy (\s a -> s {_lrprfhitrrsAssignmentReviewPolicy = a})

-- | -- | The response status code.
lrprfhitrrsResponseStatus :: Lens' ListReviewPolicyResultsForHITResponse Int
lrprfhitrrsResponseStatus = lens _lrprfhitrrsResponseStatus (\s a -> s {_lrprfhitrrsResponseStatus = a})

instance NFData ListReviewPolicyResultsForHITResponse

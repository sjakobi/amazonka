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
-- Module      : Network.AWS.Inspector.DescribeAssessmentRuns
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Describes the assessment runs that are specified by the ARNs of the assessment runs.
module Network.AWS.Inspector.DescribeAssessmentRuns
  ( -- * Creating a Request
    describeAssessmentRuns,
    DescribeAssessmentRuns,

    -- * Request Lenses
    darAssessmentRunARNs,

    -- * Destructuring the Response
    describeAssessmentRunsResponse,
    DescribeAssessmentRunsResponse,

    -- * Response Lenses
    darrrsResponseStatus,
    darrrsAssessmentRuns,
    darrrsFailedItems,
  )
where

import Network.AWS.Inspector.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'describeAssessmentRuns' smart constructor.
newtype DescribeAssessmentRuns = DescribeAssessmentRuns'
  { _darAssessmentRunARNs ::
      List1 Text
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'DescribeAssessmentRuns' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'darAssessmentRunARNs' - The ARN that specifies the assessment run that you want to describe.
describeAssessmentRuns ::
  -- | 'darAssessmentRunARNs'
  NonEmpty Text ->
  DescribeAssessmentRuns
describeAssessmentRuns pAssessmentRunARNs_ =
  DescribeAssessmentRuns'
    { _darAssessmentRunARNs =
        _List1 # pAssessmentRunARNs_
    }

-- | The ARN that specifies the assessment run that you want to describe.
darAssessmentRunARNs :: Lens' DescribeAssessmentRuns (NonEmpty Text)
darAssessmentRunARNs = lens _darAssessmentRunARNs (\s a -> s {_darAssessmentRunARNs = a}) . _List1

instance AWSRequest DescribeAssessmentRuns where
  type
    Rs DescribeAssessmentRuns =
      DescribeAssessmentRunsResponse
  request = postJSON inspector
  response =
    receiveJSON
      ( \s h x ->
          DescribeAssessmentRunsResponse'
            <$> (pure (fromEnum s))
            <*> (x .?> "assessmentRuns" .!@ mempty)
            <*> (x .?> "failedItems" .!@ mempty)
      )

instance Hashable DescribeAssessmentRuns

instance NFData DescribeAssessmentRuns

instance ToHeaders DescribeAssessmentRuns where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ( "InspectorService.DescribeAssessmentRuns" ::
                     ByteString
                 ),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON DescribeAssessmentRuns where
  toJSON DescribeAssessmentRuns' {..} =
    object
      ( catMaybes
          [ Just
              ("assessmentRunArns" .= _darAssessmentRunARNs)
          ]
      )

instance ToPath DescribeAssessmentRuns where
  toPath = const "/"

instance ToQuery DescribeAssessmentRuns where
  toQuery = const mempty

-- | /See:/ 'describeAssessmentRunsResponse' smart constructor.
data DescribeAssessmentRunsResponse = DescribeAssessmentRunsResponse'
  { _darrrsResponseStatus ::
      !Int,
    _darrrsAssessmentRuns ::
      ![AssessmentRun],
    _darrrsFailedItems ::
      !( Map
           Text
           FailedItemDetails
       )
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'DescribeAssessmentRunsResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'darrrsResponseStatus' - -- | The response status code.
--
-- * 'darrrsAssessmentRuns' - Information about the assessment run.
--
-- * 'darrrsFailedItems' - Assessment run details that cannot be described. An error code is provided for each failed item.
describeAssessmentRunsResponse ::
  -- | 'darrrsResponseStatus'
  Int ->
  DescribeAssessmentRunsResponse
describeAssessmentRunsResponse pResponseStatus_ =
  DescribeAssessmentRunsResponse'
    { _darrrsResponseStatus =
        pResponseStatus_,
      _darrrsAssessmentRuns = mempty,
      _darrrsFailedItems = mempty
    }

-- | -- | The response status code.
darrrsResponseStatus :: Lens' DescribeAssessmentRunsResponse Int
darrrsResponseStatus = lens _darrrsResponseStatus (\s a -> s {_darrrsResponseStatus = a})

-- | Information about the assessment run.
darrrsAssessmentRuns :: Lens' DescribeAssessmentRunsResponse [AssessmentRun]
darrrsAssessmentRuns = lens _darrrsAssessmentRuns (\s a -> s {_darrrsAssessmentRuns = a}) . _Coerce

-- | Assessment run details that cannot be described. An error code is provided for each failed item.
darrrsFailedItems :: Lens' DescribeAssessmentRunsResponse (HashMap Text FailedItemDetails)
darrrsFailedItems = lens _darrrsFailedItems (\s a -> s {_darrrsFailedItems = a}) . _Map

instance NFData DescribeAssessmentRunsResponse

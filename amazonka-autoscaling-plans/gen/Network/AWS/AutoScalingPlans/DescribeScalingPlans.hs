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
-- Module      : Network.AWS.AutoScalingPlans.DescribeScalingPlans
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Describes one or more of your scaling plans.
--
--
--
-- This operation returns paginated results.
module Network.AWS.AutoScalingPlans.DescribeScalingPlans
  ( -- * Creating a Request
    describeScalingPlans,
    DescribeScalingPlans,

    -- * Request Lenses
    dNextToken,
    dScalingPlanVersion,
    dMaxResults,
    dScalingPlanNames,
    dApplicationSources,

    -- * Destructuring the Response
    describeScalingPlansResponse,
    DescribeScalingPlansResponse,

    -- * Response Lenses
    drsNextToken,
    drsScalingPlans,
    drsResponseStatus,
  )
where

import Network.AWS.AutoScalingPlans.Types
import Network.AWS.Lens
import Network.AWS.Pager
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'describeScalingPlans' smart constructor.
data DescribeScalingPlans = DescribeScalingPlans'
  { _dNextToken ::
      !(Maybe Text),
    _dScalingPlanVersion ::
      !(Maybe Integer),
    _dMaxResults :: !(Maybe Int),
    _dScalingPlanNames ::
      !(Maybe [Text]),
    _dApplicationSources ::
      !(Maybe [ApplicationSource])
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'DescribeScalingPlans' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dNextToken' - The token for the next set of results.
--
-- * 'dScalingPlanVersion' - The version number of the scaling plan. Currently, the only valid value is @1@ .
--
-- * 'dMaxResults' - The maximum number of scalable resources to return. This value can be between 1 and 50. The default value is 50.
--
-- * 'dScalingPlanNames' - The names of the scaling plans (up to 10). If you specify application sources, you cannot specify scaling plan names.
--
-- * 'dApplicationSources' - The sources for the applications (up to 10). If you specify scaling plan names, you cannot specify application sources.
describeScalingPlans ::
  DescribeScalingPlans
describeScalingPlans =
  DescribeScalingPlans'
    { _dNextToken = Nothing,
      _dScalingPlanVersion = Nothing,
      _dMaxResults = Nothing,
      _dScalingPlanNames = Nothing,
      _dApplicationSources = Nothing
    }

-- | The token for the next set of results.
dNextToken :: Lens' DescribeScalingPlans (Maybe Text)
dNextToken = lens _dNextToken (\s a -> s {_dNextToken = a})

-- | The version number of the scaling plan. Currently, the only valid value is @1@ .
dScalingPlanVersion :: Lens' DescribeScalingPlans (Maybe Integer)
dScalingPlanVersion = lens _dScalingPlanVersion (\s a -> s {_dScalingPlanVersion = a})

-- | The maximum number of scalable resources to return. This value can be between 1 and 50. The default value is 50.
dMaxResults :: Lens' DescribeScalingPlans (Maybe Int)
dMaxResults = lens _dMaxResults (\s a -> s {_dMaxResults = a})

-- | The names of the scaling plans (up to 10). If you specify application sources, you cannot specify scaling plan names.
dScalingPlanNames :: Lens' DescribeScalingPlans [Text]
dScalingPlanNames = lens _dScalingPlanNames (\s a -> s {_dScalingPlanNames = a}) . _Default . _Coerce

-- | The sources for the applications (up to 10). If you specify scaling plan names, you cannot specify application sources.
dApplicationSources :: Lens' DescribeScalingPlans [ApplicationSource]
dApplicationSources = lens _dApplicationSources (\s a -> s {_dApplicationSources = a}) . _Default . _Coerce

instance AWSPager DescribeScalingPlans where
  page rq rs
    | stop (rs ^. drsNextToken) = Nothing
    | stop (rs ^. drsScalingPlans) = Nothing
    | otherwise =
      Just $ rq & dNextToken .~ rs ^. drsNextToken

instance AWSRequest DescribeScalingPlans where
  type
    Rs DescribeScalingPlans =
      DescribeScalingPlansResponse
  request = postJSON autoScalingPlans
  response =
    receiveJSON
      ( \s h x ->
          DescribeScalingPlansResponse'
            <$> (x .?> "NextToken")
            <*> (x .?> "ScalingPlans" .!@ mempty)
            <*> (pure (fromEnum s))
      )

instance Hashable DescribeScalingPlans

instance NFData DescribeScalingPlans

instance ToHeaders DescribeScalingPlans where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ( "AnyScaleScalingPlannerFrontendService.DescribeScalingPlans" ::
                     ByteString
                 ),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON DescribeScalingPlans where
  toJSON DescribeScalingPlans' {..} =
    object
      ( catMaybes
          [ ("NextToken" .=) <$> _dNextToken,
            ("ScalingPlanVersion" .=) <$> _dScalingPlanVersion,
            ("MaxResults" .=) <$> _dMaxResults,
            ("ScalingPlanNames" .=) <$> _dScalingPlanNames,
            ("ApplicationSources" .=) <$> _dApplicationSources
          ]
      )

instance ToPath DescribeScalingPlans where
  toPath = const "/"

instance ToQuery DescribeScalingPlans where
  toQuery = const mempty

-- | /See:/ 'describeScalingPlansResponse' smart constructor.
data DescribeScalingPlansResponse = DescribeScalingPlansResponse'
  { _drsNextToken ::
      !(Maybe Text),
    _drsScalingPlans ::
      !( Maybe
           [ScalingPlan]
       ),
    _drsResponseStatus ::
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

-- | Creates a value of 'DescribeScalingPlansResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'drsNextToken' - The token required to get the next set of results. This value is @null@ if there are no more results to return.
--
-- * 'drsScalingPlans' - Information about the scaling plans.
--
-- * 'drsResponseStatus' - -- | The response status code.
describeScalingPlansResponse ::
  -- | 'drsResponseStatus'
  Int ->
  DescribeScalingPlansResponse
describeScalingPlansResponse pResponseStatus_ =
  DescribeScalingPlansResponse'
    { _drsNextToken =
        Nothing,
      _drsScalingPlans = Nothing,
      _drsResponseStatus = pResponseStatus_
    }

-- | The token required to get the next set of results. This value is @null@ if there are no more results to return.
drsNextToken :: Lens' DescribeScalingPlansResponse (Maybe Text)
drsNextToken = lens _drsNextToken (\s a -> s {_drsNextToken = a})

-- | Information about the scaling plans.
drsScalingPlans :: Lens' DescribeScalingPlansResponse [ScalingPlan]
drsScalingPlans = lens _drsScalingPlans (\s a -> s {_drsScalingPlans = a}) . _Default . _Coerce

-- | -- | The response status code.
drsResponseStatus :: Lens' DescribeScalingPlansResponse Int
drsResponseStatus = lens _drsResponseStatus (\s a -> s {_drsResponseStatus = a})

instance NFData DescribeScalingPlansResponse

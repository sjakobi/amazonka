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
-- Module      : Network.AWS.DynamoDB.DescribeContributorInsights
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns information about contributor insights, for a given table or global secondary index.
module Network.AWS.DynamoDB.DescribeContributorInsights
  ( -- * Creating a Request
    describeContributorInsights,
    DescribeContributorInsights,

    -- * Request Lenses
    dciIndexName,
    dciTableName,

    -- * Destructuring the Response
    describeContributorInsightsResponse,
    DescribeContributorInsightsResponse,

    -- * Response Lenses
    dcirrsTableName,
    dcirrsIndexName,
    dcirrsContributorInsightsStatus,
    dcirrsFailureException,
    dcirrsContributorInsightsRuleList,
    dcirrsLastUpdateDateTime,
    dcirrsResponseStatus,
  )
where

import Network.AWS.DynamoDB.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'describeContributorInsights' smart constructor.
data DescribeContributorInsights = DescribeContributorInsights'
  { _dciIndexName ::
      !(Maybe Text),
    _dciTableName ::
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

-- | Creates a value of 'DescribeContributorInsights' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dciIndexName' - The name of the global secondary index to describe, if applicable.
--
-- * 'dciTableName' - The name of the table to describe.
describeContributorInsights ::
  -- | 'dciTableName'
  Text ->
  DescribeContributorInsights
describeContributorInsights pTableName_ =
  DescribeContributorInsights'
    { _dciIndexName =
        Nothing,
      _dciTableName = pTableName_
    }

-- | The name of the global secondary index to describe, if applicable.
dciIndexName :: Lens' DescribeContributorInsights (Maybe Text)
dciIndexName = lens _dciIndexName (\s a -> s {_dciIndexName = a})

-- | The name of the table to describe.
dciTableName :: Lens' DescribeContributorInsights Text
dciTableName = lens _dciTableName (\s a -> s {_dciTableName = a})

instance AWSRequest DescribeContributorInsights where
  type
    Rs DescribeContributorInsights =
      DescribeContributorInsightsResponse
  request = postJSON dynamoDB
  response =
    receiveJSON
      ( \s h x ->
          DescribeContributorInsightsResponse'
            <$> (x .?> "TableName")
            <*> (x .?> "IndexName")
            <*> (x .?> "ContributorInsightsStatus")
            <*> (x .?> "FailureException")
            <*> (x .?> "ContributorInsightsRuleList" .!@ mempty)
            <*> (x .?> "LastUpdateDateTime")
            <*> (pure (fromEnum s))
      )

instance Hashable DescribeContributorInsights

instance NFData DescribeContributorInsights

instance ToHeaders DescribeContributorInsights where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ( "DynamoDB_20120810.DescribeContributorInsights" ::
                     ByteString
                 ),
            "Content-Type"
              =# ("application/x-amz-json-1.0" :: ByteString)
          ]
      )

instance ToJSON DescribeContributorInsights where
  toJSON DescribeContributorInsights' {..} =
    object
      ( catMaybes
          [ ("IndexName" .=) <$> _dciIndexName,
            Just ("TableName" .= _dciTableName)
          ]
      )

instance ToPath DescribeContributorInsights where
  toPath = const "/"

instance ToQuery DescribeContributorInsights where
  toQuery = const mempty

-- | /See:/ 'describeContributorInsightsResponse' smart constructor.
data DescribeContributorInsightsResponse = DescribeContributorInsightsResponse'
  { _dcirrsTableName ::
      !( Maybe
           Text
       ),
    _dcirrsIndexName ::
      !( Maybe
           Text
       ),
    _dcirrsContributorInsightsStatus ::
      !( Maybe
           ContributorInsightsStatus
       ),
    _dcirrsFailureException ::
      !( Maybe
           FailureException
       ),
    _dcirrsContributorInsightsRuleList ::
      !( Maybe
           [Text]
       ),
    _dcirrsLastUpdateDateTime ::
      !( Maybe
           POSIX
       ),
    _dcirrsResponseStatus ::
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

-- | Creates a value of 'DescribeContributorInsightsResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dcirrsTableName' - The name of the table being described.
--
-- * 'dcirrsIndexName' - The name of the global secondary index being described.
--
-- * 'dcirrsContributorInsightsStatus' - Current Status contributor insights.
--
-- * 'dcirrsFailureException' - Returns information about the last failure that encountered. The most common exceptions for a FAILED status are:     * LimitExceededException - Per-account Amazon CloudWatch Contributor Insights rule limit reached. Please disable Contributor Insights for other tables/indexes OR disable Contributor Insights rules before retrying.     * AccessDeniedException - Amazon CloudWatch Contributor Insights rules cannot be modified due to insufficient permissions.     * AccessDeniedException - Failed to create service-linked role for Contributor Insights due to insufficient permissions.     * InternalServerError - Failed to create Amazon CloudWatch Contributor Insights rules. Please retry request.
--
-- * 'dcirrsContributorInsightsRuleList' - List of names of the associated Alpine rules.
--
-- * 'dcirrsLastUpdateDateTime' - Timestamp of the last time the status was changed.
--
-- * 'dcirrsResponseStatus' - -- | The response status code.
describeContributorInsightsResponse ::
  -- | 'dcirrsResponseStatus'
  Int ->
  DescribeContributorInsightsResponse
describeContributorInsightsResponse pResponseStatus_ =
  DescribeContributorInsightsResponse'
    { _dcirrsTableName =
        Nothing,
      _dcirrsIndexName = Nothing,
      _dcirrsContributorInsightsStatus =
        Nothing,
      _dcirrsFailureException = Nothing,
      _dcirrsContributorInsightsRuleList =
        Nothing,
      _dcirrsLastUpdateDateTime = Nothing,
      _dcirrsResponseStatus =
        pResponseStatus_
    }

-- | The name of the table being described.
dcirrsTableName :: Lens' DescribeContributorInsightsResponse (Maybe Text)
dcirrsTableName = lens _dcirrsTableName (\s a -> s {_dcirrsTableName = a})

-- | The name of the global secondary index being described.
dcirrsIndexName :: Lens' DescribeContributorInsightsResponse (Maybe Text)
dcirrsIndexName = lens _dcirrsIndexName (\s a -> s {_dcirrsIndexName = a})

-- | Current Status contributor insights.
dcirrsContributorInsightsStatus :: Lens' DescribeContributorInsightsResponse (Maybe ContributorInsightsStatus)
dcirrsContributorInsightsStatus = lens _dcirrsContributorInsightsStatus (\s a -> s {_dcirrsContributorInsightsStatus = a})

-- | Returns information about the last failure that encountered. The most common exceptions for a FAILED status are:     * LimitExceededException - Per-account Amazon CloudWatch Contributor Insights rule limit reached. Please disable Contributor Insights for other tables/indexes OR disable Contributor Insights rules before retrying.     * AccessDeniedException - Amazon CloudWatch Contributor Insights rules cannot be modified due to insufficient permissions.     * AccessDeniedException - Failed to create service-linked role for Contributor Insights due to insufficient permissions.     * InternalServerError - Failed to create Amazon CloudWatch Contributor Insights rules. Please retry request.
dcirrsFailureException :: Lens' DescribeContributorInsightsResponse (Maybe FailureException)
dcirrsFailureException = lens _dcirrsFailureException (\s a -> s {_dcirrsFailureException = a})

-- | List of names of the associated Alpine rules.
dcirrsContributorInsightsRuleList :: Lens' DescribeContributorInsightsResponse [Text]
dcirrsContributorInsightsRuleList = lens _dcirrsContributorInsightsRuleList (\s a -> s {_dcirrsContributorInsightsRuleList = a}) . _Default . _Coerce

-- | Timestamp of the last time the status was changed.
dcirrsLastUpdateDateTime :: Lens' DescribeContributorInsightsResponse (Maybe UTCTime)
dcirrsLastUpdateDateTime = lens _dcirrsLastUpdateDateTime (\s a -> s {_dcirrsLastUpdateDateTime = a}) . mapping _Time

-- | -- | The response status code.
dcirrsResponseStatus :: Lens' DescribeContributorInsightsResponse Int
dcirrsResponseStatus = lens _dcirrsResponseStatus (\s a -> s {_dcirrsResponseStatus = a})

instance NFData DescribeContributorInsightsResponse

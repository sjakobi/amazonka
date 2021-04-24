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
-- Module      : Network.AWS.ElasticBeanstalk.DescribeEvents
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns list of event descriptions matching criteria up to the last 6 weeks.
--
--
--
-- This operation returns paginated results.
module Network.AWS.ElasticBeanstalk.DescribeEvents
  ( -- * Creating a Request
    describeEvents,
    DescribeEvents,

    -- * Request Lenses
    deTemplateName,
    deNextToken,
    deSeverity,
    deEnvironmentId,
    deStartTime,
    deEnvironmentName,
    deEndTime,
    dePlatformARN,
    deVersionLabel,
    deRequestId,
    deApplicationName,
    deMaxRecords,

    -- * Destructuring the Response
    describeEventsResponse,
    DescribeEventsResponse,

    -- * Response Lenses
    derrsNextToken,
    derrsEvents,
    derrsResponseStatus,
  )
where

import Network.AWS.ElasticBeanstalk.Types
import Network.AWS.Lens
import Network.AWS.Pager
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | Request to retrieve a list of events for an environment.
--
--
--
-- /See:/ 'describeEvents' smart constructor.
data DescribeEvents = DescribeEvents'
  { _deTemplateName ::
      !(Maybe Text),
    _deNextToken :: !(Maybe Text),
    _deSeverity :: !(Maybe EventSeverity),
    _deEnvironmentId :: !(Maybe Text),
    _deStartTime :: !(Maybe ISO8601),
    _deEnvironmentName :: !(Maybe Text),
    _deEndTime :: !(Maybe ISO8601),
    _dePlatformARN :: !(Maybe Text),
    _deVersionLabel :: !(Maybe Text),
    _deRequestId :: !(Maybe Text),
    _deApplicationName :: !(Maybe Text),
    _deMaxRecords :: !(Maybe Nat)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'DescribeEvents' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'deTemplateName' - If specified, AWS Elastic Beanstalk restricts the returned descriptions to those that are associated with this environment configuration.
--
-- * 'deNextToken' - Pagination token. If specified, the events return the next batch of results.
--
-- * 'deSeverity' - If specified, limits the events returned from this call to include only those with the specified severity or higher.
--
-- * 'deEnvironmentId' - If specified, AWS Elastic Beanstalk restricts the returned descriptions to those associated with this environment.
--
-- * 'deStartTime' - If specified, AWS Elastic Beanstalk restricts the returned descriptions to those that occur on or after this time.
--
-- * 'deEnvironmentName' - If specified, AWS Elastic Beanstalk restricts the returned descriptions to those associated with this environment.
--
-- * 'deEndTime' - If specified, AWS Elastic Beanstalk restricts the returned descriptions to those that occur up to, but not including, the @EndTime@ .
--
-- * 'dePlatformARN' - The ARN of a custom platform version. If specified, AWS Elastic Beanstalk restricts the returned descriptions to those associated with this custom platform version.
--
-- * 'deVersionLabel' - If specified, AWS Elastic Beanstalk restricts the returned descriptions to those associated with this application version.
--
-- * 'deRequestId' - If specified, AWS Elastic Beanstalk restricts the described events to include only those associated with this request ID.
--
-- * 'deApplicationName' - If specified, AWS Elastic Beanstalk restricts the returned descriptions to include only those associated with this application.
--
-- * 'deMaxRecords' - Specifies the maximum number of events that can be returned, beginning with the most recent event.
describeEvents ::
  DescribeEvents
describeEvents =
  DescribeEvents'
    { _deTemplateName = Nothing,
      _deNextToken = Nothing,
      _deSeverity = Nothing,
      _deEnvironmentId = Nothing,
      _deStartTime = Nothing,
      _deEnvironmentName = Nothing,
      _deEndTime = Nothing,
      _dePlatformARN = Nothing,
      _deVersionLabel = Nothing,
      _deRequestId = Nothing,
      _deApplicationName = Nothing,
      _deMaxRecords = Nothing
    }

-- | If specified, AWS Elastic Beanstalk restricts the returned descriptions to those that are associated with this environment configuration.
deTemplateName :: Lens' DescribeEvents (Maybe Text)
deTemplateName = lens _deTemplateName (\s a -> s {_deTemplateName = a})

-- | Pagination token. If specified, the events return the next batch of results.
deNextToken :: Lens' DescribeEvents (Maybe Text)
deNextToken = lens _deNextToken (\s a -> s {_deNextToken = a})

-- | If specified, limits the events returned from this call to include only those with the specified severity or higher.
deSeverity :: Lens' DescribeEvents (Maybe EventSeverity)
deSeverity = lens _deSeverity (\s a -> s {_deSeverity = a})

-- | If specified, AWS Elastic Beanstalk restricts the returned descriptions to those associated with this environment.
deEnvironmentId :: Lens' DescribeEvents (Maybe Text)
deEnvironmentId = lens _deEnvironmentId (\s a -> s {_deEnvironmentId = a})

-- | If specified, AWS Elastic Beanstalk restricts the returned descriptions to those that occur on or after this time.
deStartTime :: Lens' DescribeEvents (Maybe UTCTime)
deStartTime = lens _deStartTime (\s a -> s {_deStartTime = a}) . mapping _Time

-- | If specified, AWS Elastic Beanstalk restricts the returned descriptions to those associated with this environment.
deEnvironmentName :: Lens' DescribeEvents (Maybe Text)
deEnvironmentName = lens _deEnvironmentName (\s a -> s {_deEnvironmentName = a})

-- | If specified, AWS Elastic Beanstalk restricts the returned descriptions to those that occur up to, but not including, the @EndTime@ .
deEndTime :: Lens' DescribeEvents (Maybe UTCTime)
deEndTime = lens _deEndTime (\s a -> s {_deEndTime = a}) . mapping _Time

-- | The ARN of a custom platform version. If specified, AWS Elastic Beanstalk restricts the returned descriptions to those associated with this custom platform version.
dePlatformARN :: Lens' DescribeEvents (Maybe Text)
dePlatformARN = lens _dePlatformARN (\s a -> s {_dePlatformARN = a})

-- | If specified, AWS Elastic Beanstalk restricts the returned descriptions to those associated with this application version.
deVersionLabel :: Lens' DescribeEvents (Maybe Text)
deVersionLabel = lens _deVersionLabel (\s a -> s {_deVersionLabel = a})

-- | If specified, AWS Elastic Beanstalk restricts the described events to include only those associated with this request ID.
deRequestId :: Lens' DescribeEvents (Maybe Text)
deRequestId = lens _deRequestId (\s a -> s {_deRequestId = a})

-- | If specified, AWS Elastic Beanstalk restricts the returned descriptions to include only those associated with this application.
deApplicationName :: Lens' DescribeEvents (Maybe Text)
deApplicationName = lens _deApplicationName (\s a -> s {_deApplicationName = a})

-- | Specifies the maximum number of events that can be returned, beginning with the most recent event.
deMaxRecords :: Lens' DescribeEvents (Maybe Natural)
deMaxRecords = lens _deMaxRecords (\s a -> s {_deMaxRecords = a}) . mapping _Nat

instance AWSPager DescribeEvents where
  page rq rs
    | stop (rs ^. derrsNextToken) = Nothing
    | stop (rs ^. derrsEvents) = Nothing
    | otherwise =
      Just $ rq & deNextToken .~ rs ^. derrsNextToken

instance AWSRequest DescribeEvents where
  type Rs DescribeEvents = DescribeEventsResponse
  request = postQuery elasticBeanstalk
  response =
    receiveXMLWrapper
      "DescribeEventsResult"
      ( \s h x ->
          DescribeEventsResponse'
            <$> (x .@? "NextToken")
            <*> ( x .@? "Events" .!@ mempty
                    >>= may (parseXMLList "member")
                )
            <*> (pure (fromEnum s))
      )

instance Hashable DescribeEvents

instance NFData DescribeEvents

instance ToHeaders DescribeEvents where
  toHeaders = const mempty

instance ToPath DescribeEvents where
  toPath = const "/"

instance ToQuery DescribeEvents where
  toQuery DescribeEvents' {..} =
    mconcat
      [ "Action" =: ("DescribeEvents" :: ByteString),
        "Version" =: ("2010-12-01" :: ByteString),
        "TemplateName" =: _deTemplateName,
        "NextToken" =: _deNextToken,
        "Severity" =: _deSeverity,
        "EnvironmentId" =: _deEnvironmentId,
        "StartTime" =: _deStartTime,
        "EnvironmentName" =: _deEnvironmentName,
        "EndTime" =: _deEndTime,
        "PlatformArn" =: _dePlatformARN,
        "VersionLabel" =: _deVersionLabel,
        "RequestId" =: _deRequestId,
        "ApplicationName" =: _deApplicationName,
        "MaxRecords" =: _deMaxRecords
      ]

-- | Result message wrapping a list of event descriptions.
--
--
--
-- /See:/ 'describeEventsResponse' smart constructor.
data DescribeEventsResponse = DescribeEventsResponse'
  { _derrsNextToken ::
      !(Maybe Text),
    _derrsEvents ::
      !( Maybe
           [EventDescription]
       ),
    _derrsResponseStatus ::
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

-- | Creates a value of 'DescribeEventsResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'derrsNextToken' - If returned, this indicates that there are more results to obtain. Use this token in the next 'DescribeEvents' call to get the next batch of events.
--
-- * 'derrsEvents' - A list of 'EventDescription' .
--
-- * 'derrsResponseStatus' - -- | The response status code.
describeEventsResponse ::
  -- | 'derrsResponseStatus'
  Int ->
  DescribeEventsResponse
describeEventsResponse pResponseStatus_ =
  DescribeEventsResponse'
    { _derrsNextToken = Nothing,
      _derrsEvents = Nothing,
      _derrsResponseStatus = pResponseStatus_
    }

-- | If returned, this indicates that there are more results to obtain. Use this token in the next 'DescribeEvents' call to get the next batch of events.
derrsNextToken :: Lens' DescribeEventsResponse (Maybe Text)
derrsNextToken = lens _derrsNextToken (\s a -> s {_derrsNextToken = a})

-- | A list of 'EventDescription' .
derrsEvents :: Lens' DescribeEventsResponse [EventDescription]
derrsEvents = lens _derrsEvents (\s a -> s {_derrsEvents = a}) . _Default . _Coerce

-- | -- | The response status code.
derrsResponseStatus :: Lens' DescribeEventsResponse Int
derrsResponseStatus = lens _derrsResponseStatus (\s a -> s {_derrsResponseStatus = a})

instance NFData DescribeEventsResponse

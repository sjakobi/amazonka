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
-- Module      : Network.AWS.CloudTrail.GetTrailStatus
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns a JSON-formatted list of information about the specified trail. Fields include information on delivery errors, Amazon SNS and Amazon S3 errors, and start and stop logging times for each trail. This operation returns trail status from a single region. To return trail status from all regions, you must call the operation on each region.
module Network.AWS.CloudTrail.GetTrailStatus
  ( -- * Creating a Request
    getTrailStatus,
    GetTrailStatus,

    -- * Request Lenses
    gtsName,

    -- * Destructuring the Response
    getTrailStatusResponse,
    GetTrailStatusResponse,

    -- * Response Lenses
    gtsrrsLatestDigestDeliveryError,
    gtsrrsTimeLoggingStopped,
    gtsrrsLatestDeliveryAttemptTime,
    gtsrrsLatestDeliveryAttemptSucceeded,
    gtsrrsLatestNotificationError,
    gtsrrsLatestCloudWatchLogsDeliveryError,
    gtsrrsLatestNotificationAttemptSucceeded,
    gtsrrsLatestCloudWatchLogsDeliveryTime,
    gtsrrsLatestDigestDeliveryTime,
    gtsrrsLatestDeliveryError,
    gtsrrsTimeLoggingStarted,
    gtsrrsIsLogging,
    gtsrrsStopLoggingTime,
    gtsrrsLatestNotificationAttemptTime,
    gtsrrsStartLoggingTime,
    gtsrrsLatestNotificationTime,
    gtsrrsLatestDeliveryTime,
    gtsrrsResponseStatus,
  )
where

import Network.AWS.CloudTrail.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | The name of a trail about which you want the current status.
--
--
--
-- /See:/ 'getTrailStatus' smart constructor.
newtype GetTrailStatus = GetTrailStatus'
  { _gtsName ::
      Text
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'GetTrailStatus' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gtsName' - Specifies the name or the CloudTrail ARN of the trail for which you are requesting status. To get the status of a shadow trail (a replication of the trail in another region), you must specify its ARN. The format of a trail ARN is: @arn:aws:cloudtrail:us-east-2:123456789012:trail/MyTrail@
getTrailStatus ::
  -- | 'gtsName'
  Text ->
  GetTrailStatus
getTrailStatus pName_ =
  GetTrailStatus' {_gtsName = pName_}

-- | Specifies the name or the CloudTrail ARN of the trail for which you are requesting status. To get the status of a shadow trail (a replication of the trail in another region), you must specify its ARN. The format of a trail ARN is: @arn:aws:cloudtrail:us-east-2:123456789012:trail/MyTrail@
gtsName :: Lens' GetTrailStatus Text
gtsName = lens _gtsName (\s a -> s {_gtsName = a})

instance AWSRequest GetTrailStatus where
  type Rs GetTrailStatus = GetTrailStatusResponse
  request = postJSON cloudTrail
  response =
    receiveJSON
      ( \s h x ->
          GetTrailStatusResponse'
            <$> (x .?> "LatestDigestDeliveryError")
            <*> (x .?> "TimeLoggingStopped")
            <*> (x .?> "LatestDeliveryAttemptTime")
            <*> (x .?> "LatestDeliveryAttemptSucceeded")
            <*> (x .?> "LatestNotificationError")
            <*> (x .?> "LatestCloudWatchLogsDeliveryError")
            <*> (x .?> "LatestNotificationAttemptSucceeded")
            <*> (x .?> "LatestCloudWatchLogsDeliveryTime")
            <*> (x .?> "LatestDigestDeliveryTime")
            <*> (x .?> "LatestDeliveryError")
            <*> (x .?> "TimeLoggingStarted")
            <*> (x .?> "IsLogging")
            <*> (x .?> "StopLoggingTime")
            <*> (x .?> "LatestNotificationAttemptTime")
            <*> (x .?> "StartLoggingTime")
            <*> (x .?> "LatestNotificationTime")
            <*> (x .?> "LatestDeliveryTime")
            <*> (pure (fromEnum s))
      )

instance Hashable GetTrailStatus

instance NFData GetTrailStatus

instance ToHeaders GetTrailStatus where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ( "com.amazonaws.cloudtrail.v20131101.CloudTrail_20131101.GetTrailStatus" ::
                     ByteString
                 ),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON GetTrailStatus where
  toJSON GetTrailStatus' {..} =
    object (catMaybes [Just ("Name" .= _gtsName)])

instance ToPath GetTrailStatus where
  toPath = const "/"

instance ToQuery GetTrailStatus where
  toQuery = const mempty

-- | Returns the objects or data listed below if successful. Otherwise, returns an error.
--
--
--
-- /See:/ 'getTrailStatusResponse' smart constructor.
data GetTrailStatusResponse = GetTrailStatusResponse'
  { _gtsrrsLatestDigestDeliveryError ::
      !(Maybe Text),
    _gtsrrsTimeLoggingStopped ::
      !(Maybe Text),
    _gtsrrsLatestDeliveryAttemptTime ::
      !(Maybe Text),
    _gtsrrsLatestDeliveryAttemptSucceeded ::
      !(Maybe Text),
    _gtsrrsLatestNotificationError ::
      !(Maybe Text),
    _gtsrrsLatestCloudWatchLogsDeliveryError ::
      !(Maybe Text),
    _gtsrrsLatestNotificationAttemptSucceeded ::
      !(Maybe Text),
    _gtsrrsLatestCloudWatchLogsDeliveryTime ::
      !(Maybe POSIX),
    _gtsrrsLatestDigestDeliveryTime ::
      !(Maybe POSIX),
    _gtsrrsLatestDeliveryError ::
      !(Maybe Text),
    _gtsrrsTimeLoggingStarted ::
      !(Maybe Text),
    _gtsrrsIsLogging ::
      !(Maybe Bool),
    _gtsrrsStopLoggingTime ::
      !(Maybe POSIX),
    _gtsrrsLatestNotificationAttemptTime ::
      !(Maybe Text),
    _gtsrrsStartLoggingTime ::
      !(Maybe POSIX),
    _gtsrrsLatestNotificationTime ::
      !(Maybe POSIX),
    _gtsrrsLatestDeliveryTime ::
      !(Maybe POSIX),
    _gtsrrsResponseStatus ::
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

-- | Creates a value of 'GetTrailStatusResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gtsrrsLatestDigestDeliveryError' - Displays any Amazon S3 error that CloudTrail encountered when attempting to deliver a digest file to the designated bucket. For more information see the topic <https://docs.aws.amazon.com/AmazonS3/latest/API/ErrorResponses.html Error Responses> in the Amazon S3 API Reference.
--
-- * 'gtsrrsTimeLoggingStopped' - This field is no longer in use.
--
-- * 'gtsrrsLatestDeliveryAttemptTime' - This field is no longer in use.
--
-- * 'gtsrrsLatestDeliveryAttemptSucceeded' - This field is no longer in use.
--
-- * 'gtsrrsLatestNotificationError' - Displays any Amazon SNS error that CloudTrail encountered when attempting to send a notification. For more information about Amazon SNS errors, see the <https://docs.aws.amazon.com/sns/latest/dg/welcome.html Amazon SNS Developer Guide> .
--
-- * 'gtsrrsLatestCloudWatchLogsDeliveryError' - Displays any CloudWatch Logs error that CloudTrail encountered when attempting to deliver logs to CloudWatch Logs.
--
-- * 'gtsrrsLatestNotificationAttemptSucceeded' - This field is no longer in use.
--
-- * 'gtsrrsLatestCloudWatchLogsDeliveryTime' - Displays the most recent date and time when CloudTrail delivered logs to CloudWatch Logs.
--
-- * 'gtsrrsLatestDigestDeliveryTime' - Specifies the date and time that CloudTrail last delivered a digest file to an account's Amazon S3 bucket.
--
-- * 'gtsrrsLatestDeliveryError' - Displays any Amazon S3 error that CloudTrail encountered when attempting to deliver log files to the designated bucket. For more information see the topic <https://docs.aws.amazon.com/AmazonS3/latest/API/ErrorResponses.html Error Responses> in the Amazon S3 API Reference.
--
-- * 'gtsrrsTimeLoggingStarted' - This field is no longer in use.
--
-- * 'gtsrrsIsLogging' - Whether the CloudTrail is currently logging AWS API calls.
--
-- * 'gtsrrsStopLoggingTime' - Specifies the most recent date and time when CloudTrail stopped recording API calls for an AWS account.
--
-- * 'gtsrrsLatestNotificationAttemptTime' - This field is no longer in use.
--
-- * 'gtsrrsStartLoggingTime' - Specifies the most recent date and time when CloudTrail started recording API calls for an AWS account.
--
-- * 'gtsrrsLatestNotificationTime' - Specifies the date and time of the most recent Amazon SNS notification that CloudTrail has written a new log file to an account's Amazon S3 bucket.
--
-- * 'gtsrrsLatestDeliveryTime' - Specifies the date and time that CloudTrail last delivered log files to an account's Amazon S3 bucket.
--
-- * 'gtsrrsResponseStatus' - -- | The response status code.
getTrailStatusResponse ::
  -- | 'gtsrrsResponseStatus'
  Int ->
  GetTrailStatusResponse
getTrailStatusResponse pResponseStatus_ =
  GetTrailStatusResponse'
    { _gtsrrsLatestDigestDeliveryError =
        Nothing,
      _gtsrrsTimeLoggingStopped = Nothing,
      _gtsrrsLatestDeliveryAttemptTime = Nothing,
      _gtsrrsLatestDeliveryAttemptSucceeded = Nothing,
      _gtsrrsLatestNotificationError = Nothing,
      _gtsrrsLatestCloudWatchLogsDeliveryError = Nothing,
      _gtsrrsLatestNotificationAttemptSucceeded = Nothing,
      _gtsrrsLatestCloudWatchLogsDeliveryTime = Nothing,
      _gtsrrsLatestDigestDeliveryTime = Nothing,
      _gtsrrsLatestDeliveryError = Nothing,
      _gtsrrsTimeLoggingStarted = Nothing,
      _gtsrrsIsLogging = Nothing,
      _gtsrrsStopLoggingTime = Nothing,
      _gtsrrsLatestNotificationAttemptTime = Nothing,
      _gtsrrsStartLoggingTime = Nothing,
      _gtsrrsLatestNotificationTime = Nothing,
      _gtsrrsLatestDeliveryTime = Nothing,
      _gtsrrsResponseStatus = pResponseStatus_
    }

-- | Displays any Amazon S3 error that CloudTrail encountered when attempting to deliver a digest file to the designated bucket. For more information see the topic <https://docs.aws.amazon.com/AmazonS3/latest/API/ErrorResponses.html Error Responses> in the Amazon S3 API Reference.
gtsrrsLatestDigestDeliveryError :: Lens' GetTrailStatusResponse (Maybe Text)
gtsrrsLatestDigestDeliveryError = lens _gtsrrsLatestDigestDeliveryError (\s a -> s {_gtsrrsLatestDigestDeliveryError = a})

-- | This field is no longer in use.
gtsrrsTimeLoggingStopped :: Lens' GetTrailStatusResponse (Maybe Text)
gtsrrsTimeLoggingStopped = lens _gtsrrsTimeLoggingStopped (\s a -> s {_gtsrrsTimeLoggingStopped = a})

-- | This field is no longer in use.
gtsrrsLatestDeliveryAttemptTime :: Lens' GetTrailStatusResponse (Maybe Text)
gtsrrsLatestDeliveryAttemptTime = lens _gtsrrsLatestDeliveryAttemptTime (\s a -> s {_gtsrrsLatestDeliveryAttemptTime = a})

-- | This field is no longer in use.
gtsrrsLatestDeliveryAttemptSucceeded :: Lens' GetTrailStatusResponse (Maybe Text)
gtsrrsLatestDeliveryAttemptSucceeded = lens _gtsrrsLatestDeliveryAttemptSucceeded (\s a -> s {_gtsrrsLatestDeliveryAttemptSucceeded = a})

-- | Displays any Amazon SNS error that CloudTrail encountered when attempting to send a notification. For more information about Amazon SNS errors, see the <https://docs.aws.amazon.com/sns/latest/dg/welcome.html Amazon SNS Developer Guide> .
gtsrrsLatestNotificationError :: Lens' GetTrailStatusResponse (Maybe Text)
gtsrrsLatestNotificationError = lens _gtsrrsLatestNotificationError (\s a -> s {_gtsrrsLatestNotificationError = a})

-- | Displays any CloudWatch Logs error that CloudTrail encountered when attempting to deliver logs to CloudWatch Logs.
gtsrrsLatestCloudWatchLogsDeliveryError :: Lens' GetTrailStatusResponse (Maybe Text)
gtsrrsLatestCloudWatchLogsDeliveryError = lens _gtsrrsLatestCloudWatchLogsDeliveryError (\s a -> s {_gtsrrsLatestCloudWatchLogsDeliveryError = a})

-- | This field is no longer in use.
gtsrrsLatestNotificationAttemptSucceeded :: Lens' GetTrailStatusResponse (Maybe Text)
gtsrrsLatestNotificationAttemptSucceeded = lens _gtsrrsLatestNotificationAttemptSucceeded (\s a -> s {_gtsrrsLatestNotificationAttemptSucceeded = a})

-- | Displays the most recent date and time when CloudTrail delivered logs to CloudWatch Logs.
gtsrrsLatestCloudWatchLogsDeliveryTime :: Lens' GetTrailStatusResponse (Maybe UTCTime)
gtsrrsLatestCloudWatchLogsDeliveryTime = lens _gtsrrsLatestCloudWatchLogsDeliveryTime (\s a -> s {_gtsrrsLatestCloudWatchLogsDeliveryTime = a}) . mapping _Time

-- | Specifies the date and time that CloudTrail last delivered a digest file to an account's Amazon S3 bucket.
gtsrrsLatestDigestDeliveryTime :: Lens' GetTrailStatusResponse (Maybe UTCTime)
gtsrrsLatestDigestDeliveryTime = lens _gtsrrsLatestDigestDeliveryTime (\s a -> s {_gtsrrsLatestDigestDeliveryTime = a}) . mapping _Time

-- | Displays any Amazon S3 error that CloudTrail encountered when attempting to deliver log files to the designated bucket. For more information see the topic <https://docs.aws.amazon.com/AmazonS3/latest/API/ErrorResponses.html Error Responses> in the Amazon S3 API Reference.
gtsrrsLatestDeliveryError :: Lens' GetTrailStatusResponse (Maybe Text)
gtsrrsLatestDeliveryError = lens _gtsrrsLatestDeliveryError (\s a -> s {_gtsrrsLatestDeliveryError = a})

-- | This field is no longer in use.
gtsrrsTimeLoggingStarted :: Lens' GetTrailStatusResponse (Maybe Text)
gtsrrsTimeLoggingStarted = lens _gtsrrsTimeLoggingStarted (\s a -> s {_gtsrrsTimeLoggingStarted = a})

-- | Whether the CloudTrail is currently logging AWS API calls.
gtsrrsIsLogging :: Lens' GetTrailStatusResponse (Maybe Bool)
gtsrrsIsLogging = lens _gtsrrsIsLogging (\s a -> s {_gtsrrsIsLogging = a})

-- | Specifies the most recent date and time when CloudTrail stopped recording API calls for an AWS account.
gtsrrsStopLoggingTime :: Lens' GetTrailStatusResponse (Maybe UTCTime)
gtsrrsStopLoggingTime = lens _gtsrrsStopLoggingTime (\s a -> s {_gtsrrsStopLoggingTime = a}) . mapping _Time

-- | This field is no longer in use.
gtsrrsLatestNotificationAttemptTime :: Lens' GetTrailStatusResponse (Maybe Text)
gtsrrsLatestNotificationAttemptTime = lens _gtsrrsLatestNotificationAttemptTime (\s a -> s {_gtsrrsLatestNotificationAttemptTime = a})

-- | Specifies the most recent date and time when CloudTrail started recording API calls for an AWS account.
gtsrrsStartLoggingTime :: Lens' GetTrailStatusResponse (Maybe UTCTime)
gtsrrsStartLoggingTime = lens _gtsrrsStartLoggingTime (\s a -> s {_gtsrrsStartLoggingTime = a}) . mapping _Time

-- | Specifies the date and time of the most recent Amazon SNS notification that CloudTrail has written a new log file to an account's Amazon S3 bucket.
gtsrrsLatestNotificationTime :: Lens' GetTrailStatusResponse (Maybe UTCTime)
gtsrrsLatestNotificationTime = lens _gtsrrsLatestNotificationTime (\s a -> s {_gtsrrsLatestNotificationTime = a}) . mapping _Time

-- | Specifies the date and time that CloudTrail last delivered log files to an account's Amazon S3 bucket.
gtsrrsLatestDeliveryTime :: Lens' GetTrailStatusResponse (Maybe UTCTime)
gtsrrsLatestDeliveryTime = lens _gtsrrsLatestDeliveryTime (\s a -> s {_gtsrrsLatestDeliveryTime = a}) . mapping _Time

-- | -- | The response status code.
gtsrrsResponseStatus :: Lens' GetTrailStatusResponse Int
gtsrrsResponseStatus = lens _gtsrrsResponseStatus (\s a -> s {_gtsrrsResponseStatus = a})

instance NFData GetTrailStatusResponse

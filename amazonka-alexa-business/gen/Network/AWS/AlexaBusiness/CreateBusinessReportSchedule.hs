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
-- Module      : Network.AWS.AlexaBusiness.CreateBusinessReportSchedule
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates a recurring schedule for usage reports to deliver to the specified S3 location with a specified daily or weekly interval.
module Network.AWS.AlexaBusiness.CreateBusinessReportSchedule
  ( -- * Creating a Request
    createBusinessReportSchedule,
    CreateBusinessReportSchedule,

    -- * Request Lenses
    cbrsS3KeyPrefix,
    cbrsRecurrence,
    cbrsTags,
    cbrsS3BucketName,
    cbrsClientRequestToken,
    cbrsScheduleName,
    cbrsFormat,
    cbrsContentRange,

    -- * Destructuring the Response
    createBusinessReportScheduleResponse,
    CreateBusinessReportScheduleResponse,

    -- * Response Lenses
    cbrsrrsScheduleARN,
    cbrsrrsResponseStatus,
  )
where

import Network.AWS.AlexaBusiness.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'createBusinessReportSchedule' smart constructor.
data CreateBusinessReportSchedule = CreateBusinessReportSchedule'
  { _cbrsS3KeyPrefix ::
      !(Maybe Text),
    _cbrsRecurrence ::
      !( Maybe
           BusinessReportRecurrence
       ),
    _cbrsTags ::
      !( Maybe
           [Tag]
       ),
    _cbrsS3BucketName ::
      !(Maybe Text),
    _cbrsClientRequestToken ::
      !(Maybe Text),
    _cbrsScheduleName ::
      !(Maybe Text),
    _cbrsFormat ::
      !BusinessReportFormat,
    _cbrsContentRange ::
      !BusinessReportContentRange
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'CreateBusinessReportSchedule' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cbrsS3KeyPrefix' - The S3 key where the report is delivered.
--
-- * 'cbrsRecurrence' - The recurrence of the reports. If this isn't specified, the report will only be delivered one time when the API is called.
--
-- * 'cbrsTags' - The tags for the business report schedule.
--
-- * 'cbrsS3BucketName' - The S3 bucket name of the output reports. If this isn't specified, the report can be retrieved from a download link by calling ListBusinessReportSchedule.
--
-- * 'cbrsClientRequestToken' - The client request token.
--
-- * 'cbrsScheduleName' - The name identifier of the schedule.
--
-- * 'cbrsFormat' - The format of the generated report (individual CSV files or zipped files of individual files).
--
-- * 'cbrsContentRange' - The content range of the reports.
createBusinessReportSchedule ::
  -- | 'cbrsFormat'
  BusinessReportFormat ->
  -- | 'cbrsContentRange'
  BusinessReportContentRange ->
  CreateBusinessReportSchedule
createBusinessReportSchedule pFormat_ pContentRange_ =
  CreateBusinessReportSchedule'
    { _cbrsS3KeyPrefix =
        Nothing,
      _cbrsRecurrence = Nothing,
      _cbrsTags = Nothing,
      _cbrsS3BucketName = Nothing,
      _cbrsClientRequestToken = Nothing,
      _cbrsScheduleName = Nothing,
      _cbrsFormat = pFormat_,
      _cbrsContentRange = pContentRange_
    }

-- | The S3 key where the report is delivered.
cbrsS3KeyPrefix :: Lens' CreateBusinessReportSchedule (Maybe Text)
cbrsS3KeyPrefix = lens _cbrsS3KeyPrefix (\s a -> s {_cbrsS3KeyPrefix = a})

-- | The recurrence of the reports. If this isn't specified, the report will only be delivered one time when the API is called.
cbrsRecurrence :: Lens' CreateBusinessReportSchedule (Maybe BusinessReportRecurrence)
cbrsRecurrence = lens _cbrsRecurrence (\s a -> s {_cbrsRecurrence = a})

-- | The tags for the business report schedule.
cbrsTags :: Lens' CreateBusinessReportSchedule [Tag]
cbrsTags = lens _cbrsTags (\s a -> s {_cbrsTags = a}) . _Default . _Coerce

-- | The S3 bucket name of the output reports. If this isn't specified, the report can be retrieved from a download link by calling ListBusinessReportSchedule.
cbrsS3BucketName :: Lens' CreateBusinessReportSchedule (Maybe Text)
cbrsS3BucketName = lens _cbrsS3BucketName (\s a -> s {_cbrsS3BucketName = a})

-- | The client request token.
cbrsClientRequestToken :: Lens' CreateBusinessReportSchedule (Maybe Text)
cbrsClientRequestToken = lens _cbrsClientRequestToken (\s a -> s {_cbrsClientRequestToken = a})

-- | The name identifier of the schedule.
cbrsScheduleName :: Lens' CreateBusinessReportSchedule (Maybe Text)
cbrsScheduleName = lens _cbrsScheduleName (\s a -> s {_cbrsScheduleName = a})

-- | The format of the generated report (individual CSV files or zipped files of individual files).
cbrsFormat :: Lens' CreateBusinessReportSchedule BusinessReportFormat
cbrsFormat = lens _cbrsFormat (\s a -> s {_cbrsFormat = a})

-- | The content range of the reports.
cbrsContentRange :: Lens' CreateBusinessReportSchedule BusinessReportContentRange
cbrsContentRange = lens _cbrsContentRange (\s a -> s {_cbrsContentRange = a})

instance AWSRequest CreateBusinessReportSchedule where
  type
    Rs CreateBusinessReportSchedule =
      CreateBusinessReportScheduleResponse
  request = postJSON alexaBusiness
  response =
    receiveJSON
      ( \s h x ->
          CreateBusinessReportScheduleResponse'
            <$> (x .?> "ScheduleArn") <*> (pure (fromEnum s))
      )

instance Hashable CreateBusinessReportSchedule

instance NFData CreateBusinessReportSchedule

instance ToHeaders CreateBusinessReportSchedule where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ( "AlexaForBusiness.CreateBusinessReportSchedule" ::
                     ByteString
                 ),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON CreateBusinessReportSchedule where
  toJSON CreateBusinessReportSchedule' {..} =
    object
      ( catMaybes
          [ ("S3KeyPrefix" .=) <$> _cbrsS3KeyPrefix,
            ("Recurrence" .=) <$> _cbrsRecurrence,
            ("Tags" .=) <$> _cbrsTags,
            ("S3BucketName" .=) <$> _cbrsS3BucketName,
            ("ClientRequestToken" .=)
              <$> _cbrsClientRequestToken,
            ("ScheduleName" .=) <$> _cbrsScheduleName,
            Just ("Format" .= _cbrsFormat),
            Just ("ContentRange" .= _cbrsContentRange)
          ]
      )

instance ToPath CreateBusinessReportSchedule where
  toPath = const "/"

instance ToQuery CreateBusinessReportSchedule where
  toQuery = const mempty

-- | /See:/ 'createBusinessReportScheduleResponse' smart constructor.
data CreateBusinessReportScheduleResponse = CreateBusinessReportScheduleResponse'
  { _cbrsrrsScheduleARN ::
      !( Maybe
           Text
       ),
    _cbrsrrsResponseStatus ::
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

-- | Creates a value of 'CreateBusinessReportScheduleResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cbrsrrsScheduleARN' - The ARN of the business report schedule.
--
-- * 'cbrsrrsResponseStatus' - -- | The response status code.
createBusinessReportScheduleResponse ::
  -- | 'cbrsrrsResponseStatus'
  Int ->
  CreateBusinessReportScheduleResponse
createBusinessReportScheduleResponse pResponseStatus_ =
  CreateBusinessReportScheduleResponse'
    { _cbrsrrsScheduleARN =
        Nothing,
      _cbrsrrsResponseStatus =
        pResponseStatus_
    }

-- | The ARN of the business report schedule.
cbrsrrsScheduleARN :: Lens' CreateBusinessReportScheduleResponse (Maybe Text)
cbrsrrsScheduleARN = lens _cbrsrrsScheduleARN (\s a -> s {_cbrsrrsScheduleARN = a})

-- | -- | The response status code.
cbrsrrsResponseStatus :: Lens' CreateBusinessReportScheduleResponse Int
cbrsrrsResponseStatus = lens _cbrsrrsResponseStatus (\s a -> s {_cbrsrrsResponseStatus = a})

instance NFData CreateBusinessReportScheduleResponse

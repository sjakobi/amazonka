{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.AlexaBusiness.Types.BusinessReportSchedule
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.AlexaBusiness.Types.BusinessReportSchedule where

import Network.AWS.AlexaBusiness.Types.BusinessReport
import Network.AWS.AlexaBusiness.Types.BusinessReportContentRange
import Network.AWS.AlexaBusiness.Types.BusinessReportFormat
import Network.AWS.AlexaBusiness.Types.BusinessReportRecurrence
import Network.AWS.Lens
import Network.AWS.Prelude

-- | The schedule of the usage report.
--
--
--
-- /See:/ 'businessReportSchedule' smart constructor.
data BusinessReportSchedule = BusinessReportSchedule'
  { _brsContentRange ::
      !( Maybe
           BusinessReportContentRange
       ),
    _brsFormat ::
      !( Maybe
           BusinessReportFormat
       ),
    _brsScheduleARN ::
      !(Maybe Text),
    _brsLastBusinessReport ::
      !(Maybe BusinessReport),
    _brsS3KeyPrefix ::
      !(Maybe Text),
    _brsRecurrence ::
      !( Maybe
           BusinessReportRecurrence
       ),
    _brsS3BucketName ::
      !(Maybe Text),
    _brsScheduleName ::
      !(Maybe Text)
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'BusinessReportSchedule' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'brsContentRange' - The content range of the reports.
--
-- * 'brsFormat' - The format of the generated report (individual CSV files or zipped files of individual files).
--
-- * 'brsScheduleARN' - The ARN of the business report schedule.
--
-- * 'brsLastBusinessReport' - The details of the last business report delivery for a specified time interval.
--
-- * 'brsS3KeyPrefix' - The S3 key where the report is delivered.
--
-- * 'brsRecurrence' - The recurrence of the reports.
--
-- * 'brsS3BucketName' - The S3 bucket name of the output reports.
--
-- * 'brsScheduleName' - The name identifier of the schedule.
businessReportSchedule ::
  BusinessReportSchedule
businessReportSchedule =
  BusinessReportSchedule'
    { _brsContentRange = Nothing,
      _brsFormat = Nothing,
      _brsScheduleARN = Nothing,
      _brsLastBusinessReport = Nothing,
      _brsS3KeyPrefix = Nothing,
      _brsRecurrence = Nothing,
      _brsS3BucketName = Nothing,
      _brsScheduleName = Nothing
    }

-- | The content range of the reports.
brsContentRange :: Lens' BusinessReportSchedule (Maybe BusinessReportContentRange)
brsContentRange = lens _brsContentRange (\s a -> s {_brsContentRange = a})

-- | The format of the generated report (individual CSV files or zipped files of individual files).
brsFormat :: Lens' BusinessReportSchedule (Maybe BusinessReportFormat)
brsFormat = lens _brsFormat (\s a -> s {_brsFormat = a})

-- | The ARN of the business report schedule.
brsScheduleARN :: Lens' BusinessReportSchedule (Maybe Text)
brsScheduleARN = lens _brsScheduleARN (\s a -> s {_brsScheduleARN = a})

-- | The details of the last business report delivery for a specified time interval.
brsLastBusinessReport :: Lens' BusinessReportSchedule (Maybe BusinessReport)
brsLastBusinessReport = lens _brsLastBusinessReport (\s a -> s {_brsLastBusinessReport = a})

-- | The S3 key where the report is delivered.
brsS3KeyPrefix :: Lens' BusinessReportSchedule (Maybe Text)
brsS3KeyPrefix = lens _brsS3KeyPrefix (\s a -> s {_brsS3KeyPrefix = a})

-- | The recurrence of the reports.
brsRecurrence :: Lens' BusinessReportSchedule (Maybe BusinessReportRecurrence)
brsRecurrence = lens _brsRecurrence (\s a -> s {_brsRecurrence = a})

-- | The S3 bucket name of the output reports.
brsS3BucketName :: Lens' BusinessReportSchedule (Maybe Text)
brsS3BucketName = lens _brsS3BucketName (\s a -> s {_brsS3BucketName = a})

-- | The name identifier of the schedule.
brsScheduleName :: Lens' BusinessReportSchedule (Maybe Text)
brsScheduleName = lens _brsScheduleName (\s a -> s {_brsScheduleName = a})

instance FromJSON BusinessReportSchedule where
  parseJSON =
    withObject
      "BusinessReportSchedule"
      ( \x ->
          BusinessReportSchedule'
            <$> (x .:? "ContentRange")
            <*> (x .:? "Format")
            <*> (x .:? "ScheduleArn")
            <*> (x .:? "LastBusinessReport")
            <*> (x .:? "S3KeyPrefix")
            <*> (x .:? "Recurrence")
            <*> (x .:? "S3BucketName")
            <*> (x .:? "ScheduleName")
      )

instance Hashable BusinessReportSchedule

instance NFData BusinessReportSchedule

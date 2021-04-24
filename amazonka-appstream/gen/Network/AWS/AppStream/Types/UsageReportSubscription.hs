{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.AppStream.Types.UsageReportSubscription
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.AppStream.Types.UsageReportSubscription where

import Network.AWS.AppStream.Types.LastReportGenerationExecutionError
import Network.AWS.AppStream.Types.UsageReportSchedule
import Network.AWS.Lens
import Network.AWS.Prelude

-- | Describes information about the usage report subscription.
--
--
--
-- /See:/ 'usageReportSubscription' smart constructor.
data UsageReportSubscription = UsageReportSubscription'
  { _ursSubscriptionErrors ::
      !( Maybe
           [LastReportGenerationExecutionError]
       ),
    _ursLastGeneratedReportDate ::
      !(Maybe POSIX),
    _ursS3BucketName ::
      !(Maybe Text),
    _ursSchedule ::
      !( Maybe
           UsageReportSchedule
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

-- | Creates a value of 'UsageReportSubscription' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ursSubscriptionErrors' - The errors that were returned if usage reports couldn't be generated.
--
-- * 'ursLastGeneratedReportDate' - The time when the last usage report was generated.
--
-- * 'ursS3BucketName' - The Amazon S3 bucket where generated reports are stored. If you enabled on-instance session scripts and Amazon S3 logging for your session script configuration, AppStream 2.0 created an S3 bucket to store the script output. The bucket is unique to your account and Region. When you enable usage reporting in this case, AppStream 2.0 uses the same bucket to store your usage reports. If you haven't already enabled on-instance session scripts, when you enable usage reports, AppStream 2.0 creates a new S3 bucket.
--
-- * 'ursSchedule' - The schedule for generating usage reports.
usageReportSubscription ::
  UsageReportSubscription
usageReportSubscription =
  UsageReportSubscription'
    { _ursSubscriptionErrors =
        Nothing,
      _ursLastGeneratedReportDate = Nothing,
      _ursS3BucketName = Nothing,
      _ursSchedule = Nothing
    }

-- | The errors that were returned if usage reports couldn't be generated.
ursSubscriptionErrors :: Lens' UsageReportSubscription [LastReportGenerationExecutionError]
ursSubscriptionErrors = lens _ursSubscriptionErrors (\s a -> s {_ursSubscriptionErrors = a}) . _Default . _Coerce

-- | The time when the last usage report was generated.
ursLastGeneratedReportDate :: Lens' UsageReportSubscription (Maybe UTCTime)
ursLastGeneratedReportDate = lens _ursLastGeneratedReportDate (\s a -> s {_ursLastGeneratedReportDate = a}) . mapping _Time

-- | The Amazon S3 bucket where generated reports are stored. If you enabled on-instance session scripts and Amazon S3 logging for your session script configuration, AppStream 2.0 created an S3 bucket to store the script output. The bucket is unique to your account and Region. When you enable usage reporting in this case, AppStream 2.0 uses the same bucket to store your usage reports. If you haven't already enabled on-instance session scripts, when you enable usage reports, AppStream 2.0 creates a new S3 bucket.
ursS3BucketName :: Lens' UsageReportSubscription (Maybe Text)
ursS3BucketName = lens _ursS3BucketName (\s a -> s {_ursS3BucketName = a})

-- | The schedule for generating usage reports.
ursSchedule :: Lens' UsageReportSubscription (Maybe UsageReportSchedule)
ursSchedule = lens _ursSchedule (\s a -> s {_ursSchedule = a})

instance FromJSON UsageReportSubscription where
  parseJSON =
    withObject
      "UsageReportSubscription"
      ( \x ->
          UsageReportSubscription'
            <$> (x .:? "SubscriptionErrors" .!= mempty)
            <*> (x .:? "LastGeneratedReportDate")
            <*> (x .:? "S3BucketName")
            <*> (x .:? "Schedule")
      )

instance Hashable UsageReportSubscription

instance NFData UsageReportSubscription

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
-- Module      : Network.AWS.AppStream.CreateUsageReportSubscription
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates a usage report subscription. Usage reports are generated daily.
module Network.AWS.AppStream.CreateUsageReportSubscription
  ( -- * Creating a Request
    createUsageReportSubscription,
    CreateUsageReportSubscription,

    -- * Destructuring the Response
    createUsageReportSubscriptionResponse,
    CreateUsageReportSubscriptionResponse,

    -- * Response Lenses
    cursrrsS3BucketName,
    cursrrsSchedule,
    cursrrsResponseStatus,
  )
where

import Network.AWS.AppStream.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'createUsageReportSubscription' smart constructor.
data CreateUsageReportSubscription = CreateUsageReportSubscription'
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'CreateUsageReportSubscription' with the minimum fields required to make a request.
createUsageReportSubscription ::
  CreateUsageReportSubscription
createUsageReportSubscription =
  CreateUsageReportSubscription'

instance AWSRequest CreateUsageReportSubscription where
  type
    Rs CreateUsageReportSubscription =
      CreateUsageReportSubscriptionResponse
  request = postJSON appStream
  response =
    receiveJSON
      ( \s h x ->
          CreateUsageReportSubscriptionResponse'
            <$> (x .?> "S3BucketName")
            <*> (x .?> "Schedule")
            <*> (pure (fromEnum s))
      )

instance Hashable CreateUsageReportSubscription

instance NFData CreateUsageReportSubscription

instance ToHeaders CreateUsageReportSubscription where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ( "PhotonAdminProxyService.CreateUsageReportSubscription" ::
                     ByteString
                 ),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON CreateUsageReportSubscription where
  toJSON = const (Object mempty)

instance ToPath CreateUsageReportSubscription where
  toPath = const "/"

instance ToQuery CreateUsageReportSubscription where
  toQuery = const mempty

-- | /See:/ 'createUsageReportSubscriptionResponse' smart constructor.
data CreateUsageReportSubscriptionResponse = CreateUsageReportSubscriptionResponse'
  { _cursrrsS3BucketName ::
      !( Maybe
           Text
       ),
    _cursrrsSchedule ::
      !( Maybe
           UsageReportSchedule
       ),
    _cursrrsResponseStatus ::
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

-- | Creates a value of 'CreateUsageReportSubscriptionResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cursrrsS3BucketName' - The Amazon S3 bucket where generated reports are stored. If you enabled on-instance session scripts and Amazon S3 logging for your session script configuration, AppStream 2.0 created an S3 bucket to store the script output. The bucket is unique to your account and Region. When you enable usage reporting in this case, AppStream 2.0 uses the same bucket to store your usage reports. If you haven't already enabled on-instance session scripts, when you enable usage reports, AppStream 2.0 creates a new S3 bucket.
--
-- * 'cursrrsSchedule' - The schedule for generating usage reports.
--
-- * 'cursrrsResponseStatus' - -- | The response status code.
createUsageReportSubscriptionResponse ::
  -- | 'cursrrsResponseStatus'
  Int ->
  CreateUsageReportSubscriptionResponse
createUsageReportSubscriptionResponse
  pResponseStatus_ =
    CreateUsageReportSubscriptionResponse'
      { _cursrrsS3BucketName =
          Nothing,
        _cursrrsSchedule = Nothing,
        _cursrrsResponseStatus =
          pResponseStatus_
      }

-- | The Amazon S3 bucket where generated reports are stored. If you enabled on-instance session scripts and Amazon S3 logging for your session script configuration, AppStream 2.0 created an S3 bucket to store the script output. The bucket is unique to your account and Region. When you enable usage reporting in this case, AppStream 2.0 uses the same bucket to store your usage reports. If you haven't already enabled on-instance session scripts, when you enable usage reports, AppStream 2.0 creates a new S3 bucket.
cursrrsS3BucketName :: Lens' CreateUsageReportSubscriptionResponse (Maybe Text)
cursrrsS3BucketName = lens _cursrrsS3BucketName (\s a -> s {_cursrrsS3BucketName = a})

-- | The schedule for generating usage reports.
cursrrsSchedule :: Lens' CreateUsageReportSubscriptionResponse (Maybe UsageReportSchedule)
cursrrsSchedule = lens _cursrrsSchedule (\s a -> s {_cursrrsSchedule = a})

-- | -- | The response status code.
cursrrsResponseStatus :: Lens' CreateUsageReportSubscriptionResponse Int
cursrrsResponseStatus = lens _cursrrsResponseStatus (\s a -> s {_cursrrsResponseStatus = a})

instance NFData CreateUsageReportSubscriptionResponse

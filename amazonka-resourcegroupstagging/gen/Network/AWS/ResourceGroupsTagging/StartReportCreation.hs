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
-- Module      : Network.AWS.ResourceGroupsTagging.StartReportCreation
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Generates a report that lists all tagged resources in the accounts across your organization and tells whether each resource is compliant with the effective tag policy. Compliance data is refreshed daily. The report is generated asynchronously.
--
--
-- The generated report is saved to the following location:
--
-- @s3://example-bucket/AwsTagPolicies/o-exampleorgid/YYYY-MM-ddTHH:mm:ssZ/report.csv@
--
-- You can call this operation only from the organization's management account and from the us-east-1 Region.
module Network.AWS.ResourceGroupsTagging.StartReportCreation
  ( -- * Creating a Request
    startReportCreation,
    StartReportCreation,

    -- * Request Lenses
    srcS3Bucket,

    -- * Destructuring the Response
    startReportCreationResponse,
    StartReportCreationResponse,

    -- * Response Lenses
    srcrrsResponseStatus,
  )
where

import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.ResourceGroupsTagging.Types
import Network.AWS.Response

-- | /See:/ 'startReportCreation' smart constructor.
newtype StartReportCreation = StartReportCreation'
  { _srcS3Bucket ::
      Text
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'StartReportCreation' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'srcS3Bucket' - The name of the Amazon S3 bucket where the report will be stored; for example: @awsexamplebucket@  For more information on S3 bucket requirements, including an example bucket policy, see the example S3 bucket policy on this page.
startReportCreation ::
  -- | 'srcS3Bucket'
  Text ->
  StartReportCreation
startReportCreation pS3Bucket_ =
  StartReportCreation' {_srcS3Bucket = pS3Bucket_}

-- | The name of the Amazon S3 bucket where the report will be stored; for example: @awsexamplebucket@  For more information on S3 bucket requirements, including an example bucket policy, see the example S3 bucket policy on this page.
srcS3Bucket :: Lens' StartReportCreation Text
srcS3Bucket = lens _srcS3Bucket (\s a -> s {_srcS3Bucket = a})

instance AWSRequest StartReportCreation where
  type
    Rs StartReportCreation =
      StartReportCreationResponse
  request = postJSON resourceGroupsTagging
  response =
    receiveEmpty
      ( \s h x ->
          StartReportCreationResponse' <$> (pure (fromEnum s))
      )

instance Hashable StartReportCreation

instance NFData StartReportCreation

instance ToHeaders StartReportCreation where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ( "ResourceGroupsTaggingAPI_20170126.StartReportCreation" ::
                     ByteString
                 ),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON StartReportCreation where
  toJSON StartReportCreation' {..} =
    object
      (catMaybes [Just ("S3Bucket" .= _srcS3Bucket)])

instance ToPath StartReportCreation where
  toPath = const "/"

instance ToQuery StartReportCreation where
  toQuery = const mempty

-- | /See:/ 'startReportCreationResponse' smart constructor.
newtype StartReportCreationResponse = StartReportCreationResponse'
  { _srcrrsResponseStatus ::
      Int
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'StartReportCreationResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'srcrrsResponseStatus' - -- | The response status code.
startReportCreationResponse ::
  -- | 'srcrrsResponseStatus'
  Int ->
  StartReportCreationResponse
startReportCreationResponse pResponseStatus_ =
  StartReportCreationResponse'
    { _srcrrsResponseStatus =
        pResponseStatus_
    }

-- | -- | The response status code.
srcrrsResponseStatus :: Lens' StartReportCreationResponse Int
srcrrsResponseStatus = lens _srcrrsResponseStatus (\s a -> s {_srcrrsResponseStatus = a})

instance NFData StartReportCreationResponse

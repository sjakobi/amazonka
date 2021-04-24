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
-- Module      : Network.AWS.ResourceGroupsTagging.DescribeReportCreation
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Describes the status of the @StartReportCreation@ operation.
--
--
-- You can call this operation only from the organization's management account and from the us-east-1 Region.
module Network.AWS.ResourceGroupsTagging.DescribeReportCreation
  ( -- * Creating a Request
    describeReportCreation,
    DescribeReportCreation,

    -- * Destructuring the Response
    describeReportCreationResponse,
    DescribeReportCreationResponse,

    -- * Response Lenses
    drcrrsStatus,
    drcrrsS3Location,
    drcrrsErrorMessage,
    drcrrsResponseStatus,
  )
where

import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.ResourceGroupsTagging.Types
import Network.AWS.Response

-- | /See:/ 'describeReportCreation' smart constructor.
data DescribeReportCreation = DescribeReportCreation'
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'DescribeReportCreation' with the minimum fields required to make a request.
describeReportCreation ::
  DescribeReportCreation
describeReportCreation = DescribeReportCreation'

instance AWSRequest DescribeReportCreation where
  type
    Rs DescribeReportCreation =
      DescribeReportCreationResponse
  request = postJSON resourceGroupsTagging
  response =
    receiveJSON
      ( \s h x ->
          DescribeReportCreationResponse'
            <$> (x .?> "Status")
            <*> (x .?> "S3Location")
            <*> (x .?> "ErrorMessage")
            <*> (pure (fromEnum s))
      )

instance Hashable DescribeReportCreation

instance NFData DescribeReportCreation

instance ToHeaders DescribeReportCreation where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ( "ResourceGroupsTaggingAPI_20170126.DescribeReportCreation" ::
                     ByteString
                 ),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON DescribeReportCreation where
  toJSON = const (Object mempty)

instance ToPath DescribeReportCreation where
  toPath = const "/"

instance ToQuery DescribeReportCreation where
  toQuery = const mempty

-- | /See:/ 'describeReportCreationResponse' smart constructor.
data DescribeReportCreationResponse = DescribeReportCreationResponse'
  { _drcrrsStatus ::
      !( Maybe
           Text
       ),
    _drcrrsS3Location ::
      !( Maybe
           Text
       ),
    _drcrrsErrorMessage ::
      !( Maybe
           Text
       ),
    _drcrrsResponseStatus ::
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

-- | Creates a value of 'DescribeReportCreationResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'drcrrsStatus' - Reports the status of the operation. The operation status can be one of the following:     * @RUNNING@ - Report creation is in progress.     * @SUCCEEDED@ - Report creation is complete. You can open the report from the Amazon S3 bucket that you specified when you ran @StartReportCreation@ .     * @FAILED@ - Report creation timed out or the Amazon S3 bucket is not accessible.      * @NO REPORT@ - No report was generated in the last 90 days.
--
-- * 'drcrrsS3Location' - The path to the Amazon S3 bucket where the report was stored on creation.
--
-- * 'drcrrsErrorMessage' - Details of the common errors that all operations return.
--
-- * 'drcrrsResponseStatus' - -- | The response status code.
describeReportCreationResponse ::
  -- | 'drcrrsResponseStatus'
  Int ->
  DescribeReportCreationResponse
describeReportCreationResponse pResponseStatus_ =
  DescribeReportCreationResponse'
    { _drcrrsStatus =
        Nothing,
      _drcrrsS3Location = Nothing,
      _drcrrsErrorMessage = Nothing,
      _drcrrsResponseStatus = pResponseStatus_
    }

-- | Reports the status of the operation. The operation status can be one of the following:     * @RUNNING@ - Report creation is in progress.     * @SUCCEEDED@ - Report creation is complete. You can open the report from the Amazon S3 bucket that you specified when you ran @StartReportCreation@ .     * @FAILED@ - Report creation timed out or the Amazon S3 bucket is not accessible.      * @NO REPORT@ - No report was generated in the last 90 days.
drcrrsStatus :: Lens' DescribeReportCreationResponse (Maybe Text)
drcrrsStatus = lens _drcrrsStatus (\s a -> s {_drcrrsStatus = a})

-- | The path to the Amazon S3 bucket where the report was stored on creation.
drcrrsS3Location :: Lens' DescribeReportCreationResponse (Maybe Text)
drcrrsS3Location = lens _drcrrsS3Location (\s a -> s {_drcrrsS3Location = a})

-- | Details of the common errors that all operations return.
drcrrsErrorMessage :: Lens' DescribeReportCreationResponse (Maybe Text)
drcrrsErrorMessage = lens _drcrrsErrorMessage (\s a -> s {_drcrrsErrorMessage = a})

-- | -- | The response status code.
drcrrsResponseStatus :: Lens' DescribeReportCreationResponse Int
drcrrsResponseStatus = lens _drcrrsResponseStatus (\s a -> s {_drcrrsResponseStatus = a})

instance NFData DescribeReportCreationResponse

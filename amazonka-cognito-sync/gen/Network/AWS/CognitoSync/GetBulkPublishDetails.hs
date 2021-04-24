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
-- Module      : Network.AWS.CognitoSync.GetBulkPublishDetails
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Get the status of the last BulkPublish operation for an identity pool.
--
--
-- This API can only be called with developer credentials. You cannot call this API with the temporary user credentials provided by Cognito Identity.
module Network.AWS.CognitoSync.GetBulkPublishDetails
  ( -- * Creating a Request
    getBulkPublishDetails,
    GetBulkPublishDetails,

    -- * Request Lenses
    gbpdIdentityPoolId,

    -- * Destructuring the Response
    getBulkPublishDetailsResponse,
    GetBulkPublishDetailsResponse,

    -- * Response Lenses
    gbpdrrsIdentityPoolId,
    gbpdrrsBulkPublishStartTime,
    gbpdrrsFailureMessage,
    gbpdrrsBulkPublishCompleteTime,
    gbpdrrsBulkPublishStatus,
    gbpdrrsResponseStatus,
  )
where

import Network.AWS.CognitoSync.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | The input for the GetBulkPublishDetails operation.
--
-- /See:/ 'getBulkPublishDetails' smart constructor.
newtype GetBulkPublishDetails = GetBulkPublishDetails'
  { _gbpdIdentityPoolId ::
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

-- | Creates a value of 'GetBulkPublishDetails' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gbpdIdentityPoolId' - A name-spaced GUID (for example, us-east-1:23EC4050-6AEA-7089-A2DD-08002EXAMPLE) created by Amazon Cognito. GUID generation is unique within a region.
getBulkPublishDetails ::
  -- | 'gbpdIdentityPoolId'
  Text ->
  GetBulkPublishDetails
getBulkPublishDetails pIdentityPoolId_ =
  GetBulkPublishDetails'
    { _gbpdIdentityPoolId =
        pIdentityPoolId_
    }

-- | A name-spaced GUID (for example, us-east-1:23EC4050-6AEA-7089-A2DD-08002EXAMPLE) created by Amazon Cognito. GUID generation is unique within a region.
gbpdIdentityPoolId :: Lens' GetBulkPublishDetails Text
gbpdIdentityPoolId = lens _gbpdIdentityPoolId (\s a -> s {_gbpdIdentityPoolId = a})

instance AWSRequest GetBulkPublishDetails where
  type
    Rs GetBulkPublishDetails =
      GetBulkPublishDetailsResponse
  request = postJSON cognitoSync
  response =
    receiveJSON
      ( \s h x ->
          GetBulkPublishDetailsResponse'
            <$> (x .?> "IdentityPoolId")
            <*> (x .?> "BulkPublishStartTime")
            <*> (x .?> "FailureMessage")
            <*> (x .?> "BulkPublishCompleteTime")
            <*> (x .?> "BulkPublishStatus")
            <*> (pure (fromEnum s))
      )

instance Hashable GetBulkPublishDetails

instance NFData GetBulkPublishDetails

instance ToHeaders GetBulkPublishDetails where
  toHeaders =
    const
      ( mconcat
          [ "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON GetBulkPublishDetails where
  toJSON = const (Object mempty)

instance ToPath GetBulkPublishDetails where
  toPath GetBulkPublishDetails' {..} =
    mconcat
      [ "/identitypools/",
        toBS _gbpdIdentityPoolId,
        "/getBulkPublishDetails"
      ]

instance ToQuery GetBulkPublishDetails where
  toQuery = const mempty

-- | The output for the GetBulkPublishDetails operation.
--
-- /See:/ 'getBulkPublishDetailsResponse' smart constructor.
data GetBulkPublishDetailsResponse = GetBulkPublishDetailsResponse'
  { _gbpdrrsIdentityPoolId ::
      !( Maybe
           Text
       ),
    _gbpdrrsBulkPublishStartTime ::
      !( Maybe
           POSIX
       ),
    _gbpdrrsFailureMessage ::
      !( Maybe
           Text
       ),
    _gbpdrrsBulkPublishCompleteTime ::
      !( Maybe
           POSIX
       ),
    _gbpdrrsBulkPublishStatus ::
      !( Maybe
           BulkPublishStatus
       ),
    _gbpdrrsResponseStatus ::
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

-- | Creates a value of 'GetBulkPublishDetailsResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gbpdrrsIdentityPoolId' - A name-spaced GUID (for example, us-east-1:23EC4050-6AEA-7089-A2DD-08002EXAMPLE) created by Amazon Cognito. GUID generation is unique within a region.
--
-- * 'gbpdrrsBulkPublishStartTime' - The date/time at which the last bulk publish was initiated.
--
-- * 'gbpdrrsFailureMessage' - If BulkPublishStatus is FAILED this field will contain the error message that caused the bulk publish to fail.
--
-- * 'gbpdrrsBulkPublishCompleteTime' - If BulkPublishStatus is SUCCEEDED, the time the last bulk publish operation completed.
--
-- * 'gbpdrrsBulkPublishStatus' - Status of the last bulk publish operation, valid values are: NOT_STARTED - No bulk publish has been requested for this identity pool IN_PROGRESS - Data is being published to the configured stream SUCCEEDED - All data for the identity pool has been published to the configured stream FAILED - Some portion of the data has failed to publish, check FailureMessage for the cause.
--
-- * 'gbpdrrsResponseStatus' - -- | The response status code.
getBulkPublishDetailsResponse ::
  -- | 'gbpdrrsResponseStatus'
  Int ->
  GetBulkPublishDetailsResponse
getBulkPublishDetailsResponse pResponseStatus_ =
  GetBulkPublishDetailsResponse'
    { _gbpdrrsIdentityPoolId =
        Nothing,
      _gbpdrrsBulkPublishStartTime = Nothing,
      _gbpdrrsFailureMessage = Nothing,
      _gbpdrrsBulkPublishCompleteTime = Nothing,
      _gbpdrrsBulkPublishStatus = Nothing,
      _gbpdrrsResponseStatus = pResponseStatus_
    }

-- | A name-spaced GUID (for example, us-east-1:23EC4050-6AEA-7089-A2DD-08002EXAMPLE) created by Amazon Cognito. GUID generation is unique within a region.
gbpdrrsIdentityPoolId :: Lens' GetBulkPublishDetailsResponse (Maybe Text)
gbpdrrsIdentityPoolId = lens _gbpdrrsIdentityPoolId (\s a -> s {_gbpdrrsIdentityPoolId = a})

-- | The date/time at which the last bulk publish was initiated.
gbpdrrsBulkPublishStartTime :: Lens' GetBulkPublishDetailsResponse (Maybe UTCTime)
gbpdrrsBulkPublishStartTime = lens _gbpdrrsBulkPublishStartTime (\s a -> s {_gbpdrrsBulkPublishStartTime = a}) . mapping _Time

-- | If BulkPublishStatus is FAILED this field will contain the error message that caused the bulk publish to fail.
gbpdrrsFailureMessage :: Lens' GetBulkPublishDetailsResponse (Maybe Text)
gbpdrrsFailureMessage = lens _gbpdrrsFailureMessage (\s a -> s {_gbpdrrsFailureMessage = a})

-- | If BulkPublishStatus is SUCCEEDED, the time the last bulk publish operation completed.
gbpdrrsBulkPublishCompleteTime :: Lens' GetBulkPublishDetailsResponse (Maybe UTCTime)
gbpdrrsBulkPublishCompleteTime = lens _gbpdrrsBulkPublishCompleteTime (\s a -> s {_gbpdrrsBulkPublishCompleteTime = a}) . mapping _Time

-- | Status of the last bulk publish operation, valid values are: NOT_STARTED - No bulk publish has been requested for this identity pool IN_PROGRESS - Data is being published to the configured stream SUCCEEDED - All data for the identity pool has been published to the configured stream FAILED - Some portion of the data has failed to publish, check FailureMessage for the cause.
gbpdrrsBulkPublishStatus :: Lens' GetBulkPublishDetailsResponse (Maybe BulkPublishStatus)
gbpdrrsBulkPublishStatus = lens _gbpdrrsBulkPublishStatus (\s a -> s {_gbpdrrsBulkPublishStatus = a})

-- | -- | The response status code.
gbpdrrsResponseStatus :: Lens' GetBulkPublishDetailsResponse Int
gbpdrrsResponseStatus = lens _gbpdrrsResponseStatus (\s a -> s {_gbpdrrsResponseStatus = a})

instance NFData GetBulkPublishDetailsResponse

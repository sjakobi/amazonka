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
-- Module      : Network.AWS.Greengrass.GetBulkDeploymentStatus
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns the status of a bulk deployment.
module Network.AWS.Greengrass.GetBulkDeploymentStatus
  ( -- * Creating a Request
    getBulkDeploymentStatus,
    GetBulkDeploymentStatus,

    -- * Request Lenses
    gbdsBulkDeploymentId,

    -- * Destructuring the Response
    getBulkDeploymentStatusResponse,
    GetBulkDeploymentStatusResponse,

    -- * Response Lenses
    gbdsrrsCreatedAt,
    gbdsrrsBulkDeploymentStatus,
    gbdsrrsTags,
    gbdsrrsBulkDeploymentMetrics,
    gbdsrrsErrorMessage,
    gbdsrrsErrorDetails,
    gbdsrrsResponseStatus,
  )
where

import Network.AWS.Greengrass.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'getBulkDeploymentStatus' smart constructor.
newtype GetBulkDeploymentStatus = GetBulkDeploymentStatus'
  { _gbdsBulkDeploymentId ::
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

-- | Creates a value of 'GetBulkDeploymentStatus' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gbdsBulkDeploymentId' - The ID of the bulk deployment.
getBulkDeploymentStatus ::
  -- | 'gbdsBulkDeploymentId'
  Text ->
  GetBulkDeploymentStatus
getBulkDeploymentStatus pBulkDeploymentId_ =
  GetBulkDeploymentStatus'
    { _gbdsBulkDeploymentId =
        pBulkDeploymentId_
    }

-- | The ID of the bulk deployment.
gbdsBulkDeploymentId :: Lens' GetBulkDeploymentStatus Text
gbdsBulkDeploymentId = lens _gbdsBulkDeploymentId (\s a -> s {_gbdsBulkDeploymentId = a})

instance AWSRequest GetBulkDeploymentStatus where
  type
    Rs GetBulkDeploymentStatus =
      GetBulkDeploymentStatusResponse
  request = get greengrass
  response =
    receiveJSON
      ( \s h x ->
          GetBulkDeploymentStatusResponse'
            <$> (x .?> "CreatedAt")
            <*> (x .?> "BulkDeploymentStatus")
            <*> (x .?> "tags" .!@ mempty)
            <*> (x .?> "BulkDeploymentMetrics")
            <*> (x .?> "ErrorMessage")
            <*> (x .?> "ErrorDetails" .!@ mempty)
            <*> (pure (fromEnum s))
      )

instance Hashable GetBulkDeploymentStatus

instance NFData GetBulkDeploymentStatus

instance ToHeaders GetBulkDeploymentStatus where
  toHeaders =
    const
      ( mconcat
          [ "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToPath GetBulkDeploymentStatus where
  toPath GetBulkDeploymentStatus' {..} =
    mconcat
      [ "/greengrass/bulk/deployments/",
        toBS _gbdsBulkDeploymentId,
        "/status"
      ]

instance ToQuery GetBulkDeploymentStatus where
  toQuery = const mempty

-- | /See:/ 'getBulkDeploymentStatusResponse' smart constructor.
data GetBulkDeploymentStatusResponse = GetBulkDeploymentStatusResponse'
  { _gbdsrrsCreatedAt ::
      !( Maybe
           Text
       ),
    _gbdsrrsBulkDeploymentStatus ::
      !( Maybe
           BulkDeploymentStatus
       ),
    _gbdsrrsTags ::
      !( Maybe
           ( Map
               Text
               Text
           )
       ),
    _gbdsrrsBulkDeploymentMetrics ::
      !( Maybe
           BulkDeploymentMetrics
       ),
    _gbdsrrsErrorMessage ::
      !( Maybe
           Text
       ),
    _gbdsrrsErrorDetails ::
      !( Maybe
           [ErrorDetail]
       ),
    _gbdsrrsResponseStatus ::
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

-- | Creates a value of 'GetBulkDeploymentStatusResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gbdsrrsCreatedAt' - The time, in ISO format, when the deployment was created.
--
-- * 'gbdsrrsBulkDeploymentStatus' - The status of the bulk deployment.
--
-- * 'gbdsrrsTags' - Tag(s) attached to the resource arn.
--
-- * 'gbdsrrsBulkDeploymentMetrics' - Relevant metrics on input records processed during bulk deployment.
--
-- * 'gbdsrrsErrorMessage' - Error message
--
-- * 'gbdsrrsErrorDetails' - Error details
--
-- * 'gbdsrrsResponseStatus' - -- | The response status code.
getBulkDeploymentStatusResponse ::
  -- | 'gbdsrrsResponseStatus'
  Int ->
  GetBulkDeploymentStatusResponse
getBulkDeploymentStatusResponse pResponseStatus_ =
  GetBulkDeploymentStatusResponse'
    { _gbdsrrsCreatedAt =
        Nothing,
      _gbdsrrsBulkDeploymentStatus = Nothing,
      _gbdsrrsTags = Nothing,
      _gbdsrrsBulkDeploymentMetrics = Nothing,
      _gbdsrrsErrorMessage = Nothing,
      _gbdsrrsErrorDetails = Nothing,
      _gbdsrrsResponseStatus = pResponseStatus_
    }

-- | The time, in ISO format, when the deployment was created.
gbdsrrsCreatedAt :: Lens' GetBulkDeploymentStatusResponse (Maybe Text)
gbdsrrsCreatedAt = lens _gbdsrrsCreatedAt (\s a -> s {_gbdsrrsCreatedAt = a})

-- | The status of the bulk deployment.
gbdsrrsBulkDeploymentStatus :: Lens' GetBulkDeploymentStatusResponse (Maybe BulkDeploymentStatus)
gbdsrrsBulkDeploymentStatus = lens _gbdsrrsBulkDeploymentStatus (\s a -> s {_gbdsrrsBulkDeploymentStatus = a})

-- | Tag(s) attached to the resource arn.
gbdsrrsTags :: Lens' GetBulkDeploymentStatusResponse (HashMap Text Text)
gbdsrrsTags = lens _gbdsrrsTags (\s a -> s {_gbdsrrsTags = a}) . _Default . _Map

-- | Relevant metrics on input records processed during bulk deployment.
gbdsrrsBulkDeploymentMetrics :: Lens' GetBulkDeploymentStatusResponse (Maybe BulkDeploymentMetrics)
gbdsrrsBulkDeploymentMetrics = lens _gbdsrrsBulkDeploymentMetrics (\s a -> s {_gbdsrrsBulkDeploymentMetrics = a})

-- | Error message
gbdsrrsErrorMessage :: Lens' GetBulkDeploymentStatusResponse (Maybe Text)
gbdsrrsErrorMessage = lens _gbdsrrsErrorMessage (\s a -> s {_gbdsrrsErrorMessage = a})

-- | Error details
gbdsrrsErrorDetails :: Lens' GetBulkDeploymentStatusResponse [ErrorDetail]
gbdsrrsErrorDetails = lens _gbdsrrsErrorDetails (\s a -> s {_gbdsrrsErrorDetails = a}) . _Default . _Coerce

-- | -- | The response status code.
gbdsrrsResponseStatus :: Lens' GetBulkDeploymentStatusResponse Int
gbdsrrsResponseStatus = lens _gbdsrrsResponseStatus (\s a -> s {_gbdsrrsResponseStatus = a})

instance NFData GetBulkDeploymentStatusResponse

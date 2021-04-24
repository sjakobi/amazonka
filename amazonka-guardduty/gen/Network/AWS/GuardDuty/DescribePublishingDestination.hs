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
-- Module      : Network.AWS.GuardDuty.DescribePublishingDestination
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns information about the publishing destination specified by the provided @destinationId@ .
module Network.AWS.GuardDuty.DescribePublishingDestination
  ( -- * Creating a Request
    describePublishingDestination,
    DescribePublishingDestination,

    -- * Request Lenses
    dDetectorId,
    dDestinationId,

    -- * Destructuring the Response
    describePublishingDestinationResponse,
    DescribePublishingDestinationResponse,

    -- * Response Lenses
    drsResponseStatus,
    drsDestinationId,
    drsDestinationType,
    drsStatus,
    drsPublishingFailureStartTimestamp,
    drsDestinationProperties,
  )
where

import Network.AWS.GuardDuty.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'describePublishingDestination' smart constructor.
data DescribePublishingDestination = DescribePublishingDestination'
  { _dDetectorId ::
      !Text,
    _dDestinationId ::
      !Text
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'DescribePublishingDestination' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dDetectorId' - The unique ID of the detector associated with the publishing destination to retrieve.
--
-- * 'dDestinationId' - The ID of the publishing destination to retrieve.
describePublishingDestination ::
  -- | 'dDetectorId'
  Text ->
  -- | 'dDestinationId'
  Text ->
  DescribePublishingDestination
describePublishingDestination
  pDetectorId_
  pDestinationId_ =
    DescribePublishingDestination'
      { _dDetectorId =
          pDetectorId_,
        _dDestinationId = pDestinationId_
      }

-- | The unique ID of the detector associated with the publishing destination to retrieve.
dDetectorId :: Lens' DescribePublishingDestination Text
dDetectorId = lens _dDetectorId (\s a -> s {_dDetectorId = a})

-- | The ID of the publishing destination to retrieve.
dDestinationId :: Lens' DescribePublishingDestination Text
dDestinationId = lens _dDestinationId (\s a -> s {_dDestinationId = a})

instance AWSRequest DescribePublishingDestination where
  type
    Rs DescribePublishingDestination =
      DescribePublishingDestinationResponse
  request = get guardDuty
  response =
    receiveJSON
      ( \s h x ->
          DescribePublishingDestinationResponse'
            <$> (pure (fromEnum s))
            <*> (x .:> "destinationId")
            <*> (x .:> "destinationType")
            <*> (x .:> "status")
            <*> (x .:> "publishingFailureStartTimestamp")
            <*> (x .:> "destinationProperties")
      )

instance Hashable DescribePublishingDestination

instance NFData DescribePublishingDestination

instance ToHeaders DescribePublishingDestination where
  toHeaders =
    const
      ( mconcat
          [ "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToPath DescribePublishingDestination where
  toPath DescribePublishingDestination' {..} =
    mconcat
      [ "/detector/",
        toBS _dDetectorId,
        "/publishingDestination/",
        toBS _dDestinationId
      ]

instance ToQuery DescribePublishingDestination where
  toQuery = const mempty

-- | /See:/ 'describePublishingDestinationResponse' smart constructor.
data DescribePublishingDestinationResponse = DescribePublishingDestinationResponse'
  { _drsResponseStatus ::
      !Int,
    _drsDestinationId ::
      !Text,
    _drsDestinationType ::
      !DestinationType,
    _drsStatus ::
      !PublishingStatus,
    _drsPublishingFailureStartTimestamp ::
      !Integer,
    _drsDestinationProperties ::
      !DestinationProperties
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'DescribePublishingDestinationResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'drsResponseStatus' - -- | The response status code.
--
-- * 'drsDestinationId' - The ID of the publishing destination.
--
-- * 'drsDestinationType' - The type of publishing destination. Currently, only Amazon S3 buckets are supported.
--
-- * 'drsStatus' - The status of the publishing destination.
--
-- * 'drsPublishingFailureStartTimestamp' - The time, in epoch millisecond format, at which GuardDuty was first unable to publish findings to the destination.
--
-- * 'drsDestinationProperties' - A @DestinationProperties@ object that includes the @DestinationArn@ and @KmsKeyArn@ of the publishing destination.
describePublishingDestinationResponse ::
  -- | 'drsResponseStatus'
  Int ->
  -- | 'drsDestinationId'
  Text ->
  -- | 'drsDestinationType'
  DestinationType ->
  -- | 'drsStatus'
  PublishingStatus ->
  -- | 'drsPublishingFailureStartTimestamp'
  Integer ->
  -- | 'drsDestinationProperties'
  DestinationProperties ->
  DescribePublishingDestinationResponse
describePublishingDestinationResponse
  pResponseStatus_
  pDestinationId_
  pDestinationType_
  pStatus_
  pPublishingFailureStartTimestamp_
  pDestinationProperties_ =
    DescribePublishingDestinationResponse'
      { _drsResponseStatus =
          pResponseStatus_,
        _drsDestinationId = pDestinationId_,
        _drsDestinationType =
          pDestinationType_,
        _drsStatus = pStatus_,
        _drsPublishingFailureStartTimestamp =
          pPublishingFailureStartTimestamp_,
        _drsDestinationProperties =
          pDestinationProperties_
      }

-- | -- | The response status code.
drsResponseStatus :: Lens' DescribePublishingDestinationResponse Int
drsResponseStatus = lens _drsResponseStatus (\s a -> s {_drsResponseStatus = a})

-- | The ID of the publishing destination.
drsDestinationId :: Lens' DescribePublishingDestinationResponse Text
drsDestinationId = lens _drsDestinationId (\s a -> s {_drsDestinationId = a})

-- | The type of publishing destination. Currently, only Amazon S3 buckets are supported.
drsDestinationType :: Lens' DescribePublishingDestinationResponse DestinationType
drsDestinationType = lens _drsDestinationType (\s a -> s {_drsDestinationType = a})

-- | The status of the publishing destination.
drsStatus :: Lens' DescribePublishingDestinationResponse PublishingStatus
drsStatus = lens _drsStatus (\s a -> s {_drsStatus = a})

-- | The time, in epoch millisecond format, at which GuardDuty was first unable to publish findings to the destination.
drsPublishingFailureStartTimestamp :: Lens' DescribePublishingDestinationResponse Integer
drsPublishingFailureStartTimestamp = lens _drsPublishingFailureStartTimestamp (\s a -> s {_drsPublishingFailureStartTimestamp = a})

-- | A @DestinationProperties@ object that includes the @DestinationArn@ and @KmsKeyArn@ of the publishing destination.
drsDestinationProperties :: Lens' DescribePublishingDestinationResponse DestinationProperties
drsDestinationProperties = lens _drsDestinationProperties (\s a -> s {_drsDestinationProperties = a})

instance NFData DescribePublishingDestinationResponse

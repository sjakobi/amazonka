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
-- Module      : Network.AWS.GuardDuty.CreatePublishingDestination
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates a publishing destination to export findings to. The resource to export findings to must exist before you use this operation.
module Network.AWS.GuardDuty.CreatePublishingDestination
  ( -- * Creating a Request
    createPublishingDestination,
    CreatePublishingDestination,

    -- * Request Lenses
    cpdClientToken,
    cpdDetectorId,
    cpdDestinationType,
    cpdDestinationProperties,

    -- * Destructuring the Response
    createPublishingDestinationResponse,
    CreatePublishingDestinationResponse,

    -- * Response Lenses
    cpdrrsResponseStatus,
    cpdrrsDestinationId,
  )
where

import Network.AWS.GuardDuty.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'createPublishingDestination' smart constructor.
data CreatePublishingDestination = CreatePublishingDestination'
  { _cpdClientToken ::
      !(Maybe Text),
    _cpdDetectorId ::
      !Text,
    _cpdDestinationType ::
      !DestinationType,
    _cpdDestinationProperties ::
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

-- | Creates a value of 'CreatePublishingDestination' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cpdClientToken' - The idempotency token for the request.
--
-- * 'cpdDetectorId' - The ID of the GuardDuty detector associated with the publishing destination.
--
-- * 'cpdDestinationType' - The type of resource for the publishing destination. Currently only Amazon S3 buckets are supported.
--
-- * 'cpdDestinationProperties' - The properties of the publishing destination, including the ARNs for the destination and the KMS key used for encryption.
createPublishingDestination ::
  -- | 'cpdDetectorId'
  Text ->
  -- | 'cpdDestinationType'
  DestinationType ->
  -- | 'cpdDestinationProperties'
  DestinationProperties ->
  CreatePublishingDestination
createPublishingDestination
  pDetectorId_
  pDestinationType_
  pDestinationProperties_ =
    CreatePublishingDestination'
      { _cpdClientToken =
          Nothing,
        _cpdDetectorId = pDetectorId_,
        _cpdDestinationType = pDestinationType_,
        _cpdDestinationProperties =
          pDestinationProperties_
      }

-- | The idempotency token for the request.
cpdClientToken :: Lens' CreatePublishingDestination (Maybe Text)
cpdClientToken = lens _cpdClientToken (\s a -> s {_cpdClientToken = a})

-- | The ID of the GuardDuty detector associated with the publishing destination.
cpdDetectorId :: Lens' CreatePublishingDestination Text
cpdDetectorId = lens _cpdDetectorId (\s a -> s {_cpdDetectorId = a})

-- | The type of resource for the publishing destination. Currently only Amazon S3 buckets are supported.
cpdDestinationType :: Lens' CreatePublishingDestination DestinationType
cpdDestinationType = lens _cpdDestinationType (\s a -> s {_cpdDestinationType = a})

-- | The properties of the publishing destination, including the ARNs for the destination and the KMS key used for encryption.
cpdDestinationProperties :: Lens' CreatePublishingDestination DestinationProperties
cpdDestinationProperties = lens _cpdDestinationProperties (\s a -> s {_cpdDestinationProperties = a})

instance AWSRequest CreatePublishingDestination where
  type
    Rs CreatePublishingDestination =
      CreatePublishingDestinationResponse
  request = postJSON guardDuty
  response =
    receiveJSON
      ( \s h x ->
          CreatePublishingDestinationResponse'
            <$> (pure (fromEnum s)) <*> (x .:> "destinationId")
      )

instance Hashable CreatePublishingDestination

instance NFData CreatePublishingDestination

instance ToHeaders CreatePublishingDestination where
  toHeaders =
    const
      ( mconcat
          [ "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON CreatePublishingDestination where
  toJSON CreatePublishingDestination' {..} =
    object
      ( catMaybes
          [ ("clientToken" .=) <$> _cpdClientToken,
            Just ("destinationType" .= _cpdDestinationType),
            Just
              ( "destinationProperties"
                  .= _cpdDestinationProperties
              )
          ]
      )

instance ToPath CreatePublishingDestination where
  toPath CreatePublishingDestination' {..} =
    mconcat
      [ "/detector/",
        toBS _cpdDetectorId,
        "/publishingDestination"
      ]

instance ToQuery CreatePublishingDestination where
  toQuery = const mempty

-- | /See:/ 'createPublishingDestinationResponse' smart constructor.
data CreatePublishingDestinationResponse = CreatePublishingDestinationResponse'
  { _cpdrrsResponseStatus ::
      !Int,
    _cpdrrsDestinationId ::
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

-- | Creates a value of 'CreatePublishingDestinationResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cpdrrsResponseStatus' - -- | The response status code.
--
-- * 'cpdrrsDestinationId' - The ID of the publishing destination that is created.
createPublishingDestinationResponse ::
  -- | 'cpdrrsResponseStatus'
  Int ->
  -- | 'cpdrrsDestinationId'
  Text ->
  CreatePublishingDestinationResponse
createPublishingDestinationResponse
  pResponseStatus_
  pDestinationId_ =
    CreatePublishingDestinationResponse'
      { _cpdrrsResponseStatus =
          pResponseStatus_,
        _cpdrrsDestinationId = pDestinationId_
      }

-- | -- | The response status code.
cpdrrsResponseStatus :: Lens' CreatePublishingDestinationResponse Int
cpdrrsResponseStatus = lens _cpdrrsResponseStatus (\s a -> s {_cpdrrsResponseStatus = a})

-- | The ID of the publishing destination that is created.
cpdrrsDestinationId :: Lens' CreatePublishingDestinationResponse Text
cpdrrsDestinationId = lens _cpdrrsDestinationId (\s a -> s {_cpdrrsDestinationId = a})

instance NFData CreatePublishingDestinationResponse

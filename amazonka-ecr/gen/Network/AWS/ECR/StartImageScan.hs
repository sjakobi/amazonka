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
-- Module      : Network.AWS.ECR.StartImageScan
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Starts an image vulnerability scan. An image scan can only be started once per day on an individual image. This limit includes if an image was scanned on initial push. For more information, see <https://docs.aws.amazon.com/AmazonECR/latest/userguide/image-scanning.html Image Scanning> in the /Amazon Elastic Container Registry User Guide/ .
module Network.AWS.ECR.StartImageScan
  ( -- * Creating a Request
    startImageScan,
    StartImageScan,

    -- * Request Lenses
    sisRegistryId,
    sisRepositoryName,
    sisImageId,

    -- * Destructuring the Response
    startImageScanResponse,
    StartImageScanResponse,

    -- * Response Lenses
    sisrrsImageScanStatus,
    sisrrsRegistryId,
    sisrrsRepositoryName,
    sisrrsImageId,
    sisrrsResponseStatus,
  )
where

import Network.AWS.ECR.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'startImageScan' smart constructor.
data StartImageScan = StartImageScan'
  { _sisRegistryId ::
      !(Maybe Text),
    _sisRepositoryName :: !Text,
    _sisImageId :: !ImageIdentifier
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'StartImageScan' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'sisRegistryId' - The AWS account ID associated with the registry that contains the repository in which to start an image scan request. If you do not specify a registry, the default registry is assumed.
--
-- * 'sisRepositoryName' - The name of the repository that contains the images to scan.
--
-- * 'sisImageId' - Undocumented member.
startImageScan ::
  -- | 'sisRepositoryName'
  Text ->
  -- | 'sisImageId'
  ImageIdentifier ->
  StartImageScan
startImageScan pRepositoryName_ pImageId_ =
  StartImageScan'
    { _sisRegistryId = Nothing,
      _sisRepositoryName = pRepositoryName_,
      _sisImageId = pImageId_
    }

-- | The AWS account ID associated with the registry that contains the repository in which to start an image scan request. If you do not specify a registry, the default registry is assumed.
sisRegistryId :: Lens' StartImageScan (Maybe Text)
sisRegistryId = lens _sisRegistryId (\s a -> s {_sisRegistryId = a})

-- | The name of the repository that contains the images to scan.
sisRepositoryName :: Lens' StartImageScan Text
sisRepositoryName = lens _sisRepositoryName (\s a -> s {_sisRepositoryName = a})

-- | Undocumented member.
sisImageId :: Lens' StartImageScan ImageIdentifier
sisImageId = lens _sisImageId (\s a -> s {_sisImageId = a})

instance AWSRequest StartImageScan where
  type Rs StartImageScan = StartImageScanResponse
  request = postJSON ecr
  response =
    receiveJSON
      ( \s h x ->
          StartImageScanResponse'
            <$> (x .?> "imageScanStatus")
            <*> (x .?> "registryId")
            <*> (x .?> "repositoryName")
            <*> (x .?> "imageId")
            <*> (pure (fromEnum s))
      )

instance Hashable StartImageScan

instance NFData StartImageScan

instance ToHeaders StartImageScan where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ( "AmazonEC2ContainerRegistry_V20150921.StartImageScan" ::
                     ByteString
                 ),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON StartImageScan where
  toJSON StartImageScan' {..} =
    object
      ( catMaybes
          [ ("registryId" .=) <$> _sisRegistryId,
            Just ("repositoryName" .= _sisRepositoryName),
            Just ("imageId" .= _sisImageId)
          ]
      )

instance ToPath StartImageScan where
  toPath = const "/"

instance ToQuery StartImageScan where
  toQuery = const mempty

-- | /See:/ 'startImageScanResponse' smart constructor.
data StartImageScanResponse = StartImageScanResponse'
  { _sisrrsImageScanStatus ::
      !(Maybe ImageScanStatus),
    _sisrrsRegistryId ::
      !(Maybe Text),
    _sisrrsRepositoryName ::
      !(Maybe Text),
    _sisrrsImageId ::
      !(Maybe ImageIdentifier),
    _sisrrsResponseStatus ::
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

-- | Creates a value of 'StartImageScanResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'sisrrsImageScanStatus' - The current state of the scan.
--
-- * 'sisrrsRegistryId' - The registry ID associated with the request.
--
-- * 'sisrrsRepositoryName' - The repository name associated with the request.
--
-- * 'sisrrsImageId' - Undocumented member.
--
-- * 'sisrrsResponseStatus' - -- | The response status code.
startImageScanResponse ::
  -- | 'sisrrsResponseStatus'
  Int ->
  StartImageScanResponse
startImageScanResponse pResponseStatus_ =
  StartImageScanResponse'
    { _sisrrsImageScanStatus =
        Nothing,
      _sisrrsRegistryId = Nothing,
      _sisrrsRepositoryName = Nothing,
      _sisrrsImageId = Nothing,
      _sisrrsResponseStatus = pResponseStatus_
    }

-- | The current state of the scan.
sisrrsImageScanStatus :: Lens' StartImageScanResponse (Maybe ImageScanStatus)
sisrrsImageScanStatus = lens _sisrrsImageScanStatus (\s a -> s {_sisrrsImageScanStatus = a})

-- | The registry ID associated with the request.
sisrrsRegistryId :: Lens' StartImageScanResponse (Maybe Text)
sisrrsRegistryId = lens _sisrrsRegistryId (\s a -> s {_sisrrsRegistryId = a})

-- | The repository name associated with the request.
sisrrsRepositoryName :: Lens' StartImageScanResponse (Maybe Text)
sisrrsRepositoryName = lens _sisrrsRepositoryName (\s a -> s {_sisrrsRepositoryName = a})

-- | Undocumented member.
sisrrsImageId :: Lens' StartImageScanResponse (Maybe ImageIdentifier)
sisrrsImageId = lens _sisrrsImageId (\s a -> s {_sisrrsImageId = a})

-- | -- | The response status code.
sisrrsResponseStatus :: Lens' StartImageScanResponse Int
sisrrsResponseStatus = lens _sisrrsResponseStatus (\s a -> s {_sisrrsResponseStatus = a})

instance NFData StartImageScanResponse

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
-- Module      : Network.AWS.EC2.ImportInstance
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates an import instance task using metadata from the specified disk image. @ImportInstance@ only supports single-volume VMs. To import multi-volume VMs, use 'ImportImage' . For more information, see <https://docs.aws.amazon.com/AWSEC2/latest/CommandLineReference/ec2-cli-vmimport-export.html Importing a Virtual Machine Using the Amazon EC2 CLI> .
--
--
-- For information about the import manifest referenced by this API action, see <https://docs.aws.amazon.com/AWSEC2/latest/APIReference/manifest.html VM Import Manifest> .
module Network.AWS.EC2.ImportInstance
  ( -- * Creating a Request
    importInstance,
    ImportInstance,

    -- * Request Lenses
    iiDiskImages,
    iiDryRun,
    iiDescription,
    iiLaunchSpecification,
    iiPlatform,

    -- * Destructuring the Response
    importInstanceResponse,
    ImportInstanceResponse,

    -- * Response Lenses
    iirrsConversionTask,
    iirrsResponseStatus,
  )
where

import Network.AWS.EC2.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'importInstance' smart constructor.
data ImportInstance = ImportInstance'
  { _iiDiskImages ::
      !(Maybe [DiskImage]),
    _iiDryRun :: !(Maybe Bool),
    _iiDescription :: !(Maybe Text),
    _iiLaunchSpecification ::
      !( Maybe
           ImportInstanceLaunchSpecification
       ),
    _iiPlatform :: !PlatformValues
  }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'ImportInstance' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'iiDiskImages' - The disk image.
--
-- * 'iiDryRun' - Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is @DryRunOperation@ . Otherwise, it is @UnauthorizedOperation@ .
--
-- * 'iiDescription' - A description for the instance being imported.
--
-- * 'iiLaunchSpecification' - The launch specification.
--
-- * 'iiPlatform' - The instance operating system.
importInstance ::
  -- | 'iiPlatform'
  PlatformValues ->
  ImportInstance
importInstance pPlatform_ =
  ImportInstance'
    { _iiDiskImages = Nothing,
      _iiDryRun = Nothing,
      _iiDescription = Nothing,
      _iiLaunchSpecification = Nothing,
      _iiPlatform = pPlatform_
    }

-- | The disk image.
iiDiskImages :: Lens' ImportInstance [DiskImage]
iiDiskImages = lens _iiDiskImages (\s a -> s {_iiDiskImages = a}) . _Default . _Coerce

-- | Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is @DryRunOperation@ . Otherwise, it is @UnauthorizedOperation@ .
iiDryRun :: Lens' ImportInstance (Maybe Bool)
iiDryRun = lens _iiDryRun (\s a -> s {_iiDryRun = a})

-- | A description for the instance being imported.
iiDescription :: Lens' ImportInstance (Maybe Text)
iiDescription = lens _iiDescription (\s a -> s {_iiDescription = a})

-- | The launch specification.
iiLaunchSpecification :: Lens' ImportInstance (Maybe ImportInstanceLaunchSpecification)
iiLaunchSpecification = lens _iiLaunchSpecification (\s a -> s {_iiLaunchSpecification = a})

-- | The instance operating system.
iiPlatform :: Lens' ImportInstance PlatformValues
iiPlatform = lens _iiPlatform (\s a -> s {_iiPlatform = a})

instance AWSRequest ImportInstance where
  type Rs ImportInstance = ImportInstanceResponse
  request = postQuery ec2
  response =
    receiveXML
      ( \s h x ->
          ImportInstanceResponse'
            <$> (x .@? "conversionTask") <*> (pure (fromEnum s))
      )

instance Hashable ImportInstance

instance NFData ImportInstance

instance ToHeaders ImportInstance where
  toHeaders = const mempty

instance ToPath ImportInstance where
  toPath = const "/"

instance ToQuery ImportInstance where
  toQuery ImportInstance' {..} =
    mconcat
      [ "Action" =: ("ImportInstance" :: ByteString),
        "Version" =: ("2016-11-15" :: ByteString),
        toQuery (toQueryList "DiskImage" <$> _iiDiskImages),
        "DryRun" =: _iiDryRun,
        "Description" =: _iiDescription,
        "LaunchSpecification" =: _iiLaunchSpecification,
        "Platform" =: _iiPlatform
      ]

-- | /See:/ 'importInstanceResponse' smart constructor.
data ImportInstanceResponse = ImportInstanceResponse'
  { _iirrsConversionTask ::
      !(Maybe ConversionTask),
    _iirrsResponseStatus ::
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

-- | Creates a value of 'ImportInstanceResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'iirrsConversionTask' - Information about the conversion task.
--
-- * 'iirrsResponseStatus' - -- | The response status code.
importInstanceResponse ::
  -- | 'iirrsResponseStatus'
  Int ->
  ImportInstanceResponse
importInstanceResponse pResponseStatus_ =
  ImportInstanceResponse'
    { _iirrsConversionTask =
        Nothing,
      _iirrsResponseStatus = pResponseStatus_
    }

-- | Information about the conversion task.
iirrsConversionTask :: Lens' ImportInstanceResponse (Maybe ConversionTask)
iirrsConversionTask = lens _iirrsConversionTask (\s a -> s {_iirrsConversionTask = a})

-- | -- | The response status code.
iirrsResponseStatus :: Lens' ImportInstanceResponse Int
iirrsResponseStatus = lens _iirrsResponseStatus (\s a -> s {_iirrsResponseStatus = a})

instance NFData ImportInstanceResponse

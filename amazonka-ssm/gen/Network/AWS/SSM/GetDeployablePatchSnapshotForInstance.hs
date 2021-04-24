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
-- Module      : Network.AWS.SSM.GetDeployablePatchSnapshotForInstance
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves the current snapshot for the patch baseline the instance uses. This API is primarily used by the AWS-RunPatchBaseline Systems Manager document.
module Network.AWS.SSM.GetDeployablePatchSnapshotForInstance
  ( -- * Creating a Request
    getDeployablePatchSnapshotForInstance,
    GetDeployablePatchSnapshotForInstance,

    -- * Request Lenses
    gdpsfiBaselineOverride,
    gdpsfiInstanceId,
    gdpsfiSnapshotId,

    -- * Destructuring the Response
    getDeployablePatchSnapshotForInstanceResponse,
    GetDeployablePatchSnapshotForInstanceResponse,

    -- * Response Lenses
    gdpsfirrsInstanceId,
    gdpsfirrsProduct,
    gdpsfirrsSnapshotDownloadURL,
    gdpsfirrsSnapshotId,
    gdpsfirrsResponseStatus,
  )
where

import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response
import Network.AWS.SSM.Types

-- | /See:/ 'getDeployablePatchSnapshotForInstance' smart constructor.
data GetDeployablePatchSnapshotForInstance = GetDeployablePatchSnapshotForInstance'
  { _gdpsfiBaselineOverride ::
      !( Maybe
           BaselineOverride
       ),
    _gdpsfiInstanceId ::
      !Text,
    _gdpsfiSnapshotId ::
      !Text
  }
  deriving
    ( Eq,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'GetDeployablePatchSnapshotForInstance' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gdpsfiBaselineOverride' - Defines the basic information about a patch baseline override.
--
-- * 'gdpsfiInstanceId' - The ID of the instance for which the appropriate patch snapshot should be retrieved.
--
-- * 'gdpsfiSnapshotId' - The user-defined snapshot ID.
getDeployablePatchSnapshotForInstance ::
  -- | 'gdpsfiInstanceId'
  Text ->
  -- | 'gdpsfiSnapshotId'
  Text ->
  GetDeployablePatchSnapshotForInstance
getDeployablePatchSnapshotForInstance
  pInstanceId_
  pSnapshotId_ =
    GetDeployablePatchSnapshotForInstance'
      { _gdpsfiBaselineOverride =
          Nothing,
        _gdpsfiInstanceId = pInstanceId_,
        _gdpsfiSnapshotId = pSnapshotId_
      }

-- | Defines the basic information about a patch baseline override.
gdpsfiBaselineOverride :: Lens' GetDeployablePatchSnapshotForInstance (Maybe BaselineOverride)
gdpsfiBaselineOverride = lens _gdpsfiBaselineOverride (\s a -> s {_gdpsfiBaselineOverride = a})

-- | The ID of the instance for which the appropriate patch snapshot should be retrieved.
gdpsfiInstanceId :: Lens' GetDeployablePatchSnapshotForInstance Text
gdpsfiInstanceId = lens _gdpsfiInstanceId (\s a -> s {_gdpsfiInstanceId = a})

-- | The user-defined snapshot ID.
gdpsfiSnapshotId :: Lens' GetDeployablePatchSnapshotForInstance Text
gdpsfiSnapshotId = lens _gdpsfiSnapshotId (\s a -> s {_gdpsfiSnapshotId = a})

instance
  AWSRequest
    GetDeployablePatchSnapshotForInstance
  where
  type
    Rs GetDeployablePatchSnapshotForInstance =
      GetDeployablePatchSnapshotForInstanceResponse
  request = postJSON ssm
  response =
    receiveJSON
      ( \s h x ->
          GetDeployablePatchSnapshotForInstanceResponse'
            <$> (x .?> "InstanceId")
            <*> (x .?> "Product")
            <*> (x .?> "SnapshotDownloadUrl")
            <*> (x .?> "SnapshotId")
            <*> (pure (fromEnum s))
      )

instance
  Hashable
    GetDeployablePatchSnapshotForInstance

instance NFData GetDeployablePatchSnapshotForInstance

instance
  ToHeaders
    GetDeployablePatchSnapshotForInstance
  where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ( "AmazonSSM.GetDeployablePatchSnapshotForInstance" ::
                     ByteString
                 ),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON GetDeployablePatchSnapshotForInstance where
  toJSON GetDeployablePatchSnapshotForInstance' {..} =
    object
      ( catMaybes
          [ ("BaselineOverride" .=) <$> _gdpsfiBaselineOverride,
            Just ("InstanceId" .= _gdpsfiInstanceId),
            Just ("SnapshotId" .= _gdpsfiSnapshotId)
          ]
      )

instance ToPath GetDeployablePatchSnapshotForInstance where
  toPath = const "/"

instance
  ToQuery
    GetDeployablePatchSnapshotForInstance
  where
  toQuery = const mempty

-- | /See:/ 'getDeployablePatchSnapshotForInstanceResponse' smart constructor.
data GetDeployablePatchSnapshotForInstanceResponse = GetDeployablePatchSnapshotForInstanceResponse'
  { _gdpsfirrsInstanceId ::
      !( Maybe
           Text
       ),
    _gdpsfirrsProduct ::
      !( Maybe
           Text
       ),
    _gdpsfirrsSnapshotDownloadURL ::
      !( Maybe
           Text
       ),
    _gdpsfirrsSnapshotId ::
      !( Maybe
           Text
       ),
    _gdpsfirrsResponseStatus ::
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

-- | Creates a value of 'GetDeployablePatchSnapshotForInstanceResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gdpsfirrsInstanceId' - The ID of the instance.
--
-- * 'gdpsfirrsProduct' - Returns the specific operating system (for example Windows Server 2012 or Amazon Linux 2015.09) on the instance for the specified patch snapshot.
--
-- * 'gdpsfirrsSnapshotDownloadURL' - A pre-signed Amazon S3 URL that can be used to download the patch snapshot.
--
-- * 'gdpsfirrsSnapshotId' - The user-defined snapshot ID.
--
-- * 'gdpsfirrsResponseStatus' - -- | The response status code.
getDeployablePatchSnapshotForInstanceResponse ::
  -- | 'gdpsfirrsResponseStatus'
  Int ->
  GetDeployablePatchSnapshotForInstanceResponse
getDeployablePatchSnapshotForInstanceResponse
  pResponseStatus_ =
    GetDeployablePatchSnapshotForInstanceResponse'
      { _gdpsfirrsInstanceId =
          Nothing,
        _gdpsfirrsProduct = Nothing,
        _gdpsfirrsSnapshotDownloadURL =
          Nothing,
        _gdpsfirrsSnapshotId =
          Nothing,
        _gdpsfirrsResponseStatus =
          pResponseStatus_
      }

-- | The ID of the instance.
gdpsfirrsInstanceId :: Lens' GetDeployablePatchSnapshotForInstanceResponse (Maybe Text)
gdpsfirrsInstanceId = lens _gdpsfirrsInstanceId (\s a -> s {_gdpsfirrsInstanceId = a})

-- | Returns the specific operating system (for example Windows Server 2012 or Amazon Linux 2015.09) on the instance for the specified patch snapshot.
gdpsfirrsProduct :: Lens' GetDeployablePatchSnapshotForInstanceResponse (Maybe Text)
gdpsfirrsProduct = lens _gdpsfirrsProduct (\s a -> s {_gdpsfirrsProduct = a})

-- | A pre-signed Amazon S3 URL that can be used to download the patch snapshot.
gdpsfirrsSnapshotDownloadURL :: Lens' GetDeployablePatchSnapshotForInstanceResponse (Maybe Text)
gdpsfirrsSnapshotDownloadURL = lens _gdpsfirrsSnapshotDownloadURL (\s a -> s {_gdpsfirrsSnapshotDownloadURL = a})

-- | The user-defined snapshot ID.
gdpsfirrsSnapshotId :: Lens' GetDeployablePatchSnapshotForInstanceResponse (Maybe Text)
gdpsfirrsSnapshotId = lens _gdpsfirrsSnapshotId (\s a -> s {_gdpsfirrsSnapshotId = a})

-- | -- | The response status code.
gdpsfirrsResponseStatus :: Lens' GetDeployablePatchSnapshotForInstanceResponse Int
gdpsfirrsResponseStatus = lens _gdpsfirrsResponseStatus (\s a -> s {_gdpsfirrsResponseStatus = a})

instance
  NFData
    GetDeployablePatchSnapshotForInstanceResponse

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
-- Module      : Network.AWS.Greengrass.GetDeviceDefinitionVersion
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves information about a device definition version.
module Network.AWS.Greengrass.GetDeviceDefinitionVersion
  ( -- * Creating a Request
    getDeviceDefinitionVersion,
    GetDeviceDefinitionVersion,

    -- * Request Lenses
    gddvNextToken,
    gddvDeviceDefinitionVersionId,
    gddvDeviceDefinitionId,

    -- * Destructuring the Response
    getDeviceDefinitionVersionResponse,
    GetDeviceDefinitionVersionResponse,

    -- * Response Lenses
    gddvrrsCreationTimestamp,
    gddvrrsNextToken,
    gddvrrsARN,
    gddvrrsId,
    gddvrrsVersion,
    gddvrrsDefinition,
    gddvrrsResponseStatus,
  )
where

import Network.AWS.Greengrass.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'getDeviceDefinitionVersion' smart constructor.
data GetDeviceDefinitionVersion = GetDeviceDefinitionVersion'
  { _gddvNextToken ::
      !(Maybe Text),
    _gddvDeviceDefinitionVersionId ::
      !Text,
    _gddvDeviceDefinitionId ::
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

-- | Creates a value of 'GetDeviceDefinitionVersion' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gddvNextToken' - The token for the next set of results, or ''null'' if there are no additional results.
--
-- * 'gddvDeviceDefinitionVersionId' - The ID of the device definition version. This value maps to the ''Version'' property of the corresponding ''VersionInformation'' object, which is returned by ''ListDeviceDefinitionVersions'' requests. If the version is the last one that was associated with a device definition, the value also maps to the ''LatestVersion'' property of the corresponding ''DefinitionInformation'' object.
--
-- * 'gddvDeviceDefinitionId' - The ID of the device definition.
getDeviceDefinitionVersion ::
  -- | 'gddvDeviceDefinitionVersionId'
  Text ->
  -- | 'gddvDeviceDefinitionId'
  Text ->
  GetDeviceDefinitionVersion
getDeviceDefinitionVersion
  pDeviceDefinitionVersionId_
  pDeviceDefinitionId_ =
    GetDeviceDefinitionVersion'
      { _gddvNextToken =
          Nothing,
        _gddvDeviceDefinitionVersionId =
          pDeviceDefinitionVersionId_,
        _gddvDeviceDefinitionId = pDeviceDefinitionId_
      }

-- | The token for the next set of results, or ''null'' if there are no additional results.
gddvNextToken :: Lens' GetDeviceDefinitionVersion (Maybe Text)
gddvNextToken = lens _gddvNextToken (\s a -> s {_gddvNextToken = a})

-- | The ID of the device definition version. This value maps to the ''Version'' property of the corresponding ''VersionInformation'' object, which is returned by ''ListDeviceDefinitionVersions'' requests. If the version is the last one that was associated with a device definition, the value also maps to the ''LatestVersion'' property of the corresponding ''DefinitionInformation'' object.
gddvDeviceDefinitionVersionId :: Lens' GetDeviceDefinitionVersion Text
gddvDeviceDefinitionVersionId = lens _gddvDeviceDefinitionVersionId (\s a -> s {_gddvDeviceDefinitionVersionId = a})

-- | The ID of the device definition.
gddvDeviceDefinitionId :: Lens' GetDeviceDefinitionVersion Text
gddvDeviceDefinitionId = lens _gddvDeviceDefinitionId (\s a -> s {_gddvDeviceDefinitionId = a})

instance AWSRequest GetDeviceDefinitionVersion where
  type
    Rs GetDeviceDefinitionVersion =
      GetDeviceDefinitionVersionResponse
  request = get greengrass
  response =
    receiveJSON
      ( \s h x ->
          GetDeviceDefinitionVersionResponse'
            <$> (x .?> "CreationTimestamp")
            <*> (x .?> "NextToken")
            <*> (x .?> "Arn")
            <*> (x .?> "Id")
            <*> (x .?> "Version")
            <*> (x .?> "Definition")
            <*> (pure (fromEnum s))
      )

instance Hashable GetDeviceDefinitionVersion

instance NFData GetDeviceDefinitionVersion

instance ToHeaders GetDeviceDefinitionVersion where
  toHeaders =
    const
      ( mconcat
          [ "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToPath GetDeviceDefinitionVersion where
  toPath GetDeviceDefinitionVersion' {..} =
    mconcat
      [ "/greengrass/definition/devices/",
        toBS _gddvDeviceDefinitionId,
        "/versions/",
        toBS _gddvDeviceDefinitionVersionId
      ]

instance ToQuery GetDeviceDefinitionVersion where
  toQuery GetDeviceDefinitionVersion' {..} =
    mconcat ["NextToken" =: _gddvNextToken]

-- | /See:/ 'getDeviceDefinitionVersionResponse' smart constructor.
data GetDeviceDefinitionVersionResponse = GetDeviceDefinitionVersionResponse'
  { _gddvrrsCreationTimestamp ::
      !( Maybe
           Text
       ),
    _gddvrrsNextToken ::
      !( Maybe
           Text
       ),
    _gddvrrsARN ::
      !( Maybe
           Text
       ),
    _gddvrrsId ::
      !( Maybe
           Text
       ),
    _gddvrrsVersion ::
      !( Maybe
           Text
       ),
    _gddvrrsDefinition ::
      !( Maybe
           DeviceDefinitionVersion
       ),
    _gddvrrsResponseStatus ::
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

-- | Creates a value of 'GetDeviceDefinitionVersionResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gddvrrsCreationTimestamp' - The time, in milliseconds since the epoch, when the device definition version was created.
--
-- * 'gddvrrsNextToken' - The token for the next set of results, or ''null'' if there are no additional results.
--
-- * 'gddvrrsARN' - The ARN of the device definition version.
--
-- * 'gddvrrsId' - The ID of the device definition version.
--
-- * 'gddvrrsVersion' - The version of the device definition version.
--
-- * 'gddvrrsDefinition' - Information about the device definition version.
--
-- * 'gddvrrsResponseStatus' - -- | The response status code.
getDeviceDefinitionVersionResponse ::
  -- | 'gddvrrsResponseStatus'
  Int ->
  GetDeviceDefinitionVersionResponse
getDeviceDefinitionVersionResponse pResponseStatus_ =
  GetDeviceDefinitionVersionResponse'
    { _gddvrrsCreationTimestamp =
        Nothing,
      _gddvrrsNextToken = Nothing,
      _gddvrrsARN = Nothing,
      _gddvrrsId = Nothing,
      _gddvrrsVersion = Nothing,
      _gddvrrsDefinition = Nothing,
      _gddvrrsResponseStatus =
        pResponseStatus_
    }

-- | The time, in milliseconds since the epoch, when the device definition version was created.
gddvrrsCreationTimestamp :: Lens' GetDeviceDefinitionVersionResponse (Maybe Text)
gddvrrsCreationTimestamp = lens _gddvrrsCreationTimestamp (\s a -> s {_gddvrrsCreationTimestamp = a})

-- | The token for the next set of results, or ''null'' if there are no additional results.
gddvrrsNextToken :: Lens' GetDeviceDefinitionVersionResponse (Maybe Text)
gddvrrsNextToken = lens _gddvrrsNextToken (\s a -> s {_gddvrrsNextToken = a})

-- | The ARN of the device definition version.
gddvrrsARN :: Lens' GetDeviceDefinitionVersionResponse (Maybe Text)
gddvrrsARN = lens _gddvrrsARN (\s a -> s {_gddvrrsARN = a})

-- | The ID of the device definition version.
gddvrrsId :: Lens' GetDeviceDefinitionVersionResponse (Maybe Text)
gddvrrsId = lens _gddvrrsId (\s a -> s {_gddvrrsId = a})

-- | The version of the device definition version.
gddvrrsVersion :: Lens' GetDeviceDefinitionVersionResponse (Maybe Text)
gddvrrsVersion = lens _gddvrrsVersion (\s a -> s {_gddvrrsVersion = a})

-- | Information about the device definition version.
gddvrrsDefinition :: Lens' GetDeviceDefinitionVersionResponse (Maybe DeviceDefinitionVersion)
gddvrrsDefinition = lens _gddvrrsDefinition (\s a -> s {_gddvrrsDefinition = a})

-- | -- | The response status code.
gddvrrsResponseStatus :: Lens' GetDeviceDefinitionVersionResponse Int
gddvrrsResponseStatus = lens _gddvrrsResponseStatus (\s a -> s {_gddvrrsResponseStatus = a})

instance NFData GetDeviceDefinitionVersionResponse

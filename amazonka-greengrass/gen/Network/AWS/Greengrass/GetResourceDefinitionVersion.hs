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
-- Module      : Network.AWS.Greengrass.GetResourceDefinitionVersion
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves information about a resource definition version, including which resources are included in the version.
module Network.AWS.Greengrass.GetResourceDefinitionVersion
  ( -- * Creating a Request
    getResourceDefinitionVersion,
    GetResourceDefinitionVersion,

    -- * Request Lenses
    grdvResourceDefinitionVersionId,
    grdvResourceDefinitionId,

    -- * Destructuring the Response
    getResourceDefinitionVersionResponse,
    GetResourceDefinitionVersionResponse,

    -- * Response Lenses
    grdvrrsCreationTimestamp,
    grdvrrsARN,
    grdvrrsId,
    grdvrrsVersion,
    grdvrrsDefinition,
    grdvrrsResponseStatus,
  )
where

import Network.AWS.Greengrass.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'getResourceDefinitionVersion' smart constructor.
data GetResourceDefinitionVersion = GetResourceDefinitionVersion'
  { _grdvResourceDefinitionVersionId ::
      !Text,
    _grdvResourceDefinitionId ::
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

-- | Creates a value of 'GetResourceDefinitionVersion' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'grdvResourceDefinitionVersionId' - The ID of the resource definition version. This value maps to the ''Version'' property of the corresponding ''VersionInformation'' object, which is returned by ''ListResourceDefinitionVersions'' requests. If the version is the last one that was associated with a resource definition, the value also maps to the ''LatestVersion'' property of the corresponding ''DefinitionInformation'' object.
--
-- * 'grdvResourceDefinitionId' - The ID of the resource definition.
getResourceDefinitionVersion ::
  -- | 'grdvResourceDefinitionVersionId'
  Text ->
  -- | 'grdvResourceDefinitionId'
  Text ->
  GetResourceDefinitionVersion
getResourceDefinitionVersion
  pResourceDefinitionVersionId_
  pResourceDefinitionId_ =
    GetResourceDefinitionVersion'
      { _grdvResourceDefinitionVersionId =
          pResourceDefinitionVersionId_,
        _grdvResourceDefinitionId =
          pResourceDefinitionId_
      }

-- | The ID of the resource definition version. This value maps to the ''Version'' property of the corresponding ''VersionInformation'' object, which is returned by ''ListResourceDefinitionVersions'' requests. If the version is the last one that was associated with a resource definition, the value also maps to the ''LatestVersion'' property of the corresponding ''DefinitionInformation'' object.
grdvResourceDefinitionVersionId :: Lens' GetResourceDefinitionVersion Text
grdvResourceDefinitionVersionId = lens _grdvResourceDefinitionVersionId (\s a -> s {_grdvResourceDefinitionVersionId = a})

-- | The ID of the resource definition.
grdvResourceDefinitionId :: Lens' GetResourceDefinitionVersion Text
grdvResourceDefinitionId = lens _grdvResourceDefinitionId (\s a -> s {_grdvResourceDefinitionId = a})

instance AWSRequest GetResourceDefinitionVersion where
  type
    Rs GetResourceDefinitionVersion =
      GetResourceDefinitionVersionResponse
  request = get greengrass
  response =
    receiveJSON
      ( \s h x ->
          GetResourceDefinitionVersionResponse'
            <$> (x .?> "CreationTimestamp")
            <*> (x .?> "Arn")
            <*> (x .?> "Id")
            <*> (x .?> "Version")
            <*> (x .?> "Definition")
            <*> (pure (fromEnum s))
      )

instance Hashable GetResourceDefinitionVersion

instance NFData GetResourceDefinitionVersion

instance ToHeaders GetResourceDefinitionVersion where
  toHeaders =
    const
      ( mconcat
          [ "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToPath GetResourceDefinitionVersion where
  toPath GetResourceDefinitionVersion' {..} =
    mconcat
      [ "/greengrass/definition/resources/",
        toBS _grdvResourceDefinitionId,
        "/versions/",
        toBS _grdvResourceDefinitionVersionId
      ]

instance ToQuery GetResourceDefinitionVersion where
  toQuery = const mempty

-- | /See:/ 'getResourceDefinitionVersionResponse' smart constructor.
data GetResourceDefinitionVersionResponse = GetResourceDefinitionVersionResponse'
  { _grdvrrsCreationTimestamp ::
      !( Maybe
           Text
       ),
    _grdvrrsARN ::
      !( Maybe
           Text
       ),
    _grdvrrsId ::
      !( Maybe
           Text
       ),
    _grdvrrsVersion ::
      !( Maybe
           Text
       ),
    _grdvrrsDefinition ::
      !( Maybe
           ResourceDefinitionVersion
       ),
    _grdvrrsResponseStatus ::
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

-- | Creates a value of 'GetResourceDefinitionVersionResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'grdvrrsCreationTimestamp' - The time, in milliseconds since the epoch, when the resource definition version was created.
--
-- * 'grdvrrsARN' - Arn of the resource definition version.
--
-- * 'grdvrrsId' - The ID of the resource definition version.
--
-- * 'grdvrrsVersion' - The version of the resource definition version.
--
-- * 'grdvrrsDefinition' - Information about the definition.
--
-- * 'grdvrrsResponseStatus' - -- | The response status code.
getResourceDefinitionVersionResponse ::
  -- | 'grdvrrsResponseStatus'
  Int ->
  GetResourceDefinitionVersionResponse
getResourceDefinitionVersionResponse pResponseStatus_ =
  GetResourceDefinitionVersionResponse'
    { _grdvrrsCreationTimestamp =
        Nothing,
      _grdvrrsARN = Nothing,
      _grdvrrsId = Nothing,
      _grdvrrsVersion = Nothing,
      _grdvrrsDefinition = Nothing,
      _grdvrrsResponseStatus =
        pResponseStatus_
    }

-- | The time, in milliseconds since the epoch, when the resource definition version was created.
grdvrrsCreationTimestamp :: Lens' GetResourceDefinitionVersionResponse (Maybe Text)
grdvrrsCreationTimestamp = lens _grdvrrsCreationTimestamp (\s a -> s {_grdvrrsCreationTimestamp = a})

-- | Arn of the resource definition version.
grdvrrsARN :: Lens' GetResourceDefinitionVersionResponse (Maybe Text)
grdvrrsARN = lens _grdvrrsARN (\s a -> s {_grdvrrsARN = a})

-- | The ID of the resource definition version.
grdvrrsId :: Lens' GetResourceDefinitionVersionResponse (Maybe Text)
grdvrrsId = lens _grdvrrsId (\s a -> s {_grdvrrsId = a})

-- | The version of the resource definition version.
grdvrrsVersion :: Lens' GetResourceDefinitionVersionResponse (Maybe Text)
grdvrrsVersion = lens _grdvrrsVersion (\s a -> s {_grdvrrsVersion = a})

-- | Information about the definition.
grdvrrsDefinition :: Lens' GetResourceDefinitionVersionResponse (Maybe ResourceDefinitionVersion)
grdvrrsDefinition = lens _grdvrrsDefinition (\s a -> s {_grdvrrsDefinition = a})

-- | -- | The response status code.
grdvrrsResponseStatus :: Lens' GetResourceDefinitionVersionResponse Int
grdvrrsResponseStatus = lens _grdvrrsResponseStatus (\s a -> s {_grdvrrsResponseStatus = a})

instance NFData GetResourceDefinitionVersionResponse

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
-- Module      : Network.AWS.Greengrass.GetConnectorDefinitionVersion
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves information about a connector definition version, including the connectors that the version contains. Connectors are prebuilt modules that interact with local infrastructure, device protocols, AWS, and other cloud services.
module Network.AWS.Greengrass.GetConnectorDefinitionVersion
  ( -- * Creating a Request
    getConnectorDefinitionVersion,
    GetConnectorDefinitionVersion,

    -- * Request Lenses
    gcdvNextToken,
    gcdvConnectorDefinitionId,
    gcdvConnectorDefinitionVersionId,

    -- * Destructuring the Response
    getConnectorDefinitionVersionResponse,
    GetConnectorDefinitionVersionResponse,

    -- * Response Lenses
    gcdvrrsCreationTimestamp,
    gcdvrrsNextToken,
    gcdvrrsARN,
    gcdvrrsId,
    gcdvrrsVersion,
    gcdvrrsDefinition,
    gcdvrrsResponseStatus,
  )
where

import Network.AWS.Greengrass.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'getConnectorDefinitionVersion' smart constructor.
data GetConnectorDefinitionVersion = GetConnectorDefinitionVersion'
  { _gcdvNextToken ::
      !( Maybe
           Text
       ),
    _gcdvConnectorDefinitionId ::
      !Text,
    _gcdvConnectorDefinitionVersionId ::
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

-- | Creates a value of 'GetConnectorDefinitionVersion' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gcdvNextToken' - The token for the next set of results, or ''null'' if there are no additional results.
--
-- * 'gcdvConnectorDefinitionId' - The ID of the connector definition.
--
-- * 'gcdvConnectorDefinitionVersionId' - The ID of the connector definition version. This value maps to the ''Version'' property of the corresponding ''VersionInformation'' object, which is returned by ''ListConnectorDefinitionVersions'' requests. If the version is the last one that was associated with a connector definition, the value also maps to the ''LatestVersion'' property of the corresponding ''DefinitionInformation'' object.
getConnectorDefinitionVersion ::
  -- | 'gcdvConnectorDefinitionId'
  Text ->
  -- | 'gcdvConnectorDefinitionVersionId'
  Text ->
  GetConnectorDefinitionVersion
getConnectorDefinitionVersion
  pConnectorDefinitionId_
  pConnectorDefinitionVersionId_ =
    GetConnectorDefinitionVersion'
      { _gcdvNextToken =
          Nothing,
        _gcdvConnectorDefinitionId =
          pConnectorDefinitionId_,
        _gcdvConnectorDefinitionVersionId =
          pConnectorDefinitionVersionId_
      }

-- | The token for the next set of results, or ''null'' if there are no additional results.
gcdvNextToken :: Lens' GetConnectorDefinitionVersion (Maybe Text)
gcdvNextToken = lens _gcdvNextToken (\s a -> s {_gcdvNextToken = a})

-- | The ID of the connector definition.
gcdvConnectorDefinitionId :: Lens' GetConnectorDefinitionVersion Text
gcdvConnectorDefinitionId = lens _gcdvConnectorDefinitionId (\s a -> s {_gcdvConnectorDefinitionId = a})

-- | The ID of the connector definition version. This value maps to the ''Version'' property of the corresponding ''VersionInformation'' object, which is returned by ''ListConnectorDefinitionVersions'' requests. If the version is the last one that was associated with a connector definition, the value also maps to the ''LatestVersion'' property of the corresponding ''DefinitionInformation'' object.
gcdvConnectorDefinitionVersionId :: Lens' GetConnectorDefinitionVersion Text
gcdvConnectorDefinitionVersionId = lens _gcdvConnectorDefinitionVersionId (\s a -> s {_gcdvConnectorDefinitionVersionId = a})

instance AWSRequest GetConnectorDefinitionVersion where
  type
    Rs GetConnectorDefinitionVersion =
      GetConnectorDefinitionVersionResponse
  request = get greengrass
  response =
    receiveJSON
      ( \s h x ->
          GetConnectorDefinitionVersionResponse'
            <$> (x .?> "CreationTimestamp")
            <*> (x .?> "NextToken")
            <*> (x .?> "Arn")
            <*> (x .?> "Id")
            <*> (x .?> "Version")
            <*> (x .?> "Definition")
            <*> (pure (fromEnum s))
      )

instance Hashable GetConnectorDefinitionVersion

instance NFData GetConnectorDefinitionVersion

instance ToHeaders GetConnectorDefinitionVersion where
  toHeaders =
    const
      ( mconcat
          [ "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToPath GetConnectorDefinitionVersion where
  toPath GetConnectorDefinitionVersion' {..} =
    mconcat
      [ "/greengrass/definition/connectors/",
        toBS _gcdvConnectorDefinitionId,
        "/versions/",
        toBS _gcdvConnectorDefinitionVersionId
      ]

instance ToQuery GetConnectorDefinitionVersion where
  toQuery GetConnectorDefinitionVersion' {..} =
    mconcat ["NextToken" =: _gcdvNextToken]

-- | /See:/ 'getConnectorDefinitionVersionResponse' smart constructor.
data GetConnectorDefinitionVersionResponse = GetConnectorDefinitionVersionResponse'
  { _gcdvrrsCreationTimestamp ::
      !( Maybe
           Text
       ),
    _gcdvrrsNextToken ::
      !( Maybe
           Text
       ),
    _gcdvrrsARN ::
      !( Maybe
           Text
       ),
    _gcdvrrsId ::
      !( Maybe
           Text
       ),
    _gcdvrrsVersion ::
      !( Maybe
           Text
       ),
    _gcdvrrsDefinition ::
      !( Maybe
           ConnectorDefinitionVersion
       ),
    _gcdvrrsResponseStatus ::
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

-- | Creates a value of 'GetConnectorDefinitionVersionResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gcdvrrsCreationTimestamp' - The time, in milliseconds since the epoch, when the connector definition version was created.
--
-- * 'gcdvrrsNextToken' - The token for the next set of results, or ''null'' if there are no additional results.
--
-- * 'gcdvrrsARN' - The ARN of the connector definition version.
--
-- * 'gcdvrrsId' - The ID of the connector definition version.
--
-- * 'gcdvrrsVersion' - The version of the connector definition version.
--
-- * 'gcdvrrsDefinition' - Information about the connector definition version.
--
-- * 'gcdvrrsResponseStatus' - -- | The response status code.
getConnectorDefinitionVersionResponse ::
  -- | 'gcdvrrsResponseStatus'
  Int ->
  GetConnectorDefinitionVersionResponse
getConnectorDefinitionVersionResponse
  pResponseStatus_ =
    GetConnectorDefinitionVersionResponse'
      { _gcdvrrsCreationTimestamp =
          Nothing,
        _gcdvrrsNextToken = Nothing,
        _gcdvrrsARN = Nothing,
        _gcdvrrsId = Nothing,
        _gcdvrrsVersion = Nothing,
        _gcdvrrsDefinition = Nothing,
        _gcdvrrsResponseStatus =
          pResponseStatus_
      }

-- | The time, in milliseconds since the epoch, when the connector definition version was created.
gcdvrrsCreationTimestamp :: Lens' GetConnectorDefinitionVersionResponse (Maybe Text)
gcdvrrsCreationTimestamp = lens _gcdvrrsCreationTimestamp (\s a -> s {_gcdvrrsCreationTimestamp = a})

-- | The token for the next set of results, or ''null'' if there are no additional results.
gcdvrrsNextToken :: Lens' GetConnectorDefinitionVersionResponse (Maybe Text)
gcdvrrsNextToken = lens _gcdvrrsNextToken (\s a -> s {_gcdvrrsNextToken = a})

-- | The ARN of the connector definition version.
gcdvrrsARN :: Lens' GetConnectorDefinitionVersionResponse (Maybe Text)
gcdvrrsARN = lens _gcdvrrsARN (\s a -> s {_gcdvrrsARN = a})

-- | The ID of the connector definition version.
gcdvrrsId :: Lens' GetConnectorDefinitionVersionResponse (Maybe Text)
gcdvrrsId = lens _gcdvrrsId (\s a -> s {_gcdvrrsId = a})

-- | The version of the connector definition version.
gcdvrrsVersion :: Lens' GetConnectorDefinitionVersionResponse (Maybe Text)
gcdvrrsVersion = lens _gcdvrrsVersion (\s a -> s {_gcdvrrsVersion = a})

-- | Information about the connector definition version.
gcdvrrsDefinition :: Lens' GetConnectorDefinitionVersionResponse (Maybe ConnectorDefinitionVersion)
gcdvrrsDefinition = lens _gcdvrrsDefinition (\s a -> s {_gcdvrrsDefinition = a})

-- | -- | The response status code.
gcdvrrsResponseStatus :: Lens' GetConnectorDefinitionVersionResponse Int
gcdvrrsResponseStatus = lens _gcdvrrsResponseStatus (\s a -> s {_gcdvrrsResponseStatus = a})

instance NFData GetConnectorDefinitionVersionResponse

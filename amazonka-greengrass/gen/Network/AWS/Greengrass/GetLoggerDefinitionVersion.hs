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
-- Module      : Network.AWS.Greengrass.GetLoggerDefinitionVersion
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves information about a logger definition version.
module Network.AWS.Greengrass.GetLoggerDefinitionVersion
  ( -- * Creating a Request
    getLoggerDefinitionVersion,
    GetLoggerDefinitionVersion,

    -- * Request Lenses
    gldvNextToken,
    gldvLoggerDefinitionVersionId,
    gldvLoggerDefinitionId,

    -- * Destructuring the Response
    getLoggerDefinitionVersionResponse,
    GetLoggerDefinitionVersionResponse,

    -- * Response Lenses
    gldvrrsCreationTimestamp,
    gldvrrsARN,
    gldvrrsId,
    gldvrrsVersion,
    gldvrrsDefinition,
    gldvrrsResponseStatus,
  )
where

import Network.AWS.Greengrass.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'getLoggerDefinitionVersion' smart constructor.
data GetLoggerDefinitionVersion = GetLoggerDefinitionVersion'
  { _gldvNextToken ::
      !(Maybe Text),
    _gldvLoggerDefinitionVersionId ::
      !Text,
    _gldvLoggerDefinitionId ::
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

-- | Creates a value of 'GetLoggerDefinitionVersion' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gldvNextToken' - The token for the next set of results, or ''null'' if there are no additional results.
--
-- * 'gldvLoggerDefinitionVersionId' - The ID of the logger definition version. This value maps to the ''Version'' property of the corresponding ''VersionInformation'' object, which is returned by ''ListLoggerDefinitionVersions'' requests. If the version is the last one that was associated with a logger definition, the value also maps to the ''LatestVersion'' property of the corresponding ''DefinitionInformation'' object.
--
-- * 'gldvLoggerDefinitionId' - The ID of the logger definition.
getLoggerDefinitionVersion ::
  -- | 'gldvLoggerDefinitionVersionId'
  Text ->
  -- | 'gldvLoggerDefinitionId'
  Text ->
  GetLoggerDefinitionVersion
getLoggerDefinitionVersion
  pLoggerDefinitionVersionId_
  pLoggerDefinitionId_ =
    GetLoggerDefinitionVersion'
      { _gldvNextToken =
          Nothing,
        _gldvLoggerDefinitionVersionId =
          pLoggerDefinitionVersionId_,
        _gldvLoggerDefinitionId = pLoggerDefinitionId_
      }

-- | The token for the next set of results, or ''null'' if there are no additional results.
gldvNextToken :: Lens' GetLoggerDefinitionVersion (Maybe Text)
gldvNextToken = lens _gldvNextToken (\s a -> s {_gldvNextToken = a})

-- | The ID of the logger definition version. This value maps to the ''Version'' property of the corresponding ''VersionInformation'' object, which is returned by ''ListLoggerDefinitionVersions'' requests. If the version is the last one that was associated with a logger definition, the value also maps to the ''LatestVersion'' property of the corresponding ''DefinitionInformation'' object.
gldvLoggerDefinitionVersionId :: Lens' GetLoggerDefinitionVersion Text
gldvLoggerDefinitionVersionId = lens _gldvLoggerDefinitionVersionId (\s a -> s {_gldvLoggerDefinitionVersionId = a})

-- | The ID of the logger definition.
gldvLoggerDefinitionId :: Lens' GetLoggerDefinitionVersion Text
gldvLoggerDefinitionId = lens _gldvLoggerDefinitionId (\s a -> s {_gldvLoggerDefinitionId = a})

instance AWSRequest GetLoggerDefinitionVersion where
  type
    Rs GetLoggerDefinitionVersion =
      GetLoggerDefinitionVersionResponse
  request = get greengrass
  response =
    receiveJSON
      ( \s h x ->
          GetLoggerDefinitionVersionResponse'
            <$> (x .?> "CreationTimestamp")
            <*> (x .?> "Arn")
            <*> (x .?> "Id")
            <*> (x .?> "Version")
            <*> (x .?> "Definition")
            <*> (pure (fromEnum s))
      )

instance Hashable GetLoggerDefinitionVersion

instance NFData GetLoggerDefinitionVersion

instance ToHeaders GetLoggerDefinitionVersion where
  toHeaders =
    const
      ( mconcat
          [ "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToPath GetLoggerDefinitionVersion where
  toPath GetLoggerDefinitionVersion' {..} =
    mconcat
      [ "/greengrass/definition/loggers/",
        toBS _gldvLoggerDefinitionId,
        "/versions/",
        toBS _gldvLoggerDefinitionVersionId
      ]

instance ToQuery GetLoggerDefinitionVersion where
  toQuery GetLoggerDefinitionVersion' {..} =
    mconcat ["NextToken" =: _gldvNextToken]

-- | /See:/ 'getLoggerDefinitionVersionResponse' smart constructor.
data GetLoggerDefinitionVersionResponse = GetLoggerDefinitionVersionResponse'
  { _gldvrrsCreationTimestamp ::
      !( Maybe
           Text
       ),
    _gldvrrsARN ::
      !( Maybe
           Text
       ),
    _gldvrrsId ::
      !( Maybe
           Text
       ),
    _gldvrrsVersion ::
      !( Maybe
           Text
       ),
    _gldvrrsDefinition ::
      !( Maybe
           LoggerDefinitionVersion
       ),
    _gldvrrsResponseStatus ::
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

-- | Creates a value of 'GetLoggerDefinitionVersionResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gldvrrsCreationTimestamp' - The time, in milliseconds since the epoch, when the logger definition version was created.
--
-- * 'gldvrrsARN' - The ARN of the logger definition version.
--
-- * 'gldvrrsId' - The ID of the logger definition version.
--
-- * 'gldvrrsVersion' - The version of the logger definition version.
--
-- * 'gldvrrsDefinition' - Information about the logger definition version.
--
-- * 'gldvrrsResponseStatus' - -- | The response status code.
getLoggerDefinitionVersionResponse ::
  -- | 'gldvrrsResponseStatus'
  Int ->
  GetLoggerDefinitionVersionResponse
getLoggerDefinitionVersionResponse pResponseStatus_ =
  GetLoggerDefinitionVersionResponse'
    { _gldvrrsCreationTimestamp =
        Nothing,
      _gldvrrsARN = Nothing,
      _gldvrrsId = Nothing,
      _gldvrrsVersion = Nothing,
      _gldvrrsDefinition = Nothing,
      _gldvrrsResponseStatus =
        pResponseStatus_
    }

-- | The time, in milliseconds since the epoch, when the logger definition version was created.
gldvrrsCreationTimestamp :: Lens' GetLoggerDefinitionVersionResponse (Maybe Text)
gldvrrsCreationTimestamp = lens _gldvrrsCreationTimestamp (\s a -> s {_gldvrrsCreationTimestamp = a})

-- | The ARN of the logger definition version.
gldvrrsARN :: Lens' GetLoggerDefinitionVersionResponse (Maybe Text)
gldvrrsARN = lens _gldvrrsARN (\s a -> s {_gldvrrsARN = a})

-- | The ID of the logger definition version.
gldvrrsId :: Lens' GetLoggerDefinitionVersionResponse (Maybe Text)
gldvrrsId = lens _gldvrrsId (\s a -> s {_gldvrrsId = a})

-- | The version of the logger definition version.
gldvrrsVersion :: Lens' GetLoggerDefinitionVersionResponse (Maybe Text)
gldvrrsVersion = lens _gldvrrsVersion (\s a -> s {_gldvrrsVersion = a})

-- | Information about the logger definition version.
gldvrrsDefinition :: Lens' GetLoggerDefinitionVersionResponse (Maybe LoggerDefinitionVersion)
gldvrrsDefinition = lens _gldvrrsDefinition (\s a -> s {_gldvrrsDefinition = a})

-- | -- | The response status code.
gldvrrsResponseStatus :: Lens' GetLoggerDefinitionVersionResponse Int
gldvrrsResponseStatus = lens _gldvrrsResponseStatus (\s a -> s {_gldvrrsResponseStatus = a})

instance NFData GetLoggerDefinitionVersionResponse

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
-- Module      : Network.AWS.Greengrass.GetCoreDefinitionVersion
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves information about a core definition version.
module Network.AWS.Greengrass.GetCoreDefinitionVersion
  ( -- * Creating a Request
    getCoreDefinitionVersion,
    GetCoreDefinitionVersion,

    -- * Request Lenses
    gcdvCoreDefinitionId,
    gcdvCoreDefinitionVersionId,

    -- * Destructuring the Response
    getCoreDefinitionVersionResponse,
    GetCoreDefinitionVersionResponse,

    -- * Response Lenses
    grsCreationTimestamp,
    grsNextToken,
    grsARN,
    grsId,
    grsVersion,
    grsDefinition,
    grsResponseStatus,
  )
where

import Network.AWS.Greengrass.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'getCoreDefinitionVersion' smart constructor.
data GetCoreDefinitionVersion = GetCoreDefinitionVersion'
  { _gcdvCoreDefinitionId ::
      !Text,
    _gcdvCoreDefinitionVersionId ::
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

-- | Creates a value of 'GetCoreDefinitionVersion' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gcdvCoreDefinitionId' - The ID of the core definition.
--
-- * 'gcdvCoreDefinitionVersionId' - The ID of the core definition version. This value maps to the ''Version'' property of the corresponding ''VersionInformation'' object, which is returned by ''ListCoreDefinitionVersions'' requests. If the version is the last one that was associated with a core definition, the value also maps to the ''LatestVersion'' property of the corresponding ''DefinitionInformation'' object.
getCoreDefinitionVersion ::
  -- | 'gcdvCoreDefinitionId'
  Text ->
  -- | 'gcdvCoreDefinitionVersionId'
  Text ->
  GetCoreDefinitionVersion
getCoreDefinitionVersion
  pCoreDefinitionId_
  pCoreDefinitionVersionId_ =
    GetCoreDefinitionVersion'
      { _gcdvCoreDefinitionId =
          pCoreDefinitionId_,
        _gcdvCoreDefinitionVersionId =
          pCoreDefinitionVersionId_
      }

-- | The ID of the core definition.
gcdvCoreDefinitionId :: Lens' GetCoreDefinitionVersion Text
gcdvCoreDefinitionId = lens _gcdvCoreDefinitionId (\s a -> s {_gcdvCoreDefinitionId = a})

-- | The ID of the core definition version. This value maps to the ''Version'' property of the corresponding ''VersionInformation'' object, which is returned by ''ListCoreDefinitionVersions'' requests. If the version is the last one that was associated with a core definition, the value also maps to the ''LatestVersion'' property of the corresponding ''DefinitionInformation'' object.
gcdvCoreDefinitionVersionId :: Lens' GetCoreDefinitionVersion Text
gcdvCoreDefinitionVersionId = lens _gcdvCoreDefinitionVersionId (\s a -> s {_gcdvCoreDefinitionVersionId = a})

instance AWSRequest GetCoreDefinitionVersion where
  type
    Rs GetCoreDefinitionVersion =
      GetCoreDefinitionVersionResponse
  request = get greengrass
  response =
    receiveJSON
      ( \s h x ->
          GetCoreDefinitionVersionResponse'
            <$> (x .?> "CreationTimestamp")
            <*> (x .?> "NextToken")
            <*> (x .?> "Arn")
            <*> (x .?> "Id")
            <*> (x .?> "Version")
            <*> (x .?> "Definition")
            <*> (pure (fromEnum s))
      )

instance Hashable GetCoreDefinitionVersion

instance NFData GetCoreDefinitionVersion

instance ToHeaders GetCoreDefinitionVersion where
  toHeaders =
    const
      ( mconcat
          [ "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToPath GetCoreDefinitionVersion where
  toPath GetCoreDefinitionVersion' {..} =
    mconcat
      [ "/greengrass/definition/cores/",
        toBS _gcdvCoreDefinitionId,
        "/versions/",
        toBS _gcdvCoreDefinitionVersionId
      ]

instance ToQuery GetCoreDefinitionVersion where
  toQuery = const mempty

-- | /See:/ 'getCoreDefinitionVersionResponse' smart constructor.
data GetCoreDefinitionVersionResponse = GetCoreDefinitionVersionResponse'
  { _grsCreationTimestamp ::
      !( Maybe
           Text
       ),
    _grsNextToken ::
      !( Maybe
           Text
       ),
    _grsARN ::
      !( Maybe
           Text
       ),
    _grsId ::
      !( Maybe
           Text
       ),
    _grsVersion ::
      !( Maybe
           Text
       ),
    _grsDefinition ::
      !( Maybe
           CoreDefinitionVersion
       ),
    _grsResponseStatus ::
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

-- | Creates a value of 'GetCoreDefinitionVersionResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'grsCreationTimestamp' - The time, in milliseconds since the epoch, when the core definition version was created.
--
-- * 'grsNextToken' - The token for the next set of results, or ''null'' if there are no additional results.
--
-- * 'grsARN' - The ARN of the core definition version.
--
-- * 'grsId' - The ID of the core definition version.
--
-- * 'grsVersion' - The version of the core definition version.
--
-- * 'grsDefinition' - Information about the core definition version.
--
-- * 'grsResponseStatus' - -- | The response status code.
getCoreDefinitionVersionResponse ::
  -- | 'grsResponseStatus'
  Int ->
  GetCoreDefinitionVersionResponse
getCoreDefinitionVersionResponse pResponseStatus_ =
  GetCoreDefinitionVersionResponse'
    { _grsCreationTimestamp =
        Nothing,
      _grsNextToken = Nothing,
      _grsARN = Nothing,
      _grsId = Nothing,
      _grsVersion = Nothing,
      _grsDefinition = Nothing,
      _grsResponseStatus = pResponseStatus_
    }

-- | The time, in milliseconds since the epoch, when the core definition version was created.
grsCreationTimestamp :: Lens' GetCoreDefinitionVersionResponse (Maybe Text)
grsCreationTimestamp = lens _grsCreationTimestamp (\s a -> s {_grsCreationTimestamp = a})

-- | The token for the next set of results, or ''null'' if there are no additional results.
grsNextToken :: Lens' GetCoreDefinitionVersionResponse (Maybe Text)
grsNextToken = lens _grsNextToken (\s a -> s {_grsNextToken = a})

-- | The ARN of the core definition version.
grsARN :: Lens' GetCoreDefinitionVersionResponse (Maybe Text)
grsARN = lens _grsARN (\s a -> s {_grsARN = a})

-- | The ID of the core definition version.
grsId :: Lens' GetCoreDefinitionVersionResponse (Maybe Text)
grsId = lens _grsId (\s a -> s {_grsId = a})

-- | The version of the core definition version.
grsVersion :: Lens' GetCoreDefinitionVersionResponse (Maybe Text)
grsVersion = lens _grsVersion (\s a -> s {_grsVersion = a})

-- | Information about the core definition version.
grsDefinition :: Lens' GetCoreDefinitionVersionResponse (Maybe CoreDefinitionVersion)
grsDefinition = lens _grsDefinition (\s a -> s {_grsDefinition = a})

-- | -- | The response status code.
grsResponseStatus :: Lens' GetCoreDefinitionVersionResponse Int
grsResponseStatus = lens _grsResponseStatus (\s a -> s {_grsResponseStatus = a})

instance NFData GetCoreDefinitionVersionResponse

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
-- Module      : Network.AWS.Greengrass.GetFunctionDefinitionVersion
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves information about a Lambda function definition version, including which Lambda functions are included in the version and their configurations.
module Network.AWS.Greengrass.GetFunctionDefinitionVersion
  ( -- * Creating a Request
    getFunctionDefinitionVersion,
    GetFunctionDefinitionVersion,

    -- * Request Lenses
    gfdvNextToken,
    gfdvFunctionDefinitionId,
    gfdvFunctionDefinitionVersionId,

    -- * Destructuring the Response
    getFunctionDefinitionVersionResponse,
    GetFunctionDefinitionVersionResponse,

    -- * Response Lenses
    gfdvrrsCreationTimestamp,
    gfdvrrsNextToken,
    gfdvrrsARN,
    gfdvrrsId,
    gfdvrrsVersion,
    gfdvrrsDefinition,
    gfdvrrsResponseStatus,
  )
where

import Network.AWS.Greengrass.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'getFunctionDefinitionVersion' smart constructor.
data GetFunctionDefinitionVersion = GetFunctionDefinitionVersion'
  { _gfdvNextToken ::
      !(Maybe Text),
    _gfdvFunctionDefinitionId ::
      !Text,
    _gfdvFunctionDefinitionVersionId ::
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

-- | Creates a value of 'GetFunctionDefinitionVersion' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gfdvNextToken' - The token for the next set of results, or ''null'' if there are no additional results.
--
-- * 'gfdvFunctionDefinitionId' - The ID of the Lambda function definition.
--
-- * 'gfdvFunctionDefinitionVersionId' - The ID of the function definition version. This value maps to the ''Version'' property of the corresponding ''VersionInformation'' object, which is returned by ''ListFunctionDefinitionVersions'' requests. If the version is the last one that was associated with a function definition, the value also maps to the ''LatestVersion'' property of the corresponding ''DefinitionInformation'' object.
getFunctionDefinitionVersion ::
  -- | 'gfdvFunctionDefinitionId'
  Text ->
  -- | 'gfdvFunctionDefinitionVersionId'
  Text ->
  GetFunctionDefinitionVersion
getFunctionDefinitionVersion
  pFunctionDefinitionId_
  pFunctionDefinitionVersionId_ =
    GetFunctionDefinitionVersion'
      { _gfdvNextToken =
          Nothing,
        _gfdvFunctionDefinitionId =
          pFunctionDefinitionId_,
        _gfdvFunctionDefinitionVersionId =
          pFunctionDefinitionVersionId_
      }

-- | The token for the next set of results, or ''null'' if there are no additional results.
gfdvNextToken :: Lens' GetFunctionDefinitionVersion (Maybe Text)
gfdvNextToken = lens _gfdvNextToken (\s a -> s {_gfdvNextToken = a})

-- | The ID of the Lambda function definition.
gfdvFunctionDefinitionId :: Lens' GetFunctionDefinitionVersion Text
gfdvFunctionDefinitionId = lens _gfdvFunctionDefinitionId (\s a -> s {_gfdvFunctionDefinitionId = a})

-- | The ID of the function definition version. This value maps to the ''Version'' property of the corresponding ''VersionInformation'' object, which is returned by ''ListFunctionDefinitionVersions'' requests. If the version is the last one that was associated with a function definition, the value also maps to the ''LatestVersion'' property of the corresponding ''DefinitionInformation'' object.
gfdvFunctionDefinitionVersionId :: Lens' GetFunctionDefinitionVersion Text
gfdvFunctionDefinitionVersionId = lens _gfdvFunctionDefinitionVersionId (\s a -> s {_gfdvFunctionDefinitionVersionId = a})

instance AWSRequest GetFunctionDefinitionVersion where
  type
    Rs GetFunctionDefinitionVersion =
      GetFunctionDefinitionVersionResponse
  request = get greengrass
  response =
    receiveJSON
      ( \s h x ->
          GetFunctionDefinitionVersionResponse'
            <$> (x .?> "CreationTimestamp")
            <*> (x .?> "NextToken")
            <*> (x .?> "Arn")
            <*> (x .?> "Id")
            <*> (x .?> "Version")
            <*> (x .?> "Definition")
            <*> (pure (fromEnum s))
      )

instance Hashable GetFunctionDefinitionVersion

instance NFData GetFunctionDefinitionVersion

instance ToHeaders GetFunctionDefinitionVersion where
  toHeaders =
    const
      ( mconcat
          [ "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToPath GetFunctionDefinitionVersion where
  toPath GetFunctionDefinitionVersion' {..} =
    mconcat
      [ "/greengrass/definition/functions/",
        toBS _gfdvFunctionDefinitionId,
        "/versions/",
        toBS _gfdvFunctionDefinitionVersionId
      ]

instance ToQuery GetFunctionDefinitionVersion where
  toQuery GetFunctionDefinitionVersion' {..} =
    mconcat ["NextToken" =: _gfdvNextToken]

-- | /See:/ 'getFunctionDefinitionVersionResponse' smart constructor.
data GetFunctionDefinitionVersionResponse = GetFunctionDefinitionVersionResponse'
  { _gfdvrrsCreationTimestamp ::
      !( Maybe
           Text
       ),
    _gfdvrrsNextToken ::
      !( Maybe
           Text
       ),
    _gfdvrrsARN ::
      !( Maybe
           Text
       ),
    _gfdvrrsId ::
      !( Maybe
           Text
       ),
    _gfdvrrsVersion ::
      !( Maybe
           Text
       ),
    _gfdvrrsDefinition ::
      !( Maybe
           FunctionDefinitionVersion
       ),
    _gfdvrrsResponseStatus ::
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

-- | Creates a value of 'GetFunctionDefinitionVersionResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gfdvrrsCreationTimestamp' - The time, in milliseconds since the epoch, when the function definition version was created.
--
-- * 'gfdvrrsNextToken' - The token for the next set of results, or ''null'' if there are no additional results.
--
-- * 'gfdvrrsARN' - The ARN of the function definition version.
--
-- * 'gfdvrrsId' - The ID of the function definition version.
--
-- * 'gfdvrrsVersion' - The version of the function definition version.
--
-- * 'gfdvrrsDefinition' - Information on the definition.
--
-- * 'gfdvrrsResponseStatus' - -- | The response status code.
getFunctionDefinitionVersionResponse ::
  -- | 'gfdvrrsResponseStatus'
  Int ->
  GetFunctionDefinitionVersionResponse
getFunctionDefinitionVersionResponse pResponseStatus_ =
  GetFunctionDefinitionVersionResponse'
    { _gfdvrrsCreationTimestamp =
        Nothing,
      _gfdvrrsNextToken = Nothing,
      _gfdvrrsARN = Nothing,
      _gfdvrrsId = Nothing,
      _gfdvrrsVersion = Nothing,
      _gfdvrrsDefinition = Nothing,
      _gfdvrrsResponseStatus =
        pResponseStatus_
    }

-- | The time, in milliseconds since the epoch, when the function definition version was created.
gfdvrrsCreationTimestamp :: Lens' GetFunctionDefinitionVersionResponse (Maybe Text)
gfdvrrsCreationTimestamp = lens _gfdvrrsCreationTimestamp (\s a -> s {_gfdvrrsCreationTimestamp = a})

-- | The token for the next set of results, or ''null'' if there are no additional results.
gfdvrrsNextToken :: Lens' GetFunctionDefinitionVersionResponse (Maybe Text)
gfdvrrsNextToken = lens _gfdvrrsNextToken (\s a -> s {_gfdvrrsNextToken = a})

-- | The ARN of the function definition version.
gfdvrrsARN :: Lens' GetFunctionDefinitionVersionResponse (Maybe Text)
gfdvrrsARN = lens _gfdvrrsARN (\s a -> s {_gfdvrrsARN = a})

-- | The ID of the function definition version.
gfdvrrsId :: Lens' GetFunctionDefinitionVersionResponse (Maybe Text)
gfdvrrsId = lens _gfdvrrsId (\s a -> s {_gfdvrrsId = a})

-- | The version of the function definition version.
gfdvrrsVersion :: Lens' GetFunctionDefinitionVersionResponse (Maybe Text)
gfdvrrsVersion = lens _gfdvrrsVersion (\s a -> s {_gfdvrrsVersion = a})

-- | Information on the definition.
gfdvrrsDefinition :: Lens' GetFunctionDefinitionVersionResponse (Maybe FunctionDefinitionVersion)
gfdvrrsDefinition = lens _gfdvrrsDefinition (\s a -> s {_gfdvrrsDefinition = a})

-- | -- | The response status code.
gfdvrrsResponseStatus :: Lens' GetFunctionDefinitionVersionResponse Int
gfdvrrsResponseStatus = lens _gfdvrrsResponseStatus (\s a -> s {_gfdvrrsResponseStatus = a})

instance NFData GetFunctionDefinitionVersionResponse

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
-- Module      : Network.AWS.CodePipeline.CreateCustomActionType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates a new custom action that can be used in all pipelines associated with the AWS account. Only used for custom actions.
module Network.AWS.CodePipeline.CreateCustomActionType
  ( -- * Creating a Request
    createCustomActionType,
    CreateCustomActionType,

    -- * Request Lenses
    ccatConfigurationProperties,
    ccatTags,
    ccatSettings,
    ccatCategory,
    ccatProvider,
    ccatVersion,
    ccatInputArtifactDetails,
    ccatOutputArtifactDetails,

    -- * Destructuring the Response
    createCustomActionTypeResponse,
    CreateCustomActionTypeResponse,

    -- * Response Lenses
    ccatrrsTags,
    ccatrrsResponseStatus,
    ccatrrsActionType,
  )
where

import Network.AWS.CodePipeline.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | Represents the input of a CreateCustomActionType operation.
--
--
--
-- /See:/ 'createCustomActionType' smart constructor.
data CreateCustomActionType = CreateCustomActionType'
  { _ccatConfigurationProperties ::
      !( Maybe
           [ActionConfigurationProperty]
       ),
    _ccatTags ::
      !(Maybe [Tag]),
    _ccatSettings ::
      !( Maybe
           ActionTypeSettings
       ),
    _ccatCategory ::
      !ActionCategory,
    _ccatProvider :: !Text,
    _ccatVersion :: !Text,
    _ccatInputArtifactDetails ::
      !ArtifactDetails,
    _ccatOutputArtifactDetails ::
      !ArtifactDetails
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'CreateCustomActionType' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ccatConfigurationProperties' - The configuration properties for the custom action.
--
-- * 'ccatTags' - The tags for the custom action.
--
-- * 'ccatSettings' - URLs that provide users information about this custom action.
--
-- * 'ccatCategory' - The category of the custom action, such as a build action or a test action.
--
-- * 'ccatProvider' - The provider of the service used in the custom action, such as AWS CodeDeploy.
--
-- * 'ccatVersion' - The version identifier of the custom action.
--
-- * 'ccatInputArtifactDetails' - The details of the input artifact for the action, such as its commit ID.
--
-- * 'ccatOutputArtifactDetails' - The details of the output artifact of the action, such as its commit ID.
createCustomActionType ::
  -- | 'ccatCategory'
  ActionCategory ->
  -- | 'ccatProvider'
  Text ->
  -- | 'ccatVersion'
  Text ->
  -- | 'ccatInputArtifactDetails'
  ArtifactDetails ->
  -- | 'ccatOutputArtifactDetails'
  ArtifactDetails ->
  CreateCustomActionType
createCustomActionType
  pCategory_
  pProvider_
  pVersion_
  pInputArtifactDetails_
  pOutputArtifactDetails_ =
    CreateCustomActionType'
      { _ccatConfigurationProperties =
          Nothing,
        _ccatTags = Nothing,
        _ccatSettings = Nothing,
        _ccatCategory = pCategory_,
        _ccatProvider = pProvider_,
        _ccatVersion = pVersion_,
        _ccatInputArtifactDetails = pInputArtifactDetails_,
        _ccatOutputArtifactDetails =
          pOutputArtifactDetails_
      }

-- | The configuration properties for the custom action.
ccatConfigurationProperties :: Lens' CreateCustomActionType [ActionConfigurationProperty]
ccatConfigurationProperties = lens _ccatConfigurationProperties (\s a -> s {_ccatConfigurationProperties = a}) . _Default . _Coerce

-- | The tags for the custom action.
ccatTags :: Lens' CreateCustomActionType [Tag]
ccatTags = lens _ccatTags (\s a -> s {_ccatTags = a}) . _Default . _Coerce

-- | URLs that provide users information about this custom action.
ccatSettings :: Lens' CreateCustomActionType (Maybe ActionTypeSettings)
ccatSettings = lens _ccatSettings (\s a -> s {_ccatSettings = a})

-- | The category of the custom action, such as a build action or a test action.
ccatCategory :: Lens' CreateCustomActionType ActionCategory
ccatCategory = lens _ccatCategory (\s a -> s {_ccatCategory = a})

-- | The provider of the service used in the custom action, such as AWS CodeDeploy.
ccatProvider :: Lens' CreateCustomActionType Text
ccatProvider = lens _ccatProvider (\s a -> s {_ccatProvider = a})

-- | The version identifier of the custom action.
ccatVersion :: Lens' CreateCustomActionType Text
ccatVersion = lens _ccatVersion (\s a -> s {_ccatVersion = a})

-- | The details of the input artifact for the action, such as its commit ID.
ccatInputArtifactDetails :: Lens' CreateCustomActionType ArtifactDetails
ccatInputArtifactDetails = lens _ccatInputArtifactDetails (\s a -> s {_ccatInputArtifactDetails = a})

-- | The details of the output artifact of the action, such as its commit ID.
ccatOutputArtifactDetails :: Lens' CreateCustomActionType ArtifactDetails
ccatOutputArtifactDetails = lens _ccatOutputArtifactDetails (\s a -> s {_ccatOutputArtifactDetails = a})

instance AWSRequest CreateCustomActionType where
  type
    Rs CreateCustomActionType =
      CreateCustomActionTypeResponse
  request = postJSON codePipeline
  response =
    receiveJSON
      ( \s h x ->
          CreateCustomActionTypeResponse'
            <$> (x .?> "tags" .!@ mempty)
            <*> (pure (fromEnum s))
            <*> (x .:> "actionType")
      )

instance Hashable CreateCustomActionType

instance NFData CreateCustomActionType

instance ToHeaders CreateCustomActionType where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ( "CodePipeline_20150709.CreateCustomActionType" ::
                     ByteString
                 ),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON CreateCustomActionType where
  toJSON CreateCustomActionType' {..} =
    object
      ( catMaybes
          [ ("configurationProperties" .=)
              <$> _ccatConfigurationProperties,
            ("tags" .=) <$> _ccatTags,
            ("settings" .=) <$> _ccatSettings,
            Just ("category" .= _ccatCategory),
            Just ("provider" .= _ccatProvider),
            Just ("version" .= _ccatVersion),
            Just
              ( "inputArtifactDetails"
                  .= _ccatInputArtifactDetails
              ),
            Just
              ( "outputArtifactDetails"
                  .= _ccatOutputArtifactDetails
              )
          ]
      )

instance ToPath CreateCustomActionType where
  toPath = const "/"

instance ToQuery CreateCustomActionType where
  toQuery = const mempty

-- | Represents the output of a @CreateCustomActionType@ operation.
--
--
--
-- /See:/ 'createCustomActionTypeResponse' smart constructor.
data CreateCustomActionTypeResponse = CreateCustomActionTypeResponse'
  { _ccatrrsTags ::
      !( Maybe
           [Tag]
       ),
    _ccatrrsResponseStatus ::
      !Int,
    _ccatrrsActionType ::
      !ActionType
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'CreateCustomActionTypeResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ccatrrsTags' - Specifies the tags applied to the custom action.
--
-- * 'ccatrrsResponseStatus' - -- | The response status code.
--
-- * 'ccatrrsActionType' - Returns information about the details of an action type.
createCustomActionTypeResponse ::
  -- | 'ccatrrsResponseStatus'
  Int ->
  -- | 'ccatrrsActionType'
  ActionType ->
  CreateCustomActionTypeResponse
createCustomActionTypeResponse
  pResponseStatus_
  pActionType_ =
    CreateCustomActionTypeResponse'
      { _ccatrrsTags =
          Nothing,
        _ccatrrsResponseStatus = pResponseStatus_,
        _ccatrrsActionType = pActionType_
      }

-- | Specifies the tags applied to the custom action.
ccatrrsTags :: Lens' CreateCustomActionTypeResponse [Tag]
ccatrrsTags = lens _ccatrrsTags (\s a -> s {_ccatrrsTags = a}) . _Default . _Coerce

-- | -- | The response status code.
ccatrrsResponseStatus :: Lens' CreateCustomActionTypeResponse Int
ccatrrsResponseStatus = lens _ccatrrsResponseStatus (\s a -> s {_ccatrrsResponseStatus = a})

-- | Returns information about the details of an action type.
ccatrrsActionType :: Lens' CreateCustomActionTypeResponse ActionType
ccatrrsActionType = lens _ccatrrsActionType (\s a -> s {_ccatrrsActionType = a})

instance NFData CreateCustomActionTypeResponse

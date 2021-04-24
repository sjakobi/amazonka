{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.CodePipeline.Types.ActionTypeDeclaration
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.CodePipeline.Types.ActionTypeDeclaration where

import Network.AWS.CodePipeline.Types.ActionTypeArtifactDetails
import Network.AWS.CodePipeline.Types.ActionTypeExecutor
import Network.AWS.CodePipeline.Types.ActionTypeIdentifier
import Network.AWS.CodePipeline.Types.ActionTypePermissions
import Network.AWS.CodePipeline.Types.ActionTypeProperty
import Network.AWS.CodePipeline.Types.ActionTypeURLs
import Network.AWS.Lens
import Network.AWS.Prelude

-- | The parameters for the action type definition that are provided when the action type is created or updated.
--
--
--
-- /See:/ 'actionTypeDeclaration' smart constructor.
data ActionTypeDeclaration = ActionTypeDeclaration'
  { _atdPermissions ::
      !( Maybe
           ActionTypePermissions
       ),
    _atdUrls ::
      !(Maybe ActionTypeURLs),
    _atdProperties ::
      !( Maybe
           [ActionTypeProperty]
       ),
    _atdDescription ::
      !(Maybe Text),
    _atdExecutor ::
      !ActionTypeExecutor,
    _atdId ::
      !ActionTypeIdentifier,
    _atdInputArtifactDetails ::
      !ActionTypeArtifactDetails,
    _atdOutputArtifactDetails ::
      !ActionTypeArtifactDetails
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'ActionTypeDeclaration' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'atdPermissions' - Details identifying the accounts with permissions to use the action type.
--
-- * 'atdUrls' - The links associated with the action type to be updated.
--
-- * 'atdProperties' - The properties of the action type to be updated.
--
-- * 'atdDescription' - The description for the action type to be updated.
--
-- * 'atdExecutor' - Information about the executor for an action type that was created with any supported integration model.
--
-- * 'atdId' - The action category, owner, provider, and version of the action type to be updated.
--
-- * 'atdInputArtifactDetails' - Details for the artifacts, such as application files, to be worked on by the action. For example, the minimum and maximum number of input artifacts allowed.
--
-- * 'atdOutputArtifactDetails' - Details for the output artifacts, such as a built application, that are the result of the action. For example, the minimum and maximum number of output artifacts allowed.
actionTypeDeclaration ::
  -- | 'atdExecutor'
  ActionTypeExecutor ->
  -- | 'atdId'
  ActionTypeIdentifier ->
  -- | 'atdInputArtifactDetails'
  ActionTypeArtifactDetails ->
  -- | 'atdOutputArtifactDetails'
  ActionTypeArtifactDetails ->
  ActionTypeDeclaration
actionTypeDeclaration
  pExecutor_
  pId_
  pInputArtifactDetails_
  pOutputArtifactDetails_ =
    ActionTypeDeclaration'
      { _atdPermissions = Nothing,
        _atdUrls = Nothing,
        _atdProperties = Nothing,
        _atdDescription = Nothing,
        _atdExecutor = pExecutor_,
        _atdId = pId_,
        _atdInputArtifactDetails = pInputArtifactDetails_,
        _atdOutputArtifactDetails = pOutputArtifactDetails_
      }

-- | Details identifying the accounts with permissions to use the action type.
atdPermissions :: Lens' ActionTypeDeclaration (Maybe ActionTypePermissions)
atdPermissions = lens _atdPermissions (\s a -> s {_atdPermissions = a})

-- | The links associated with the action type to be updated.
atdUrls :: Lens' ActionTypeDeclaration (Maybe ActionTypeURLs)
atdUrls = lens _atdUrls (\s a -> s {_atdUrls = a})

-- | The properties of the action type to be updated.
atdProperties :: Lens' ActionTypeDeclaration [ActionTypeProperty]
atdProperties = lens _atdProperties (\s a -> s {_atdProperties = a}) . _Default . _Coerce

-- | The description for the action type to be updated.
atdDescription :: Lens' ActionTypeDeclaration (Maybe Text)
atdDescription = lens _atdDescription (\s a -> s {_atdDescription = a})

-- | Information about the executor for an action type that was created with any supported integration model.
atdExecutor :: Lens' ActionTypeDeclaration ActionTypeExecutor
atdExecutor = lens _atdExecutor (\s a -> s {_atdExecutor = a})

-- | The action category, owner, provider, and version of the action type to be updated.
atdId :: Lens' ActionTypeDeclaration ActionTypeIdentifier
atdId = lens _atdId (\s a -> s {_atdId = a})

-- | Details for the artifacts, such as application files, to be worked on by the action. For example, the minimum and maximum number of input artifacts allowed.
atdInputArtifactDetails :: Lens' ActionTypeDeclaration ActionTypeArtifactDetails
atdInputArtifactDetails = lens _atdInputArtifactDetails (\s a -> s {_atdInputArtifactDetails = a})

-- | Details for the output artifacts, such as a built application, that are the result of the action. For example, the minimum and maximum number of output artifacts allowed.
atdOutputArtifactDetails :: Lens' ActionTypeDeclaration ActionTypeArtifactDetails
atdOutputArtifactDetails = lens _atdOutputArtifactDetails (\s a -> s {_atdOutputArtifactDetails = a})

instance FromJSON ActionTypeDeclaration where
  parseJSON =
    withObject
      "ActionTypeDeclaration"
      ( \x ->
          ActionTypeDeclaration'
            <$> (x .:? "permissions")
            <*> (x .:? "urls")
            <*> (x .:? "properties" .!= mempty)
            <*> (x .:? "description")
            <*> (x .: "executor")
            <*> (x .: "id")
            <*> (x .: "inputArtifactDetails")
            <*> (x .: "outputArtifactDetails")
      )

instance Hashable ActionTypeDeclaration

instance NFData ActionTypeDeclaration

instance ToJSON ActionTypeDeclaration where
  toJSON ActionTypeDeclaration' {..} =
    object
      ( catMaybes
          [ ("permissions" .=) <$> _atdPermissions,
            ("urls" .=) <$> _atdUrls,
            ("properties" .=) <$> _atdProperties,
            ("description" .=) <$> _atdDescription,
            Just ("executor" .= _atdExecutor),
            Just ("id" .= _atdId),
            Just
              ("inputArtifactDetails" .= _atdInputArtifactDetails),
            Just
              ( "outputArtifactDetails"
                  .= _atdOutputArtifactDetails
              )
          ]
      )

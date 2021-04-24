{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.CodePipeline.Types.ActionDeclaration
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.CodePipeline.Types.ActionDeclaration where

import Network.AWS.CodePipeline.Types.ActionTypeId
import Network.AWS.CodePipeline.Types.InputArtifact
import Network.AWS.CodePipeline.Types.OutputArtifact
import Network.AWS.Lens
import Network.AWS.Prelude

-- | Represents information about an action declaration.
--
--
--
-- /See:/ 'actionDeclaration' smart constructor.
data ActionDeclaration = ActionDeclaration'
  { _actRoleARN ::
      !(Maybe Text),
    _actConfiguration ::
      !(Maybe (Map Text Text)),
    _actRunOrder :: !(Maybe Nat),
    _actNamespace :: !(Maybe Text),
    _actInputArtifacts ::
      !(Maybe [InputArtifact]),
    _actRegion :: !(Maybe Text),
    _actOutputArtifacts ::
      !(Maybe [OutputArtifact]),
    _actName :: !Text,
    _actActionTypeId :: !ActionTypeId
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'ActionDeclaration' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'actRoleARN' - The ARN of the IAM service role that performs the declared action. This is assumed through the roleArn for the pipeline.
--
-- * 'actConfiguration' - The action's configuration. These are key-value pairs that specify input values for an action. For more information, see <https://docs.aws.amazon.com/codepipeline/latest/userguide/reference-pipeline-structure.html#action-requirements Action Structure Requirements in CodePipeline> . For the list of configuration properties for the AWS CloudFormation action type in CodePipeline, see <https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/continuous-delivery-codepipeline-action-reference.html Configuration Properties Reference> in the /AWS CloudFormation User Guide/ . For template snippets with examples, see <https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/continuous-delivery-codepipeline-parameter-override-functions.html Using Parameter Override Functions with CodePipeline Pipelines> in the /AWS CloudFormation User Guide/ . The values can be represented in either JSON or YAML format. For example, the JSON configuration item format is as follows:  /JSON:/  @"Configuration" : { Key : Value },@
--
-- * 'actRunOrder' - The order in which actions are run.
--
-- * 'actNamespace' - The variable namespace associated with the action. All variables produced as output by this action fall under this namespace.
--
-- * 'actInputArtifacts' - The name or ID of the artifact consumed by the action, such as a test or build artifact.
--
-- * 'actRegion' - The action declaration's AWS Region, such as us-east-1.
--
-- * 'actOutputArtifacts' - The name or ID of the result of the action declaration, such as a test or build artifact.
--
-- * 'actName' - The action declaration's name.
--
-- * 'actActionTypeId' - Specifies the action type and the provider of the action.
actionDeclaration ::
  -- | 'actName'
  Text ->
  -- | 'actActionTypeId'
  ActionTypeId ->
  ActionDeclaration
actionDeclaration pName_ pActionTypeId_ =
  ActionDeclaration'
    { _actRoleARN = Nothing,
      _actConfiguration = Nothing,
      _actRunOrder = Nothing,
      _actNamespace = Nothing,
      _actInputArtifacts = Nothing,
      _actRegion = Nothing,
      _actOutputArtifacts = Nothing,
      _actName = pName_,
      _actActionTypeId = pActionTypeId_
    }

-- | The ARN of the IAM service role that performs the declared action. This is assumed through the roleArn for the pipeline.
actRoleARN :: Lens' ActionDeclaration (Maybe Text)
actRoleARN = lens _actRoleARN (\s a -> s {_actRoleARN = a})

-- | The action's configuration. These are key-value pairs that specify input values for an action. For more information, see <https://docs.aws.amazon.com/codepipeline/latest/userguide/reference-pipeline-structure.html#action-requirements Action Structure Requirements in CodePipeline> . For the list of configuration properties for the AWS CloudFormation action type in CodePipeline, see <https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/continuous-delivery-codepipeline-action-reference.html Configuration Properties Reference> in the /AWS CloudFormation User Guide/ . For template snippets with examples, see <https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/continuous-delivery-codepipeline-parameter-override-functions.html Using Parameter Override Functions with CodePipeline Pipelines> in the /AWS CloudFormation User Guide/ . The values can be represented in either JSON or YAML format. For example, the JSON configuration item format is as follows:  /JSON:/  @"Configuration" : { Key : Value },@
actConfiguration :: Lens' ActionDeclaration (HashMap Text Text)
actConfiguration = lens _actConfiguration (\s a -> s {_actConfiguration = a}) . _Default . _Map

-- | The order in which actions are run.
actRunOrder :: Lens' ActionDeclaration (Maybe Natural)
actRunOrder = lens _actRunOrder (\s a -> s {_actRunOrder = a}) . mapping _Nat

-- | The variable namespace associated with the action. All variables produced as output by this action fall under this namespace.
actNamespace :: Lens' ActionDeclaration (Maybe Text)
actNamespace = lens _actNamespace (\s a -> s {_actNamespace = a})

-- | The name or ID of the artifact consumed by the action, such as a test or build artifact.
actInputArtifacts :: Lens' ActionDeclaration [InputArtifact]
actInputArtifacts = lens _actInputArtifacts (\s a -> s {_actInputArtifacts = a}) . _Default . _Coerce

-- | The action declaration's AWS Region, such as us-east-1.
actRegion :: Lens' ActionDeclaration (Maybe Text)
actRegion = lens _actRegion (\s a -> s {_actRegion = a})

-- | The name or ID of the result of the action declaration, such as a test or build artifact.
actOutputArtifacts :: Lens' ActionDeclaration [OutputArtifact]
actOutputArtifacts = lens _actOutputArtifacts (\s a -> s {_actOutputArtifacts = a}) . _Default . _Coerce

-- | The action declaration's name.
actName :: Lens' ActionDeclaration Text
actName = lens _actName (\s a -> s {_actName = a})

-- | Specifies the action type and the provider of the action.
actActionTypeId :: Lens' ActionDeclaration ActionTypeId
actActionTypeId = lens _actActionTypeId (\s a -> s {_actActionTypeId = a})

instance FromJSON ActionDeclaration where
  parseJSON =
    withObject
      "ActionDeclaration"
      ( \x ->
          ActionDeclaration'
            <$> (x .:? "roleArn")
            <*> (x .:? "configuration" .!= mempty)
            <*> (x .:? "runOrder")
            <*> (x .:? "namespace")
            <*> (x .:? "inputArtifacts" .!= mempty)
            <*> (x .:? "region")
            <*> (x .:? "outputArtifacts" .!= mempty)
            <*> (x .: "name")
            <*> (x .: "actionTypeId")
      )

instance Hashable ActionDeclaration

instance NFData ActionDeclaration

instance ToJSON ActionDeclaration where
  toJSON ActionDeclaration' {..} =
    object
      ( catMaybes
          [ ("roleArn" .=) <$> _actRoleARN,
            ("configuration" .=) <$> _actConfiguration,
            ("runOrder" .=) <$> _actRunOrder,
            ("namespace" .=) <$> _actNamespace,
            ("inputArtifacts" .=) <$> _actInputArtifacts,
            ("region" .=) <$> _actRegion,
            ("outputArtifacts" .=) <$> _actOutputArtifacts,
            Just ("name" .= _actName),
            Just ("actionTypeId" .= _actActionTypeId)
          ]
      )

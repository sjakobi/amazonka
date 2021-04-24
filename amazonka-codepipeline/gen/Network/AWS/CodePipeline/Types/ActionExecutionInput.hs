{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.CodePipeline.Types.ActionExecutionInput
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.CodePipeline.Types.ActionExecutionInput where

import Network.AWS.CodePipeline.Types.ActionTypeId
import Network.AWS.CodePipeline.Types.ArtifactDetail
import Network.AWS.Lens
import Network.AWS.Prelude

-- | Input information used for an action execution.
--
--
--
-- /See:/ 'actionExecutionInput' smart constructor.
data ActionExecutionInput = ActionExecutionInput'
  { _aeiRoleARN ::
      !(Maybe Text),
    _aeiConfiguration ::
      !(Maybe (Map Text Text)),
    _aeiResolvedConfiguration ::
      !(Maybe (Map Text Text)),
    _aeiNamespace ::
      !(Maybe Text),
    _aeiActionTypeId ::
      !(Maybe ActionTypeId),
    _aeiInputArtifacts ::
      !(Maybe [ArtifactDetail]),
    _aeiRegion :: !(Maybe Text)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'ActionExecutionInput' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'aeiRoleARN' - The ARN of the IAM service role that performs the declared action. This is assumed through the roleArn for the pipeline.
--
-- * 'aeiConfiguration' - Configuration data for an action execution.
--
-- * 'aeiResolvedConfiguration' - Configuration data for an action execution with all variable references replaced with their real values for the execution.
--
-- * 'aeiNamespace' - The variable namespace associated with the action. All variables produced as output by this action fall under this namespace.
--
-- * 'aeiActionTypeId' - Undocumented member.
--
-- * 'aeiInputArtifacts' - Details of input artifacts of the action that correspond to the action execution.
--
-- * 'aeiRegion' - The AWS Region for the action, such as us-east-1.
actionExecutionInput ::
  ActionExecutionInput
actionExecutionInput =
  ActionExecutionInput'
    { _aeiRoleARN = Nothing,
      _aeiConfiguration = Nothing,
      _aeiResolvedConfiguration = Nothing,
      _aeiNamespace = Nothing,
      _aeiActionTypeId = Nothing,
      _aeiInputArtifacts = Nothing,
      _aeiRegion = Nothing
    }

-- | The ARN of the IAM service role that performs the declared action. This is assumed through the roleArn for the pipeline.
aeiRoleARN :: Lens' ActionExecutionInput (Maybe Text)
aeiRoleARN = lens _aeiRoleARN (\s a -> s {_aeiRoleARN = a})

-- | Configuration data for an action execution.
aeiConfiguration :: Lens' ActionExecutionInput (HashMap Text Text)
aeiConfiguration = lens _aeiConfiguration (\s a -> s {_aeiConfiguration = a}) . _Default . _Map

-- | Configuration data for an action execution with all variable references replaced with their real values for the execution.
aeiResolvedConfiguration :: Lens' ActionExecutionInput (HashMap Text Text)
aeiResolvedConfiguration = lens _aeiResolvedConfiguration (\s a -> s {_aeiResolvedConfiguration = a}) . _Default . _Map

-- | The variable namespace associated with the action. All variables produced as output by this action fall under this namespace.
aeiNamespace :: Lens' ActionExecutionInput (Maybe Text)
aeiNamespace = lens _aeiNamespace (\s a -> s {_aeiNamespace = a})

-- | Undocumented member.
aeiActionTypeId :: Lens' ActionExecutionInput (Maybe ActionTypeId)
aeiActionTypeId = lens _aeiActionTypeId (\s a -> s {_aeiActionTypeId = a})

-- | Details of input artifacts of the action that correspond to the action execution.
aeiInputArtifacts :: Lens' ActionExecutionInput [ArtifactDetail]
aeiInputArtifacts = lens _aeiInputArtifacts (\s a -> s {_aeiInputArtifacts = a}) . _Default . _Coerce

-- | The AWS Region for the action, such as us-east-1.
aeiRegion :: Lens' ActionExecutionInput (Maybe Text)
aeiRegion = lens _aeiRegion (\s a -> s {_aeiRegion = a})

instance FromJSON ActionExecutionInput where
  parseJSON =
    withObject
      "ActionExecutionInput"
      ( \x ->
          ActionExecutionInput'
            <$> (x .:? "roleArn")
            <*> (x .:? "configuration" .!= mempty)
            <*> (x .:? "resolvedConfiguration" .!= mempty)
            <*> (x .:? "namespace")
            <*> (x .:? "actionTypeId")
            <*> (x .:? "inputArtifacts" .!= mempty)
            <*> (x .:? "region")
      )

instance Hashable ActionExecutionInput

instance NFData ActionExecutionInput

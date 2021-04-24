{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.SageMaker.Types.DebugRuleConfiguration
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.SageMaker.Types.DebugRuleConfiguration where

import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.SageMaker.Types.ProcessingInstanceType

-- | Configuration information for SageMaker Debugger rules for debugging. To learn more about how to configure the @DebugRuleConfiguration@ parameter, see <https://docs.aws.amazon.com/sagemaker/latest/dg/debugger-createtrainingjob-api.html Use the SageMaker and Debugger Configuration API Operations to Create, Update, and Debug Your Training Job> .
--
--
--
-- /See:/ 'debugRuleConfiguration' smart constructor.
data DebugRuleConfiguration = DebugRuleConfiguration'
  { _drcRuleParameters ::
      !(Maybe (Map Text Text)),
    _drcInstanceType ::
      !( Maybe
           ProcessingInstanceType
       ),
    _drcS3OutputPath ::
      !(Maybe Text),
    _drcVolumeSizeInGB ::
      !(Maybe Nat),
    _drcLocalPath ::
      !(Maybe Text),
    _drcRuleConfigurationName ::
      !Text,
    _drcRuleEvaluatorImage ::
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

-- | Creates a value of 'DebugRuleConfiguration' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'drcRuleParameters' - Runtime configuration for rule container.
--
-- * 'drcInstanceType' - The instance type to deploy a Debugger custom rule for debugging a training job.
--
-- * 'drcS3OutputPath' - Path to Amazon S3 storage location for rules.
--
-- * 'drcVolumeSizeInGB' - The size, in GB, of the ML storage volume attached to the processing instance.
--
-- * 'drcLocalPath' - Path to local storage location for output of rules. Defaults to @/opt/ml/processing/output/rule/@ .
--
-- * 'drcRuleConfigurationName' - The name of the rule configuration. It must be unique relative to other rule configuration names.
--
-- * 'drcRuleEvaluatorImage' - The Amazon Elastic Container (ECR) Image for the managed rule evaluation.
debugRuleConfiguration ::
  -- | 'drcRuleConfigurationName'
  Text ->
  -- | 'drcRuleEvaluatorImage'
  Text ->
  DebugRuleConfiguration
debugRuleConfiguration
  pRuleConfigurationName_
  pRuleEvaluatorImage_ =
    DebugRuleConfiguration'
      { _drcRuleParameters =
          Nothing,
        _drcInstanceType = Nothing,
        _drcS3OutputPath = Nothing,
        _drcVolumeSizeInGB = Nothing,
        _drcLocalPath = Nothing,
        _drcRuleConfigurationName = pRuleConfigurationName_,
        _drcRuleEvaluatorImage = pRuleEvaluatorImage_
      }

-- | Runtime configuration for rule container.
drcRuleParameters :: Lens' DebugRuleConfiguration (HashMap Text Text)
drcRuleParameters = lens _drcRuleParameters (\s a -> s {_drcRuleParameters = a}) . _Default . _Map

-- | The instance type to deploy a Debugger custom rule for debugging a training job.
drcInstanceType :: Lens' DebugRuleConfiguration (Maybe ProcessingInstanceType)
drcInstanceType = lens _drcInstanceType (\s a -> s {_drcInstanceType = a})

-- | Path to Amazon S3 storage location for rules.
drcS3OutputPath :: Lens' DebugRuleConfiguration (Maybe Text)
drcS3OutputPath = lens _drcS3OutputPath (\s a -> s {_drcS3OutputPath = a})

-- | The size, in GB, of the ML storage volume attached to the processing instance.
drcVolumeSizeInGB :: Lens' DebugRuleConfiguration (Maybe Natural)
drcVolumeSizeInGB = lens _drcVolumeSizeInGB (\s a -> s {_drcVolumeSizeInGB = a}) . mapping _Nat

-- | Path to local storage location for output of rules. Defaults to @/opt/ml/processing/output/rule/@ .
drcLocalPath :: Lens' DebugRuleConfiguration (Maybe Text)
drcLocalPath = lens _drcLocalPath (\s a -> s {_drcLocalPath = a})

-- | The name of the rule configuration. It must be unique relative to other rule configuration names.
drcRuleConfigurationName :: Lens' DebugRuleConfiguration Text
drcRuleConfigurationName = lens _drcRuleConfigurationName (\s a -> s {_drcRuleConfigurationName = a})

-- | The Amazon Elastic Container (ECR) Image for the managed rule evaluation.
drcRuleEvaluatorImage :: Lens' DebugRuleConfiguration Text
drcRuleEvaluatorImage = lens _drcRuleEvaluatorImage (\s a -> s {_drcRuleEvaluatorImage = a})

instance FromJSON DebugRuleConfiguration where
  parseJSON =
    withObject
      "DebugRuleConfiguration"
      ( \x ->
          DebugRuleConfiguration'
            <$> (x .:? "RuleParameters" .!= mempty)
            <*> (x .:? "InstanceType")
            <*> (x .:? "S3OutputPath")
            <*> (x .:? "VolumeSizeInGB")
            <*> (x .:? "LocalPath")
            <*> (x .: "RuleConfigurationName")
            <*> (x .: "RuleEvaluatorImage")
      )

instance Hashable DebugRuleConfiguration

instance NFData DebugRuleConfiguration

instance ToJSON DebugRuleConfiguration where
  toJSON DebugRuleConfiguration' {..} =
    object
      ( catMaybes
          [ ("RuleParameters" .=) <$> _drcRuleParameters,
            ("InstanceType" .=) <$> _drcInstanceType,
            ("S3OutputPath" .=) <$> _drcS3OutputPath,
            ("VolumeSizeInGB" .=) <$> _drcVolumeSizeInGB,
            ("LocalPath" .=) <$> _drcLocalPath,
            Just
              ( "RuleConfigurationName"
                  .= _drcRuleConfigurationName
              ),
            Just
              ("RuleEvaluatorImage" .= _drcRuleEvaluatorImage)
          ]
      )

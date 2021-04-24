{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.CodePipeline.Types.ActionTypeExecutor
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.CodePipeline.Types.ActionTypeExecutor where

import Network.AWS.CodePipeline.Types.ExecutorConfiguration
import Network.AWS.CodePipeline.Types.ExecutorType
import Network.AWS.Lens
import Network.AWS.Prelude

-- | The action engine, or executor, for an action type created for a provider, where the action is to be used by customers of the provider. The action engine is associated with the model used to create and update the action, such as the Lambda integration model.
--
--
--
-- /See:/ 'actionTypeExecutor' smart constructor.
data ActionTypeExecutor = ActionTypeExecutor'
  { _atePolicyStatementsTemplate ::
      !(Maybe Text),
    _ateJobTimeout :: !(Maybe Nat),
    _ateConfiguration ::
      !ExecutorConfiguration,
    _ateType :: !ExecutorType
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'ActionTypeExecutor' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'atePolicyStatementsTemplate' - The policy statement that specifies the permissions in the CodePipeline customer’s account that are needed to successfully run an action. To grant permission to another account, specify the account ID as the Principal, a domain-style identifier defined by the service, for example @codepipeline.amazonaws.com@ .
--
-- * 'ateJobTimeout' - The timeout in seconds for the job. An action execution can have multiple jobs. This is the timeout for a single job, not the entire action execution.
--
-- * 'ateConfiguration' - The action configuration properties for the action type. These properties are specified in the action definition when the action type is created.
--
-- * 'ateType' - The integration model used to create and update the action type, @Lambda@ or @JobWorker@ .
actionTypeExecutor ::
  -- | 'ateConfiguration'
  ExecutorConfiguration ->
  -- | 'ateType'
  ExecutorType ->
  ActionTypeExecutor
actionTypeExecutor pConfiguration_ pType_ =
  ActionTypeExecutor'
    { _atePolicyStatementsTemplate =
        Nothing,
      _ateJobTimeout = Nothing,
      _ateConfiguration = pConfiguration_,
      _ateType = pType_
    }

-- | The policy statement that specifies the permissions in the CodePipeline customer’s account that are needed to successfully run an action. To grant permission to another account, specify the account ID as the Principal, a domain-style identifier defined by the service, for example @codepipeline.amazonaws.com@ .
atePolicyStatementsTemplate :: Lens' ActionTypeExecutor (Maybe Text)
atePolicyStatementsTemplate = lens _atePolicyStatementsTemplate (\s a -> s {_atePolicyStatementsTemplate = a})

-- | The timeout in seconds for the job. An action execution can have multiple jobs. This is the timeout for a single job, not the entire action execution.
ateJobTimeout :: Lens' ActionTypeExecutor (Maybe Natural)
ateJobTimeout = lens _ateJobTimeout (\s a -> s {_ateJobTimeout = a}) . mapping _Nat

-- | The action configuration properties for the action type. These properties are specified in the action definition when the action type is created.
ateConfiguration :: Lens' ActionTypeExecutor ExecutorConfiguration
ateConfiguration = lens _ateConfiguration (\s a -> s {_ateConfiguration = a})

-- | The integration model used to create and update the action type, @Lambda@ or @JobWorker@ .
ateType :: Lens' ActionTypeExecutor ExecutorType
ateType = lens _ateType (\s a -> s {_ateType = a})

instance FromJSON ActionTypeExecutor where
  parseJSON =
    withObject
      "ActionTypeExecutor"
      ( \x ->
          ActionTypeExecutor'
            <$> (x .:? "policyStatementsTemplate")
            <*> (x .:? "jobTimeout")
            <*> (x .: "configuration")
            <*> (x .: "type")
      )

instance Hashable ActionTypeExecutor

instance NFData ActionTypeExecutor

instance ToJSON ActionTypeExecutor where
  toJSON ActionTypeExecutor' {..} =
    object
      ( catMaybes
          [ ("policyStatementsTemplate" .=)
              <$> _atePolicyStatementsTemplate,
            ("jobTimeout" .=) <$> _ateJobTimeout,
            Just ("configuration" .= _ateConfiguration),
            Just ("type" .= _ateType)
          ]
      )

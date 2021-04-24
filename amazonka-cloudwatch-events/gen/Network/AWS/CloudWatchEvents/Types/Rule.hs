{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.CloudWatchEvents.Types.Rule
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.CloudWatchEvents.Types.Rule where

import Network.AWS.CloudWatchEvents.Types.RuleState
import Network.AWS.Lens
import Network.AWS.Prelude

-- | Contains information about a rule in Amazon EventBridge.
--
--
--
-- /See:/ 'rule' smart constructor.
data Rule = Rule'
  { _rulEventPattern :: !(Maybe Text),
    _rulRoleARN :: !(Maybe Text),
    _rulARN :: !(Maybe Text),
    _rulEventBusName :: !(Maybe Text),
    _rulState :: !(Maybe RuleState),
    _rulScheduleExpression :: !(Maybe Text),
    _rulName :: !(Maybe Text),
    _rulManagedBy :: !(Maybe Text),
    _rulDescription :: !(Maybe Text)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'Rule' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rulEventPattern' - The event pattern of the rule. For more information, see <https://docs.aws.amazon.com/eventbridge/latest/userguide/eventbridge-and-event-patterns.html Events and Event Patterns> in the /Amazon EventBridge User Guide/ .
--
-- * 'rulRoleARN' - The Amazon Resource Name (ARN) of the role that is used for target invocation.
--
-- * 'rulARN' - The Amazon Resource Name (ARN) of the rule.
--
-- * 'rulEventBusName' - The name or ARN of the event bus associated with the rule. If you omit this, the default event bus is used.
--
-- * 'rulState' - The state of the rule.
--
-- * 'rulScheduleExpression' - The scheduling expression. For example, "cron(0 20 * * ? *)", "rate(5 minutes)".
--
-- * 'rulName' - The name of the rule.
--
-- * 'rulManagedBy' - If the rule was created on behalf of your account by an AWS service, this field displays the principal name of the service that created the rule.
--
-- * 'rulDescription' - The description of the rule.
rule ::
  Rule
rule =
  Rule'
    { _rulEventPattern = Nothing,
      _rulRoleARN = Nothing,
      _rulARN = Nothing,
      _rulEventBusName = Nothing,
      _rulState = Nothing,
      _rulScheduleExpression = Nothing,
      _rulName = Nothing,
      _rulManagedBy = Nothing,
      _rulDescription = Nothing
    }

-- | The event pattern of the rule. For more information, see <https://docs.aws.amazon.com/eventbridge/latest/userguide/eventbridge-and-event-patterns.html Events and Event Patterns> in the /Amazon EventBridge User Guide/ .
rulEventPattern :: Lens' Rule (Maybe Text)
rulEventPattern = lens _rulEventPattern (\s a -> s {_rulEventPattern = a})

-- | The Amazon Resource Name (ARN) of the role that is used for target invocation.
rulRoleARN :: Lens' Rule (Maybe Text)
rulRoleARN = lens _rulRoleARN (\s a -> s {_rulRoleARN = a})

-- | The Amazon Resource Name (ARN) of the rule.
rulARN :: Lens' Rule (Maybe Text)
rulARN = lens _rulARN (\s a -> s {_rulARN = a})

-- | The name or ARN of the event bus associated with the rule. If you omit this, the default event bus is used.
rulEventBusName :: Lens' Rule (Maybe Text)
rulEventBusName = lens _rulEventBusName (\s a -> s {_rulEventBusName = a})

-- | The state of the rule.
rulState :: Lens' Rule (Maybe RuleState)
rulState = lens _rulState (\s a -> s {_rulState = a})

-- | The scheduling expression. For example, "cron(0 20 * * ? *)", "rate(5 minutes)".
rulScheduleExpression :: Lens' Rule (Maybe Text)
rulScheduleExpression = lens _rulScheduleExpression (\s a -> s {_rulScheduleExpression = a})

-- | The name of the rule.
rulName :: Lens' Rule (Maybe Text)
rulName = lens _rulName (\s a -> s {_rulName = a})

-- | If the rule was created on behalf of your account by an AWS service, this field displays the principal name of the service that created the rule.
rulManagedBy :: Lens' Rule (Maybe Text)
rulManagedBy = lens _rulManagedBy (\s a -> s {_rulManagedBy = a})

-- | The description of the rule.
rulDescription :: Lens' Rule (Maybe Text)
rulDescription = lens _rulDescription (\s a -> s {_rulDescription = a})

instance FromJSON Rule where
  parseJSON =
    withObject
      "Rule"
      ( \x ->
          Rule'
            <$> (x .:? "EventPattern")
            <*> (x .:? "RoleArn")
            <*> (x .:? "Arn")
            <*> (x .:? "EventBusName")
            <*> (x .:? "State")
            <*> (x .:? "ScheduleExpression")
            <*> (x .:? "Name")
            <*> (x .:? "ManagedBy")
            <*> (x .:? "Description")
      )

instance Hashable Rule

instance NFData Rule

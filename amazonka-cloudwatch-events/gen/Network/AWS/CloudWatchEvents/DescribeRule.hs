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
-- Module      : Network.AWS.CloudWatchEvents.DescribeRule
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Describes the specified rule.
--
--
-- DescribeRule does not list the targets of a rule. To see the targets associated with a rule, use 'ListTargetsByRule' .
module Network.AWS.CloudWatchEvents.DescribeRule
  ( -- * Creating a Request
    describeRule,
    DescribeRule,

    -- * Request Lenses
    drrEventBusName,
    drrName,

    -- * Destructuring the Response
    describeRuleResponse,
    DescribeRuleResponse,

    -- * Response Lenses
    drrrsEventPattern,
    drrrsRoleARN,
    drrrsARN,
    drrrsEventBusName,
    drrrsState,
    drrrsScheduleExpression,
    drrrsName,
    drrrsManagedBy,
    drrrsDescription,
    drrrsCreatedBy,
    drrrsResponseStatus,
  )
where

import Network.AWS.CloudWatchEvents.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'describeRule' smart constructor.
data DescribeRule = DescribeRule'
  { _drrEventBusName ::
      !(Maybe Text),
    _drrName :: !Text
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'DescribeRule' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'drrEventBusName' - The name or ARN of the event bus associated with the rule. If you omit this, the default event bus is used.
--
-- * 'drrName' - The name of the rule.
describeRule ::
  -- | 'drrName'
  Text ->
  DescribeRule
describeRule pName_ =
  DescribeRule'
    { _drrEventBusName = Nothing,
      _drrName = pName_
    }

-- | The name or ARN of the event bus associated with the rule. If you omit this, the default event bus is used.
drrEventBusName :: Lens' DescribeRule (Maybe Text)
drrEventBusName = lens _drrEventBusName (\s a -> s {_drrEventBusName = a})

-- | The name of the rule.
drrName :: Lens' DescribeRule Text
drrName = lens _drrName (\s a -> s {_drrName = a})

instance AWSRequest DescribeRule where
  type Rs DescribeRule = DescribeRuleResponse
  request = postJSON cloudWatchEvents
  response =
    receiveJSON
      ( \s h x ->
          DescribeRuleResponse'
            <$> (x .?> "EventPattern")
            <*> (x .?> "RoleArn")
            <*> (x .?> "Arn")
            <*> (x .?> "EventBusName")
            <*> (x .?> "State")
            <*> (x .?> "ScheduleExpression")
            <*> (x .?> "Name")
            <*> (x .?> "ManagedBy")
            <*> (x .?> "Description")
            <*> (x .?> "CreatedBy")
            <*> (pure (fromEnum s))
      )

instance Hashable DescribeRule

instance NFData DescribeRule

instance ToHeaders DescribeRule where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ("AWSEvents.DescribeRule" :: ByteString),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON DescribeRule where
  toJSON DescribeRule' {..} =
    object
      ( catMaybes
          [ ("EventBusName" .=) <$> _drrEventBusName,
            Just ("Name" .= _drrName)
          ]
      )

instance ToPath DescribeRule where
  toPath = const "/"

instance ToQuery DescribeRule where
  toQuery = const mempty

-- | /See:/ 'describeRuleResponse' smart constructor.
data DescribeRuleResponse = DescribeRuleResponse'
  { _drrrsEventPattern ::
      !(Maybe Text),
    _drrrsRoleARN ::
      !(Maybe Text),
    _drrrsARN :: !(Maybe Text),
    _drrrsEventBusName ::
      !(Maybe Text),
    _drrrsState ::
      !(Maybe RuleState),
    _drrrsScheduleExpression ::
      !(Maybe Text),
    _drrrsName :: !(Maybe Text),
    _drrrsManagedBy ::
      !(Maybe Text),
    _drrrsDescription ::
      !(Maybe Text),
    _drrrsCreatedBy ::
      !(Maybe Text),
    _drrrsResponseStatus :: !Int
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'DescribeRuleResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'drrrsEventPattern' - The event pattern. For more information, see <https://docs.aws.amazon.com/eventbridge/latest/userguide/eventbridge-and-event-patterns.html Events and Event Patterns> in the /Amazon EventBridge User Guide/ .
--
-- * 'drrrsRoleARN' - The Amazon Resource Name (ARN) of the IAM role associated with the rule.
--
-- * 'drrrsARN' - The Amazon Resource Name (ARN) of the rule.
--
-- * 'drrrsEventBusName' - The name of the event bus associated with the rule.
--
-- * 'drrrsState' - Specifies whether the rule is enabled or disabled.
--
-- * 'drrrsScheduleExpression' - The scheduling expression. For example, "cron(0 20 * * ? *)", "rate(5 minutes)".
--
-- * 'drrrsName' - The name of the rule.
--
-- * 'drrrsManagedBy' - If this is a managed rule, created by an AWS service on your behalf, this field displays the principal name of the AWS service that created the rule.
--
-- * 'drrrsDescription' - The description of the rule.
--
-- * 'drrrsCreatedBy' - The account ID of the user that created the rule. If you use @PutRule@ to put a rule on an event bus in another account, the other account is the owner of the rule, and the rule ARN includes the account ID for that account. However, the value for @CreatedBy@ is the account ID as the account that created the rule in the other account.
--
-- * 'drrrsResponseStatus' - -- | The response status code.
describeRuleResponse ::
  -- | 'drrrsResponseStatus'
  Int ->
  DescribeRuleResponse
describeRuleResponse pResponseStatus_ =
  DescribeRuleResponse'
    { _drrrsEventPattern = Nothing,
      _drrrsRoleARN = Nothing,
      _drrrsARN = Nothing,
      _drrrsEventBusName = Nothing,
      _drrrsState = Nothing,
      _drrrsScheduleExpression = Nothing,
      _drrrsName = Nothing,
      _drrrsManagedBy = Nothing,
      _drrrsDescription = Nothing,
      _drrrsCreatedBy = Nothing,
      _drrrsResponseStatus = pResponseStatus_
    }

-- | The event pattern. For more information, see <https://docs.aws.amazon.com/eventbridge/latest/userguide/eventbridge-and-event-patterns.html Events and Event Patterns> in the /Amazon EventBridge User Guide/ .
drrrsEventPattern :: Lens' DescribeRuleResponse (Maybe Text)
drrrsEventPattern = lens _drrrsEventPattern (\s a -> s {_drrrsEventPattern = a})

-- | The Amazon Resource Name (ARN) of the IAM role associated with the rule.
drrrsRoleARN :: Lens' DescribeRuleResponse (Maybe Text)
drrrsRoleARN = lens _drrrsRoleARN (\s a -> s {_drrrsRoleARN = a})

-- | The Amazon Resource Name (ARN) of the rule.
drrrsARN :: Lens' DescribeRuleResponse (Maybe Text)
drrrsARN = lens _drrrsARN (\s a -> s {_drrrsARN = a})

-- | The name of the event bus associated with the rule.
drrrsEventBusName :: Lens' DescribeRuleResponse (Maybe Text)
drrrsEventBusName = lens _drrrsEventBusName (\s a -> s {_drrrsEventBusName = a})

-- | Specifies whether the rule is enabled or disabled.
drrrsState :: Lens' DescribeRuleResponse (Maybe RuleState)
drrrsState = lens _drrrsState (\s a -> s {_drrrsState = a})

-- | The scheduling expression. For example, "cron(0 20 * * ? *)", "rate(5 minutes)".
drrrsScheduleExpression :: Lens' DescribeRuleResponse (Maybe Text)
drrrsScheduleExpression = lens _drrrsScheduleExpression (\s a -> s {_drrrsScheduleExpression = a})

-- | The name of the rule.
drrrsName :: Lens' DescribeRuleResponse (Maybe Text)
drrrsName = lens _drrrsName (\s a -> s {_drrrsName = a})

-- | If this is a managed rule, created by an AWS service on your behalf, this field displays the principal name of the AWS service that created the rule.
drrrsManagedBy :: Lens' DescribeRuleResponse (Maybe Text)
drrrsManagedBy = lens _drrrsManagedBy (\s a -> s {_drrrsManagedBy = a})

-- | The description of the rule.
drrrsDescription :: Lens' DescribeRuleResponse (Maybe Text)
drrrsDescription = lens _drrrsDescription (\s a -> s {_drrrsDescription = a})

-- | The account ID of the user that created the rule. If you use @PutRule@ to put a rule on an event bus in another account, the other account is the owner of the rule, and the rule ARN includes the account ID for that account. However, the value for @CreatedBy@ is the account ID as the account that created the rule in the other account.
drrrsCreatedBy :: Lens' DescribeRuleResponse (Maybe Text)
drrrsCreatedBy = lens _drrrsCreatedBy (\s a -> s {_drrrsCreatedBy = a})

-- | -- | The response status code.
drrrsResponseStatus :: Lens' DescribeRuleResponse Int
drrrsResponseStatus = lens _drrrsResponseStatus (\s a -> s {_drrrsResponseStatus = a})

instance NFData DescribeRuleResponse

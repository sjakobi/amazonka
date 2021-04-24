{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.SES.Types.StopAction
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.SES.Types.StopAction where

import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.SES.Types.StopScope

-- | When included in a receipt rule, this action terminates the evaluation of the receipt rule set and, optionally, publishes a notification to Amazon Simple Notification Service (Amazon SNS).
--
--
-- For information about setting a stop action in a receipt rule, see the <https://docs.aws.amazon.com/ses/latest/DeveloperGuide/receiving-email-action-stop.html Amazon SES Developer Guide> .
--
--
-- /See:/ 'stopAction' smart constructor.
data StopAction = StopAction'
  { _saTopicARN ::
      !(Maybe Text),
    _saScope :: !StopScope
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'StopAction' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'saTopicARN' - The Amazon Resource Name (ARN) of the Amazon SNS topic to notify when the stop action is taken. An example of an Amazon SNS topic ARN is @arn:aws:sns:us-west-2:123456789012:MyTopic@ . For more information about Amazon SNS topics, see the <https://docs.aws.amazon.com/sns/latest/dg/CreateTopic.html Amazon SNS Developer Guide> .
--
-- * 'saScope' - The scope of the StopAction. The only acceptable value is @RuleSet@ .
stopAction ::
  -- | 'saScope'
  StopScope ->
  StopAction
stopAction pScope_ =
  StopAction'
    { _saTopicARN = Nothing,
      _saScope = pScope_
    }

-- | The Amazon Resource Name (ARN) of the Amazon SNS topic to notify when the stop action is taken. An example of an Amazon SNS topic ARN is @arn:aws:sns:us-west-2:123456789012:MyTopic@ . For more information about Amazon SNS topics, see the <https://docs.aws.amazon.com/sns/latest/dg/CreateTopic.html Amazon SNS Developer Guide> .
saTopicARN :: Lens' StopAction (Maybe Text)
saTopicARN = lens _saTopicARN (\s a -> s {_saTopicARN = a})

-- | The scope of the StopAction. The only acceptable value is @RuleSet@ .
saScope :: Lens' StopAction StopScope
saScope = lens _saScope (\s a -> s {_saScope = a})

instance FromXML StopAction where
  parseXML x =
    StopAction'
      <$> (x .@? "TopicArn") <*> (x .@ "Scope")

instance Hashable StopAction

instance NFData StopAction

instance ToQuery StopAction where
  toQuery StopAction' {..} =
    mconcat
      ["TopicArn" =: _saTopicARN, "Scope" =: _saScope]

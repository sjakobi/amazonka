{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.IoT.Types.TopicRuleListItem
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.IoT.Types.TopicRuleListItem where

import Network.AWS.Lens
import Network.AWS.Prelude

-- | Describes a rule.
--
--
--
-- /See:/ 'topicRuleListItem' smart constructor.
data TopicRuleListItem = TopicRuleListItem'
  { _trliRuleName ::
      !(Maybe Text),
    _trliRuleARN :: !(Maybe Text),
    _trliCreatedAt :: !(Maybe POSIX),
    _trliTopicPattern :: !(Maybe Text),
    _trliRuleDisabled :: !(Maybe Bool)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'TopicRuleListItem' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'trliRuleName' - The name of the rule.
--
-- * 'trliRuleARN' - The rule ARN.
--
-- * 'trliCreatedAt' - The date and time the rule was created.
--
-- * 'trliTopicPattern' - The pattern for the topic names that apply.
--
-- * 'trliRuleDisabled' - Specifies whether the rule is disabled.
topicRuleListItem ::
  TopicRuleListItem
topicRuleListItem =
  TopicRuleListItem'
    { _trliRuleName = Nothing,
      _trliRuleARN = Nothing,
      _trliCreatedAt = Nothing,
      _trliTopicPattern = Nothing,
      _trliRuleDisabled = Nothing
    }

-- | The name of the rule.
trliRuleName :: Lens' TopicRuleListItem (Maybe Text)
trliRuleName = lens _trliRuleName (\s a -> s {_trliRuleName = a})

-- | The rule ARN.
trliRuleARN :: Lens' TopicRuleListItem (Maybe Text)
trliRuleARN = lens _trliRuleARN (\s a -> s {_trliRuleARN = a})

-- | The date and time the rule was created.
trliCreatedAt :: Lens' TopicRuleListItem (Maybe UTCTime)
trliCreatedAt = lens _trliCreatedAt (\s a -> s {_trliCreatedAt = a}) . mapping _Time

-- | The pattern for the topic names that apply.
trliTopicPattern :: Lens' TopicRuleListItem (Maybe Text)
trliTopicPattern = lens _trliTopicPattern (\s a -> s {_trliTopicPattern = a})

-- | Specifies whether the rule is disabled.
trliRuleDisabled :: Lens' TopicRuleListItem (Maybe Bool)
trliRuleDisabled = lens _trliRuleDisabled (\s a -> s {_trliRuleDisabled = a})

instance FromJSON TopicRuleListItem where
  parseJSON =
    withObject
      "TopicRuleListItem"
      ( \x ->
          TopicRuleListItem'
            <$> (x .:? "ruleName")
            <*> (x .:? "ruleArn")
            <*> (x .:? "createdAt")
            <*> (x .:? "topicPattern")
            <*> (x .:? "ruleDisabled")
      )

instance Hashable TopicRuleListItem

instance NFData TopicRuleListItem

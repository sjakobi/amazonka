{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.FMS.Types.StatelessRuleGroup
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.FMS.Types.StatelessRuleGroup where

import Network.AWS.Lens
import Network.AWS.Prelude

-- | AWS Network Firewall stateless rule group, used in a 'NetworkFirewallPolicyDescription' .
--
--
--
-- /See:/ 'statelessRuleGroup' smart constructor.
data StatelessRuleGroup = StatelessRuleGroup'
  { _srgResourceId ::
      !(Maybe Text),
    _srgPriority :: !(Maybe Nat),
    _srgRuleGroupName ::
      !(Maybe Text)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'StatelessRuleGroup' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'srgResourceId' - The resource ID of the rule group.
--
-- * 'srgPriority' - The priority of the rule group. AWS Network Firewall evaluates the stateless rule groups in a firewall policy starting from the lowest priority setting.
--
-- * 'srgRuleGroupName' - The name of the rule group.
statelessRuleGroup ::
  StatelessRuleGroup
statelessRuleGroup =
  StatelessRuleGroup'
    { _srgResourceId = Nothing,
      _srgPriority = Nothing,
      _srgRuleGroupName = Nothing
    }

-- | The resource ID of the rule group.
srgResourceId :: Lens' StatelessRuleGroup (Maybe Text)
srgResourceId = lens _srgResourceId (\s a -> s {_srgResourceId = a})

-- | The priority of the rule group. AWS Network Firewall evaluates the stateless rule groups in a firewall policy starting from the lowest priority setting.
srgPriority :: Lens' StatelessRuleGroup (Maybe Natural)
srgPriority = lens _srgPriority (\s a -> s {_srgPriority = a}) . mapping _Nat

-- | The name of the rule group.
srgRuleGroupName :: Lens' StatelessRuleGroup (Maybe Text)
srgRuleGroupName = lens _srgRuleGroupName (\s a -> s {_srgRuleGroupName = a})

instance FromJSON StatelessRuleGroup where
  parseJSON =
    withObject
      "StatelessRuleGroup"
      ( \x ->
          StatelessRuleGroup'
            <$> (x .:? "ResourceId")
            <*> (x .:? "Priority")
            <*> (x .:? "RuleGroupName")
      )

instance Hashable StatelessRuleGroup

instance NFData StatelessRuleGroup

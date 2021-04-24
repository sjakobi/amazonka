{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.FMS.Types.StatefulRuleGroup
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.FMS.Types.StatefulRuleGroup where

import Network.AWS.Lens
import Network.AWS.Prelude

-- | AWS Network Firewall stateful rule group, used in a 'NetworkFirewallPolicyDescription' .
--
--
--
-- /See:/ 'statefulRuleGroup' smart constructor.
data StatefulRuleGroup = StatefulRuleGroup'
  { _sResourceId ::
      !(Maybe Text),
    _sRuleGroupName :: !(Maybe Text)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'StatefulRuleGroup' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'sResourceId' - The resource ID of the rule group.
--
-- * 'sRuleGroupName' - The name of the rule group.
statefulRuleGroup ::
  StatefulRuleGroup
statefulRuleGroup =
  StatefulRuleGroup'
    { _sResourceId = Nothing,
      _sRuleGroupName = Nothing
    }

-- | The resource ID of the rule group.
sResourceId :: Lens' StatefulRuleGroup (Maybe Text)
sResourceId = lens _sResourceId (\s a -> s {_sResourceId = a})

-- | The name of the rule group.
sRuleGroupName :: Lens' StatefulRuleGroup (Maybe Text)
sRuleGroupName = lens _sRuleGroupName (\s a -> s {_sRuleGroupName = a})

instance FromJSON StatefulRuleGroup where
  parseJSON =
    withObject
      "StatefulRuleGroup"
      ( \x ->
          StatefulRuleGroup'
            <$> (x .:? "ResourceId") <*> (x .:? "RuleGroupName")
      )

instance Hashable StatefulRuleGroup

instance NFData StatefulRuleGroup

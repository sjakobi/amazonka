{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.FMS.Types.NetworkFirewallPolicyDescription
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.FMS.Types.NetworkFirewallPolicyDescription where

import Network.AWS.FMS.Types.StatefulRuleGroup
import Network.AWS.FMS.Types.StatelessRuleGroup
import Network.AWS.Lens
import Network.AWS.Prelude

-- | The definition of the AWS Network Firewall firewall policy.
--
--
--
-- /See:/ 'networkFirewallPolicyDescription' smart constructor.
data NetworkFirewallPolicyDescription = NetworkFirewallPolicyDescription'
  { _nfpdStatelessRuleGroups ::
      !( Maybe
           [StatelessRuleGroup]
       ),
    _nfpdStatelessFragmentDefaultActions ::
      !( Maybe
           [Text]
       ),
    _nfpdStatelessDefaultActions ::
      !( Maybe
           [Text]
       ),
    _nfpdStatefulRuleGroups ::
      !( Maybe
           [StatefulRuleGroup]
       ),
    _nfpdStatelessCustomActions ::
      !( Maybe
           [Text]
       )
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'NetworkFirewallPolicyDescription' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'nfpdStatelessRuleGroups' - The stateless rule groups that are used in the Network Firewall firewall policy.
--
-- * 'nfpdStatelessFragmentDefaultActions' - The actions to take on packet fragments that don't match any of the stateless rule groups.
--
-- * 'nfpdStatelessDefaultActions' - The actions to take on packets that don't match any of the stateless rule groups.
--
-- * 'nfpdStatefulRuleGroups' - The stateful rule groups that are used in the Network Firewall firewall policy.
--
-- * 'nfpdStatelessCustomActions' - Names of custom actions that are available for use in the stateless default actions settings.
networkFirewallPolicyDescription ::
  NetworkFirewallPolicyDescription
networkFirewallPolicyDescription =
  NetworkFirewallPolicyDescription'
    { _nfpdStatelessRuleGroups =
        Nothing,
      _nfpdStatelessFragmentDefaultActions =
        Nothing,
      _nfpdStatelessDefaultActions = Nothing,
      _nfpdStatefulRuleGroups = Nothing,
      _nfpdStatelessCustomActions = Nothing
    }

-- | The stateless rule groups that are used in the Network Firewall firewall policy.
nfpdStatelessRuleGroups :: Lens' NetworkFirewallPolicyDescription [StatelessRuleGroup]
nfpdStatelessRuleGroups = lens _nfpdStatelessRuleGroups (\s a -> s {_nfpdStatelessRuleGroups = a}) . _Default . _Coerce

-- | The actions to take on packet fragments that don't match any of the stateless rule groups.
nfpdStatelessFragmentDefaultActions :: Lens' NetworkFirewallPolicyDescription [Text]
nfpdStatelessFragmentDefaultActions = lens _nfpdStatelessFragmentDefaultActions (\s a -> s {_nfpdStatelessFragmentDefaultActions = a}) . _Default . _Coerce

-- | The actions to take on packets that don't match any of the stateless rule groups.
nfpdStatelessDefaultActions :: Lens' NetworkFirewallPolicyDescription [Text]
nfpdStatelessDefaultActions = lens _nfpdStatelessDefaultActions (\s a -> s {_nfpdStatelessDefaultActions = a}) . _Default . _Coerce

-- | The stateful rule groups that are used in the Network Firewall firewall policy.
nfpdStatefulRuleGroups :: Lens' NetworkFirewallPolicyDescription [StatefulRuleGroup]
nfpdStatefulRuleGroups = lens _nfpdStatefulRuleGroups (\s a -> s {_nfpdStatefulRuleGroups = a}) . _Default . _Coerce

-- | Names of custom actions that are available for use in the stateless default actions settings.
nfpdStatelessCustomActions :: Lens' NetworkFirewallPolicyDescription [Text]
nfpdStatelessCustomActions = lens _nfpdStatelessCustomActions (\s a -> s {_nfpdStatelessCustomActions = a}) . _Default . _Coerce

instance FromJSON NetworkFirewallPolicyDescription where
  parseJSON =
    withObject
      "NetworkFirewallPolicyDescription"
      ( \x ->
          NetworkFirewallPolicyDescription'
            <$> (x .:? "StatelessRuleGroups" .!= mempty)
            <*> (x .:? "StatelessFragmentDefaultActions" .!= mempty)
            <*> (x .:? "StatelessDefaultActions" .!= mempty)
            <*> (x .:? "StatefulRuleGroups" .!= mempty)
            <*> (x .:? "StatelessCustomActions" .!= mempty)
      )

instance Hashable NetworkFirewallPolicyDescription

instance NFData NetworkFirewallPolicyDescription

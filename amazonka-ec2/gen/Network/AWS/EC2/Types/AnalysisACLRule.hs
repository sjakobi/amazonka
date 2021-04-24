{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.EC2.Types.AnalysisACLRule
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.EC2.Types.AnalysisACLRule where

import Network.AWS.EC2.Internal
import Network.AWS.EC2.Types.PortRange
import Network.AWS.Lens
import Network.AWS.Prelude

-- | Describes a network access control (ACL) rule.
--
--
--
-- /See:/ 'analysisACLRule' smart constructor.
data AnalysisACLRule = AnalysisACLRule'
  { _aarPortRange ::
      !(Maybe PortRange),
    _aarRuleAction :: !(Maybe Text),
    _aarEgress :: !(Maybe Bool),
    _aarCidr :: !(Maybe Text),
    _aarProtocol :: !(Maybe Text),
    _aarRuleNumber :: !(Maybe Int)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'AnalysisACLRule' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'aarPortRange' - The range of ports.
--
-- * 'aarRuleAction' - Indicates whether to allow or deny traffic that matches the rule.
--
-- * 'aarEgress' - Indicates whether the rule is an outbound rule.
--
-- * 'aarCidr' - The IPv4 address range, in CIDR notation.
--
-- * 'aarProtocol' - The protocol.
--
-- * 'aarRuleNumber' - The rule number.
analysisACLRule ::
  AnalysisACLRule
analysisACLRule =
  AnalysisACLRule'
    { _aarPortRange = Nothing,
      _aarRuleAction = Nothing,
      _aarEgress = Nothing,
      _aarCidr = Nothing,
      _aarProtocol = Nothing,
      _aarRuleNumber = Nothing
    }

-- | The range of ports.
aarPortRange :: Lens' AnalysisACLRule (Maybe PortRange)
aarPortRange = lens _aarPortRange (\s a -> s {_aarPortRange = a})

-- | Indicates whether to allow or deny traffic that matches the rule.
aarRuleAction :: Lens' AnalysisACLRule (Maybe Text)
aarRuleAction = lens _aarRuleAction (\s a -> s {_aarRuleAction = a})

-- | Indicates whether the rule is an outbound rule.
aarEgress :: Lens' AnalysisACLRule (Maybe Bool)
aarEgress = lens _aarEgress (\s a -> s {_aarEgress = a})

-- | The IPv4 address range, in CIDR notation.
aarCidr :: Lens' AnalysisACLRule (Maybe Text)
aarCidr = lens _aarCidr (\s a -> s {_aarCidr = a})

-- | The protocol.
aarProtocol :: Lens' AnalysisACLRule (Maybe Text)
aarProtocol = lens _aarProtocol (\s a -> s {_aarProtocol = a})

-- | The rule number.
aarRuleNumber :: Lens' AnalysisACLRule (Maybe Int)
aarRuleNumber = lens _aarRuleNumber (\s a -> s {_aarRuleNumber = a})

instance FromXML AnalysisACLRule where
  parseXML x =
    AnalysisACLRule'
      <$> (x .@? "portRange")
      <*> (x .@? "ruleAction")
      <*> (x .@? "egress")
      <*> (x .@? "cidr")
      <*> (x .@? "protocol")
      <*> (x .@? "ruleNumber")

instance Hashable AnalysisACLRule

instance NFData AnalysisACLRule

{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.EC2.Types.AnalysisSecurityGroupRule
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.EC2.Types.AnalysisSecurityGroupRule where

import Network.AWS.EC2.Internal
import Network.AWS.EC2.Types.PortRange
import Network.AWS.Lens
import Network.AWS.Prelude

-- | Describes a security group rule.
--
--
--
-- /See:/ 'analysisSecurityGroupRule' smart constructor.
data AnalysisSecurityGroupRule = AnalysisSecurityGroupRule'
  { _asgrSecurityGroupId ::
      !(Maybe Text),
    _asgrPortRange ::
      !(Maybe PortRange),
    _asgrDirection ::
      !(Maybe Text),
    _asgrPrefixListId ::
      !(Maybe Text),
    _asgrCidr ::
      !(Maybe Text),
    _asgrProtocol ::
      !(Maybe Text)
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'AnalysisSecurityGroupRule' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'asgrSecurityGroupId' - The security group ID.
--
-- * 'asgrPortRange' - The port range.
--
-- * 'asgrDirection' - The direction. The following are possible values:     * egress     * ingress
--
-- * 'asgrPrefixListId' - The prefix list ID.
--
-- * 'asgrCidr' - The IPv4 address range, in CIDR notation.
--
-- * 'asgrProtocol' - The protocol name.
analysisSecurityGroupRule ::
  AnalysisSecurityGroupRule
analysisSecurityGroupRule =
  AnalysisSecurityGroupRule'
    { _asgrSecurityGroupId =
        Nothing,
      _asgrPortRange = Nothing,
      _asgrDirection = Nothing,
      _asgrPrefixListId = Nothing,
      _asgrCidr = Nothing,
      _asgrProtocol = Nothing
    }

-- | The security group ID.
asgrSecurityGroupId :: Lens' AnalysisSecurityGroupRule (Maybe Text)
asgrSecurityGroupId = lens _asgrSecurityGroupId (\s a -> s {_asgrSecurityGroupId = a})

-- | The port range.
asgrPortRange :: Lens' AnalysisSecurityGroupRule (Maybe PortRange)
asgrPortRange = lens _asgrPortRange (\s a -> s {_asgrPortRange = a})

-- | The direction. The following are possible values:     * egress     * ingress
asgrDirection :: Lens' AnalysisSecurityGroupRule (Maybe Text)
asgrDirection = lens _asgrDirection (\s a -> s {_asgrDirection = a})

-- | The prefix list ID.
asgrPrefixListId :: Lens' AnalysisSecurityGroupRule (Maybe Text)
asgrPrefixListId = lens _asgrPrefixListId (\s a -> s {_asgrPrefixListId = a})

-- | The IPv4 address range, in CIDR notation.
asgrCidr :: Lens' AnalysisSecurityGroupRule (Maybe Text)
asgrCidr = lens _asgrCidr (\s a -> s {_asgrCidr = a})

-- | The protocol name.
asgrProtocol :: Lens' AnalysisSecurityGroupRule (Maybe Text)
asgrProtocol = lens _asgrProtocol (\s a -> s {_asgrProtocol = a})

instance FromXML AnalysisSecurityGroupRule where
  parseXML x =
    AnalysisSecurityGroupRule'
      <$> (x .@? "securityGroupId")
      <*> (x .@? "portRange")
      <*> (x .@? "direction")
      <*> (x .@? "prefixListId")
      <*> (x .@? "cidr")
      <*> (x .@? "protocol")

instance Hashable AnalysisSecurityGroupRule

instance NFData AnalysisSecurityGroupRule

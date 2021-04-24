{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.GuardDuty.Types.Action
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.GuardDuty.Types.Action where

import Network.AWS.GuardDuty.Types.AWSAPICallAction
import Network.AWS.GuardDuty.Types.DNSRequestAction
import Network.AWS.GuardDuty.Types.NetworkConnectionAction
import Network.AWS.GuardDuty.Types.PortProbeAction
import Network.AWS.Lens
import Network.AWS.Prelude

-- | Contains information about actions.
--
--
--
-- /See:/ 'action' smart constructor.
data Action = Action'
  { _aActionType :: !(Maybe Text),
    _aDNSRequestAction :: !(Maybe DNSRequestAction),
    _aNetworkConnectionAction ::
      !(Maybe NetworkConnectionAction),
    _aAWSAPICallAction :: !(Maybe AWSAPICallAction),
    _aPortProbeAction :: !(Maybe PortProbeAction)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'Action' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'aActionType' - The GuardDuty finding activity type.
--
-- * 'aDNSRequestAction' - Information about the DNS_REQUEST action described in this finding.
--
-- * 'aNetworkConnectionAction' - Information about the NETWORK_CONNECTION action described in this finding.
--
-- * 'aAWSAPICallAction' - Information about the AWS_API_CALL action described in this finding.
--
-- * 'aPortProbeAction' - Information about the PORT_PROBE action described in this finding.
action ::
  Action
action =
  Action'
    { _aActionType = Nothing,
      _aDNSRequestAction = Nothing,
      _aNetworkConnectionAction = Nothing,
      _aAWSAPICallAction = Nothing,
      _aPortProbeAction = Nothing
    }

-- | The GuardDuty finding activity type.
aActionType :: Lens' Action (Maybe Text)
aActionType = lens _aActionType (\s a -> s {_aActionType = a})

-- | Information about the DNS_REQUEST action described in this finding.
aDNSRequestAction :: Lens' Action (Maybe DNSRequestAction)
aDNSRequestAction = lens _aDNSRequestAction (\s a -> s {_aDNSRequestAction = a})

-- | Information about the NETWORK_CONNECTION action described in this finding.
aNetworkConnectionAction :: Lens' Action (Maybe NetworkConnectionAction)
aNetworkConnectionAction = lens _aNetworkConnectionAction (\s a -> s {_aNetworkConnectionAction = a})

-- | Information about the AWS_API_CALL action described in this finding.
aAWSAPICallAction :: Lens' Action (Maybe AWSAPICallAction)
aAWSAPICallAction = lens _aAWSAPICallAction (\s a -> s {_aAWSAPICallAction = a})

-- | Information about the PORT_PROBE action described in this finding.
aPortProbeAction :: Lens' Action (Maybe PortProbeAction)
aPortProbeAction = lens _aPortProbeAction (\s a -> s {_aPortProbeAction = a})

instance FromJSON Action where
  parseJSON =
    withObject
      "Action"
      ( \x ->
          Action'
            <$> (x .:? "actionType")
            <*> (x .:? "dnsRequestAction")
            <*> (x .:? "networkConnectionAction")
            <*> (x .:? "awsApiCallAction")
            <*> (x .:? "portProbeAction")
      )

instance Hashable Action

instance NFData Action

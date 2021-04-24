{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.EC2.Types.ClientVPNAuthorizationRuleStatus
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.EC2.Types.ClientVPNAuthorizationRuleStatus where

import Network.AWS.EC2.Internal
import Network.AWS.EC2.Types.ClientVPNAuthorizationRuleStatusCode
import Network.AWS.Lens
import Network.AWS.Prelude

-- | Describes the state of an authorization rule.
--
--
--
-- /See:/ 'clientVPNAuthorizationRuleStatus' smart constructor.
data ClientVPNAuthorizationRuleStatus = ClientVPNAuthorizationRuleStatus'
  { _cvarsMessage ::
      !( Maybe
           Text
       ),
    _cvarsCode ::
      !( Maybe
           ClientVPNAuthorizationRuleStatusCode
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

-- | Creates a value of 'ClientVPNAuthorizationRuleStatus' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cvarsMessage' - A message about the status of the authorization rule, if applicable.
--
-- * 'cvarsCode' - The state of the authorization rule.
clientVPNAuthorizationRuleStatus ::
  ClientVPNAuthorizationRuleStatus
clientVPNAuthorizationRuleStatus =
  ClientVPNAuthorizationRuleStatus'
    { _cvarsMessage =
        Nothing,
      _cvarsCode = Nothing
    }

-- | A message about the status of the authorization rule, if applicable.
cvarsMessage :: Lens' ClientVPNAuthorizationRuleStatus (Maybe Text)
cvarsMessage = lens _cvarsMessage (\s a -> s {_cvarsMessage = a})

-- | The state of the authorization rule.
cvarsCode :: Lens' ClientVPNAuthorizationRuleStatus (Maybe ClientVPNAuthorizationRuleStatusCode)
cvarsCode = lens _cvarsCode (\s a -> s {_cvarsCode = a})

instance FromXML ClientVPNAuthorizationRuleStatus where
  parseXML x =
    ClientVPNAuthorizationRuleStatus'
      <$> (x .@? "message") <*> (x .@? "code")

instance Hashable ClientVPNAuthorizationRuleStatus

instance NFData ClientVPNAuthorizationRuleStatus

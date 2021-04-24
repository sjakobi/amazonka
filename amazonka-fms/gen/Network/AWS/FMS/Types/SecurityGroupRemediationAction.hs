{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.FMS.Types.SecurityGroupRemediationAction
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.FMS.Types.SecurityGroupRemediationAction where

import Network.AWS.FMS.Types.RemediationActionType
import Network.AWS.FMS.Types.SecurityGroupRuleDescription
import Network.AWS.Lens
import Network.AWS.Prelude

-- | Remediation option for the rule specified in the @ViolationTarget@ .
--
--
--
-- /See:/ 'securityGroupRemediationAction' smart constructor.
data SecurityGroupRemediationAction = SecurityGroupRemediationAction'
  { _sgraRemediationActionType ::
      !( Maybe
           RemediationActionType
       ),
    _sgraRemediationResult ::
      !( Maybe
           SecurityGroupRuleDescription
       ),
    _sgraIsDefaultAction ::
      !( Maybe
           Bool
       ),
    _sgraDescription ::
      !( Maybe
           Text
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

-- | Creates a value of 'SecurityGroupRemediationAction' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'sgraRemediationActionType' - The remediation action that will be performed.
--
-- * 'sgraRemediationResult' - The final state of the rule specified in the @ViolationTarget@ after it is remediated.
--
-- * 'sgraIsDefaultAction' - Indicates if the current action is the default action.
--
-- * 'sgraDescription' - Brief description of the action that will be performed.
securityGroupRemediationAction ::
  SecurityGroupRemediationAction
securityGroupRemediationAction =
  SecurityGroupRemediationAction'
    { _sgraRemediationActionType =
        Nothing,
      _sgraRemediationResult = Nothing,
      _sgraIsDefaultAction = Nothing,
      _sgraDescription = Nothing
    }

-- | The remediation action that will be performed.
sgraRemediationActionType :: Lens' SecurityGroupRemediationAction (Maybe RemediationActionType)
sgraRemediationActionType = lens _sgraRemediationActionType (\s a -> s {_sgraRemediationActionType = a})

-- | The final state of the rule specified in the @ViolationTarget@ after it is remediated.
sgraRemediationResult :: Lens' SecurityGroupRemediationAction (Maybe SecurityGroupRuleDescription)
sgraRemediationResult = lens _sgraRemediationResult (\s a -> s {_sgraRemediationResult = a})

-- | Indicates if the current action is the default action.
sgraIsDefaultAction :: Lens' SecurityGroupRemediationAction (Maybe Bool)
sgraIsDefaultAction = lens _sgraIsDefaultAction (\s a -> s {_sgraIsDefaultAction = a})

-- | Brief description of the action that will be performed.
sgraDescription :: Lens' SecurityGroupRemediationAction (Maybe Text)
sgraDescription = lens _sgraDescription (\s a -> s {_sgraDescription = a})

instance FromJSON SecurityGroupRemediationAction where
  parseJSON =
    withObject
      "SecurityGroupRemediationAction"
      ( \x ->
          SecurityGroupRemediationAction'
            <$> (x .:? "RemediationActionType")
            <*> (x .:? "RemediationResult")
            <*> (x .:? "IsDefaultAction")
            <*> (x .:? "Description")
      )

instance Hashable SecurityGroupRemediationAction

instance NFData SecurityGroupRemediationAction

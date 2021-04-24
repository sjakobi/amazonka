{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.IoT.Types.DetectMitigationActionsTaskTarget
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.IoT.Types.DetectMitigationActionsTaskTarget where

import Network.AWS.Lens
import Network.AWS.Prelude

-- | The target of a mitigation action task.
--
--
--
-- /See:/ 'detectMitigationActionsTaskTarget' smart constructor.
data DetectMitigationActionsTaskTarget = DetectMitigationActionsTaskTarget'
  { _dmattViolationIds ::
      !( Maybe
           ( List1
               Text
           )
       ),
    _dmattBehaviorName ::
      !( Maybe
           Text
       ),
    _dmattSecurityProfileName ::
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

-- | Creates a value of 'DetectMitigationActionsTaskTarget' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dmattViolationIds' - The unique identifiers of the violations.
--
-- * 'dmattBehaviorName' - The name of the behavior.
--
-- * 'dmattSecurityProfileName' - The name of the security profile.
detectMitigationActionsTaskTarget ::
  DetectMitigationActionsTaskTarget
detectMitigationActionsTaskTarget =
  DetectMitigationActionsTaskTarget'
    { _dmattViolationIds =
        Nothing,
      _dmattBehaviorName = Nothing,
      _dmattSecurityProfileName = Nothing
    }

-- | The unique identifiers of the violations.
dmattViolationIds :: Lens' DetectMitigationActionsTaskTarget (Maybe (NonEmpty Text))
dmattViolationIds = lens _dmattViolationIds (\s a -> s {_dmattViolationIds = a}) . mapping _List1

-- | The name of the behavior.
dmattBehaviorName :: Lens' DetectMitigationActionsTaskTarget (Maybe Text)
dmattBehaviorName = lens _dmattBehaviorName (\s a -> s {_dmattBehaviorName = a})

-- | The name of the security profile.
dmattSecurityProfileName :: Lens' DetectMitigationActionsTaskTarget (Maybe Text)
dmattSecurityProfileName = lens _dmattSecurityProfileName (\s a -> s {_dmattSecurityProfileName = a})

instance FromJSON DetectMitigationActionsTaskTarget where
  parseJSON =
    withObject
      "DetectMitigationActionsTaskTarget"
      ( \x ->
          DetectMitigationActionsTaskTarget'
            <$> (x .:? "violationIds")
            <*> (x .:? "behaviorName")
            <*> (x .:? "securityProfileName")
      )

instance Hashable DetectMitigationActionsTaskTarget

instance NFData DetectMitigationActionsTaskTarget

instance ToJSON DetectMitigationActionsTaskTarget where
  toJSON DetectMitigationActionsTaskTarget' {..} =
    object
      ( catMaybes
          [ ("violationIds" .=) <$> _dmattViolationIds,
            ("behaviorName" .=) <$> _dmattBehaviorName,
            ("securityProfileName" .=)
              <$> _dmattSecurityProfileName
          ]
      )

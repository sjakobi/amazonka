{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Config.Types.OrganizationConfigRuleTriggerType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Config.Types.OrganizationConfigRuleTriggerType
  ( OrganizationConfigRuleTriggerType
      ( ..,
        ConfigurationItemChangeNotification,
        OversizedConfigurationItemChangeNotification,
        ScheduledNotification
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data OrganizationConfigRuleTriggerType
  = OrganizationConfigRuleTriggerType'
      ( CI
          Text
      )
  deriving
    ( Eq,
      Ord,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

pattern ConfigurationItemChangeNotification :: OrganizationConfigRuleTriggerType
pattern ConfigurationItemChangeNotification = OrganizationConfigRuleTriggerType' "ConfigurationItemChangeNotification"

pattern OversizedConfigurationItemChangeNotification :: OrganizationConfigRuleTriggerType
pattern OversizedConfigurationItemChangeNotification = OrganizationConfigRuleTriggerType' "OversizedConfigurationItemChangeNotification"

pattern ScheduledNotification :: OrganizationConfigRuleTriggerType
pattern ScheduledNotification = OrganizationConfigRuleTriggerType' "ScheduledNotification"

{-# COMPLETE
  ConfigurationItemChangeNotification,
  OversizedConfigurationItemChangeNotification,
  ScheduledNotification,
  OrganizationConfigRuleTriggerType'
  #-}

instance FromText OrganizationConfigRuleTriggerType where
  parser = (OrganizationConfigRuleTriggerType' . mk) <$> takeText

instance ToText OrganizationConfigRuleTriggerType where
  toText (OrganizationConfigRuleTriggerType' ci) = original ci

instance Hashable OrganizationConfigRuleTriggerType

instance NFData OrganizationConfigRuleTriggerType

instance ToByteString OrganizationConfigRuleTriggerType

instance ToQuery OrganizationConfigRuleTriggerType

instance ToHeader OrganizationConfigRuleTriggerType

instance ToJSON OrganizationConfigRuleTriggerType where
  toJSON = toJSONText

instance FromJSON OrganizationConfigRuleTriggerType where
  parseJSON = parseJSONText "OrganizationConfigRuleTriggerType"

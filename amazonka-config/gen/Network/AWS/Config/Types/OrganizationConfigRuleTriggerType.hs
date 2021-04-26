{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE NoImplicitPrelude #-}
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
        OrganizationConfigRuleTriggerTypeConfigurationItemChangeNotification,
        OrganizationConfigRuleTriggerTypeOversizedConfigurationItemChangeNotification,
        OrganizationConfigRuleTriggerTypeScheduledNotification
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype OrganizationConfigRuleTriggerType = OrganizationConfigRuleTriggerType'
  { fromOrganizationConfigRuleTriggerType ::
      Prelude.Text
  }
  deriving
    ( Prelude.Eq,
      Prelude.Ord,
      Prelude.Read,
      Prelude.Show,
      Prelude.Data,
      Prelude.Typeable,
      Prelude.Generic
    )

pattern OrganizationConfigRuleTriggerTypeConfigurationItemChangeNotification :: OrganizationConfigRuleTriggerType
pattern OrganizationConfigRuleTriggerTypeConfigurationItemChangeNotification = OrganizationConfigRuleTriggerType' "ConfigurationItemChangeNotification"

pattern OrganizationConfigRuleTriggerTypeOversizedConfigurationItemChangeNotification :: OrganizationConfigRuleTriggerType
pattern OrganizationConfigRuleTriggerTypeOversizedConfigurationItemChangeNotification = OrganizationConfigRuleTriggerType' "OversizedConfigurationItemChangeNotification"

pattern OrganizationConfigRuleTriggerTypeScheduledNotification :: OrganizationConfigRuleTriggerType
pattern OrganizationConfigRuleTriggerTypeScheduledNotification = OrganizationConfigRuleTriggerType' "ScheduledNotification"

{-# COMPLETE
  OrganizationConfigRuleTriggerTypeConfigurationItemChangeNotification,
  OrganizationConfigRuleTriggerTypeOversizedConfigurationItemChangeNotification,
  OrganizationConfigRuleTriggerTypeScheduledNotification,
  OrganizationConfigRuleTriggerType'
  #-}

instance Prelude.FromText OrganizationConfigRuleTriggerType where
  parser = OrganizationConfigRuleTriggerType' Prelude.<$> Prelude.takeText

instance Prelude.ToText OrganizationConfigRuleTriggerType where
  toText (OrganizationConfigRuleTriggerType' x) = x

instance Prelude.Hashable OrganizationConfigRuleTriggerType

instance Prelude.NFData OrganizationConfigRuleTriggerType

instance Prelude.ToByteString OrganizationConfigRuleTriggerType

instance Prelude.ToQuery OrganizationConfigRuleTriggerType

instance Prelude.ToHeader OrganizationConfigRuleTriggerType

instance Prelude.ToJSON OrganizationConfigRuleTriggerType where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON OrganizationConfigRuleTriggerType where
  parseJSON = Prelude.parseJSONText "OrganizationConfigRuleTriggerType"

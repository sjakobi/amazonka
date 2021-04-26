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
-- Module      : Network.AWS.ResourceGroups.Types.GroupConfigurationStatus
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.ResourceGroups.Types.GroupConfigurationStatus
  ( GroupConfigurationStatus
      ( ..,
        GroupConfigurationStatusUPDATECOMPLETE,
        GroupConfigurationStatusUPDATEFAILED,
        GroupConfigurationStatusUPDATING
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype GroupConfigurationStatus = GroupConfigurationStatus'
  { fromGroupConfigurationStatus ::
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

pattern GroupConfigurationStatusUPDATECOMPLETE :: GroupConfigurationStatus
pattern GroupConfigurationStatusUPDATECOMPLETE = GroupConfigurationStatus' "UPDATE_COMPLETE"

pattern GroupConfigurationStatusUPDATEFAILED :: GroupConfigurationStatus
pattern GroupConfigurationStatusUPDATEFAILED = GroupConfigurationStatus' "UPDATE_FAILED"

pattern GroupConfigurationStatusUPDATING :: GroupConfigurationStatus
pattern GroupConfigurationStatusUPDATING = GroupConfigurationStatus' "UPDATING"

{-# COMPLETE
  GroupConfigurationStatusUPDATECOMPLETE,
  GroupConfigurationStatusUPDATEFAILED,
  GroupConfigurationStatusUPDATING,
  GroupConfigurationStatus'
  #-}

instance Prelude.FromText GroupConfigurationStatus where
  parser = GroupConfigurationStatus' Prelude.<$> Prelude.takeText

instance Prelude.ToText GroupConfigurationStatus where
  toText (GroupConfigurationStatus' x) = x

instance Prelude.Hashable GroupConfigurationStatus

instance Prelude.NFData GroupConfigurationStatus

instance Prelude.ToByteString GroupConfigurationStatus

instance Prelude.ToQuery GroupConfigurationStatus

instance Prelude.ToHeader GroupConfigurationStatus

instance Prelude.FromJSON GroupConfigurationStatus where
  parseJSON = Prelude.parseJSONText "GroupConfigurationStatus"

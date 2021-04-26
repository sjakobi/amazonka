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
-- Module      : Network.AWS.DirectoryService.Types.LDAPSStatus
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.DirectoryService.Types.LDAPSStatus
  ( LDAPSStatus
      ( ..,
        LDAPSStatusDisabled,
        LDAPSStatusEnableFailed,
        LDAPSStatusEnabled,
        LDAPSStatusEnabling
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype LDAPSStatus = LDAPSStatus'
  { fromLDAPSStatus ::
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

pattern LDAPSStatusDisabled :: LDAPSStatus
pattern LDAPSStatusDisabled = LDAPSStatus' "Disabled"

pattern LDAPSStatusEnableFailed :: LDAPSStatus
pattern LDAPSStatusEnableFailed = LDAPSStatus' "EnableFailed"

pattern LDAPSStatusEnabled :: LDAPSStatus
pattern LDAPSStatusEnabled = LDAPSStatus' "Enabled"

pattern LDAPSStatusEnabling :: LDAPSStatus
pattern LDAPSStatusEnabling = LDAPSStatus' "Enabling"

{-# COMPLETE
  LDAPSStatusDisabled,
  LDAPSStatusEnableFailed,
  LDAPSStatusEnabled,
  LDAPSStatusEnabling,
  LDAPSStatus'
  #-}

instance Prelude.FromText LDAPSStatus where
  parser = LDAPSStatus' Prelude.<$> Prelude.takeText

instance Prelude.ToText LDAPSStatus where
  toText (LDAPSStatus' x) = x

instance Prelude.Hashable LDAPSStatus

instance Prelude.NFData LDAPSStatus

instance Prelude.ToByteString LDAPSStatus

instance Prelude.ToQuery LDAPSStatus

instance Prelude.ToHeader LDAPSStatus

instance Prelude.FromJSON LDAPSStatus where
  parseJSON = Prelude.parseJSONText "LDAPSStatus"

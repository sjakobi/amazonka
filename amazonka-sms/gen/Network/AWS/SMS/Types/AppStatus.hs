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
-- Module      : Network.AWS.SMS.Types.AppStatus
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.SMS.Types.AppStatus
  ( AppStatus
      ( ..,
        AppStatusACTIVE,
        AppStatusCREATING,
        AppStatusDELETED,
        AppStatusDELETEFAILED,
        AppStatusDELETING,
        AppStatusUPDATING
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype AppStatus = AppStatus'
  { fromAppStatus ::
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

pattern AppStatusACTIVE :: AppStatus
pattern AppStatusACTIVE = AppStatus' "ACTIVE"

pattern AppStatusCREATING :: AppStatus
pattern AppStatusCREATING = AppStatus' "CREATING"

pattern AppStatusDELETED :: AppStatus
pattern AppStatusDELETED = AppStatus' "DELETED"

pattern AppStatusDELETEFAILED :: AppStatus
pattern AppStatusDELETEFAILED = AppStatus' "DELETE_FAILED"

pattern AppStatusDELETING :: AppStatus
pattern AppStatusDELETING = AppStatus' "DELETING"

pattern AppStatusUPDATING :: AppStatus
pattern AppStatusUPDATING = AppStatus' "UPDATING"

{-# COMPLETE
  AppStatusACTIVE,
  AppStatusCREATING,
  AppStatusDELETED,
  AppStatusDELETEFAILED,
  AppStatusDELETING,
  AppStatusUPDATING,
  AppStatus'
  #-}

instance Prelude.FromText AppStatus where
  parser = AppStatus' Prelude.<$> Prelude.takeText

instance Prelude.ToText AppStatus where
  toText (AppStatus' x) = x

instance Prelude.Hashable AppStatus

instance Prelude.NFData AppStatus

instance Prelude.ToByteString AppStatus

instance Prelude.ToQuery AppStatus

instance Prelude.ToHeader AppStatus

instance Prelude.FromJSON AppStatus where
  parseJSON = Prelude.parseJSONText "AppStatus"

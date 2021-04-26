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
-- Module      : Network.AWS.SageMaker.Types.AppStatus
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.SageMaker.Types.AppStatus
  ( AppStatus
      ( ..,
        AppStatusDeleted,
        AppStatusDeleting,
        AppStatusFailed,
        AppStatusInService,
        AppStatusPending
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

pattern AppStatusDeleted :: AppStatus
pattern AppStatusDeleted = AppStatus' "Deleted"

pattern AppStatusDeleting :: AppStatus
pattern AppStatusDeleting = AppStatus' "Deleting"

pattern AppStatusFailed :: AppStatus
pattern AppStatusFailed = AppStatus' "Failed"

pattern AppStatusInService :: AppStatus
pattern AppStatusInService = AppStatus' "InService"

pattern AppStatusPending :: AppStatus
pattern AppStatusPending = AppStatus' "Pending"

{-# COMPLETE
  AppStatusDeleted,
  AppStatusDeleting,
  AppStatusFailed,
  AppStatusInService,
  AppStatusPending,
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

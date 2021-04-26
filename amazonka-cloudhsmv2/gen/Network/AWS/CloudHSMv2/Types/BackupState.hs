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
-- Module      : Network.AWS.CloudHSMv2.Types.BackupState
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.CloudHSMv2.Types.BackupState
  ( BackupState
      ( ..,
        BackupStateCREATEINPROGRESS,
        BackupStateDELETED,
        BackupStatePENDINGDELETION,
        BackupStateREADY
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype BackupState = BackupState'
  { fromBackupState ::
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

pattern BackupStateCREATEINPROGRESS :: BackupState
pattern BackupStateCREATEINPROGRESS = BackupState' "CREATE_IN_PROGRESS"

pattern BackupStateDELETED :: BackupState
pattern BackupStateDELETED = BackupState' "DELETED"

pattern BackupStatePENDINGDELETION :: BackupState
pattern BackupStatePENDINGDELETION = BackupState' "PENDING_DELETION"

pattern BackupStateREADY :: BackupState
pattern BackupStateREADY = BackupState' "READY"

{-# COMPLETE
  BackupStateCREATEINPROGRESS,
  BackupStateDELETED,
  BackupStatePENDINGDELETION,
  BackupStateREADY,
  BackupState'
  #-}

instance Prelude.FromText BackupState where
  parser = BackupState' Prelude.<$> Prelude.takeText

instance Prelude.ToText BackupState where
  toText (BackupState' x) = x

instance Prelude.Hashable BackupState

instance Prelude.NFData BackupState

instance Prelude.ToByteString BackupState

instance Prelude.ToQuery BackupState

instance Prelude.ToHeader BackupState

instance Prelude.FromJSON BackupState where
  parseJSON = Prelude.parseJSONText "BackupState"

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
-- Module      : Network.AWS.DirectoryService.Types.TrustState
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.DirectoryService.Types.TrustState
  ( TrustState
      ( ..,
        TrustStateCreated,
        TrustStateCreating,
        TrustStateDeleted,
        TrustStateDeleting,
        TrustStateFailed,
        TrustStateUpdateFailed,
        TrustStateUpdated,
        TrustStateUpdating,
        TrustStateVerified,
        TrustStateVerifyFailed,
        TrustStateVerifying
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype TrustState = TrustState'
  { fromTrustState ::
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

pattern TrustStateCreated :: TrustState
pattern TrustStateCreated = TrustState' "Created"

pattern TrustStateCreating :: TrustState
pattern TrustStateCreating = TrustState' "Creating"

pattern TrustStateDeleted :: TrustState
pattern TrustStateDeleted = TrustState' "Deleted"

pattern TrustStateDeleting :: TrustState
pattern TrustStateDeleting = TrustState' "Deleting"

pattern TrustStateFailed :: TrustState
pattern TrustStateFailed = TrustState' "Failed"

pattern TrustStateUpdateFailed :: TrustState
pattern TrustStateUpdateFailed = TrustState' "UpdateFailed"

pattern TrustStateUpdated :: TrustState
pattern TrustStateUpdated = TrustState' "Updated"

pattern TrustStateUpdating :: TrustState
pattern TrustStateUpdating = TrustState' "Updating"

pattern TrustStateVerified :: TrustState
pattern TrustStateVerified = TrustState' "Verified"

pattern TrustStateVerifyFailed :: TrustState
pattern TrustStateVerifyFailed = TrustState' "VerifyFailed"

pattern TrustStateVerifying :: TrustState
pattern TrustStateVerifying = TrustState' "Verifying"

{-# COMPLETE
  TrustStateCreated,
  TrustStateCreating,
  TrustStateDeleted,
  TrustStateDeleting,
  TrustStateFailed,
  TrustStateUpdateFailed,
  TrustStateUpdated,
  TrustStateUpdating,
  TrustStateVerified,
  TrustStateVerifyFailed,
  TrustStateVerifying,
  TrustState'
  #-}

instance Prelude.FromText TrustState where
  parser = TrustState' Prelude.<$> Prelude.takeText

instance Prelude.ToText TrustState where
  toText (TrustState' x) = x

instance Prelude.Hashable TrustState

instance Prelude.NFData TrustState

instance Prelude.ToByteString TrustState

instance Prelude.ToQuery TrustState

instance Prelude.ToHeader TrustState

instance Prelude.FromJSON TrustState where
  parseJSON = Prelude.parseJSONText "TrustState"

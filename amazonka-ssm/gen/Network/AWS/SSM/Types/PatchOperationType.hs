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
-- Module      : Network.AWS.SSM.Types.PatchOperationType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.SSM.Types.PatchOperationType
  ( PatchOperationType
      ( ..,
        PatchOperationTypeInstall,
        PatchOperationTypeScan
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype PatchOperationType = PatchOperationType'
  { fromPatchOperationType ::
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

pattern PatchOperationTypeInstall :: PatchOperationType
pattern PatchOperationTypeInstall = PatchOperationType' "Install"

pattern PatchOperationTypeScan :: PatchOperationType
pattern PatchOperationTypeScan = PatchOperationType' "Scan"

{-# COMPLETE
  PatchOperationTypeInstall,
  PatchOperationTypeScan,
  PatchOperationType'
  #-}

instance Prelude.FromText PatchOperationType where
  parser = PatchOperationType' Prelude.<$> Prelude.takeText

instance Prelude.ToText PatchOperationType where
  toText (PatchOperationType' x) = x

instance Prelude.Hashable PatchOperationType

instance Prelude.NFData PatchOperationType

instance Prelude.ToByteString PatchOperationType

instance Prelude.ToQuery PatchOperationType

instance Prelude.ToHeader PatchOperationType

instance Prelude.FromJSON PatchOperationType where
  parseJSON = Prelude.parseJSONText "PatchOperationType"

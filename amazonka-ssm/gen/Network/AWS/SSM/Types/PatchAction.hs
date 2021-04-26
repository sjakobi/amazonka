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
-- Module      : Network.AWS.SSM.Types.PatchAction
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.SSM.Types.PatchAction
  ( PatchAction
      ( ..,
        PatchActionALLOWASDEPENDENCY,
        PatchActionBLOCK
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype PatchAction = PatchAction'
  { fromPatchAction ::
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

pattern PatchActionALLOWASDEPENDENCY :: PatchAction
pattern PatchActionALLOWASDEPENDENCY = PatchAction' "ALLOW_AS_DEPENDENCY"

pattern PatchActionBLOCK :: PatchAction
pattern PatchActionBLOCK = PatchAction' "BLOCK"

{-# COMPLETE
  PatchActionALLOWASDEPENDENCY,
  PatchActionBLOCK,
  PatchAction'
  #-}

instance Prelude.FromText PatchAction where
  parser = PatchAction' Prelude.<$> Prelude.takeText

instance Prelude.ToText PatchAction where
  toText (PatchAction' x) = x

instance Prelude.Hashable PatchAction

instance Prelude.NFData PatchAction

instance Prelude.ToByteString PatchAction

instance Prelude.ToQuery PatchAction

instance Prelude.ToHeader PatchAction

instance Prelude.ToJSON PatchAction where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON PatchAction where
  parseJSON = Prelude.parseJSONText "PatchAction"

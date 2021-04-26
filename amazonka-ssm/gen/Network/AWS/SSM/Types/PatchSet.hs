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
-- Module      : Network.AWS.SSM.Types.PatchSet
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.SSM.Types.PatchSet
  ( PatchSet
      ( ..,
        PatchSetAPPLICATION,
        PatchSetOS
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype PatchSet = PatchSet'
  { fromPatchSet ::
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

pattern PatchSetAPPLICATION :: PatchSet
pattern PatchSetAPPLICATION = PatchSet' "APPLICATION"

pattern PatchSetOS :: PatchSet
pattern PatchSetOS = PatchSet' "OS"

{-# COMPLETE
  PatchSetAPPLICATION,
  PatchSetOS,
  PatchSet'
  #-}

instance Prelude.FromText PatchSet where
  parser = PatchSet' Prelude.<$> Prelude.takeText

instance Prelude.ToText PatchSet where
  toText (PatchSet' x) = x

instance Prelude.Hashable PatchSet

instance Prelude.NFData PatchSet

instance Prelude.ToByteString PatchSet

instance Prelude.ToQuery PatchSet

instance Prelude.ToHeader PatchSet

instance Prelude.ToJSON PatchSet where
  toJSON = Prelude.toJSONText

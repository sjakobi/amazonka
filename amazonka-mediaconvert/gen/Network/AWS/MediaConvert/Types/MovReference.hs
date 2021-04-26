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
-- Module      : Network.AWS.MediaConvert.Types.MovReference
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaConvert.Types.MovReference
  ( MovReference
      ( ..,
        MovReferenceEXTERNAL,
        MovReferenceSELFCONTAINED
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

-- | Always keep the default value (SELF_CONTAINED) for this setting.
newtype MovReference = MovReference'
  { fromMovReference ::
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

pattern MovReferenceEXTERNAL :: MovReference
pattern MovReferenceEXTERNAL = MovReference' "EXTERNAL"

pattern MovReferenceSELFCONTAINED :: MovReference
pattern MovReferenceSELFCONTAINED = MovReference' "SELF_CONTAINED"

{-# COMPLETE
  MovReferenceEXTERNAL,
  MovReferenceSELFCONTAINED,
  MovReference'
  #-}

instance Prelude.FromText MovReference where
  parser = MovReference' Prelude.<$> Prelude.takeText

instance Prelude.ToText MovReference where
  toText (MovReference' x) = x

instance Prelude.Hashable MovReference

instance Prelude.NFData MovReference

instance Prelude.ToByteString MovReference

instance Prelude.ToQuery MovReference

instance Prelude.ToHeader MovReference

instance Prelude.ToJSON MovReference where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON MovReference where
  parseJSON = Prelude.parseJSONText "MovReference"

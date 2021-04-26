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
-- Module      : Network.AWS.MediaConvert.Types.MovCslgAtom
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaConvert.Types.MovCslgAtom
  ( MovCslgAtom
      ( ..,
        MovCslgAtomEXCLUDE,
        MovCslgAtomINCLUDE
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

-- | When enabled, file composition times will start at zero, composition
-- times in the \'ctts\' (composition time to sample) box for B-frames will
-- be negative, and a \'cslg\' (composition shift least greatest) box will
-- be included per 14496-1 amendment 1. This improves compatibility with
-- Apple players and tools.
newtype MovCslgAtom = MovCslgAtom'
  { fromMovCslgAtom ::
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

pattern MovCslgAtomEXCLUDE :: MovCslgAtom
pattern MovCslgAtomEXCLUDE = MovCslgAtom' "EXCLUDE"

pattern MovCslgAtomINCLUDE :: MovCslgAtom
pattern MovCslgAtomINCLUDE = MovCslgAtom' "INCLUDE"

{-# COMPLETE
  MovCslgAtomEXCLUDE,
  MovCslgAtomINCLUDE,
  MovCslgAtom'
  #-}

instance Prelude.FromText MovCslgAtom where
  parser = MovCslgAtom' Prelude.<$> Prelude.takeText

instance Prelude.ToText MovCslgAtom where
  toText (MovCslgAtom' x) = x

instance Prelude.Hashable MovCslgAtom

instance Prelude.NFData MovCslgAtom

instance Prelude.ToByteString MovCslgAtom

instance Prelude.ToQuery MovCslgAtom

instance Prelude.ToHeader MovCslgAtom

instance Prelude.ToJSON MovCslgAtom where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON MovCslgAtom where
  parseJSON = Prelude.parseJSONText "MovCslgAtom"

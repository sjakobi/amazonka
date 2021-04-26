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
-- Module      : Network.AWS.MediaConvert.Types.MovClapAtom
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaConvert.Types.MovClapAtom
  ( MovClapAtom
      ( ..,
        MovClapAtomEXCLUDE,
        MovClapAtomINCLUDE
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

-- | When enabled, include \'clap\' atom if appropriate for the video output
-- settings.
newtype MovClapAtom = MovClapAtom'
  { fromMovClapAtom ::
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

pattern MovClapAtomEXCLUDE :: MovClapAtom
pattern MovClapAtomEXCLUDE = MovClapAtom' "EXCLUDE"

pattern MovClapAtomINCLUDE :: MovClapAtom
pattern MovClapAtomINCLUDE = MovClapAtom' "INCLUDE"

{-# COMPLETE
  MovClapAtomEXCLUDE,
  MovClapAtomINCLUDE,
  MovClapAtom'
  #-}

instance Prelude.FromText MovClapAtom where
  parser = MovClapAtom' Prelude.<$> Prelude.takeText

instance Prelude.ToText MovClapAtom where
  toText (MovClapAtom' x) = x

instance Prelude.Hashable MovClapAtom

instance Prelude.NFData MovClapAtom

instance Prelude.ToByteString MovClapAtom

instance Prelude.ToQuery MovClapAtom

instance Prelude.ToHeader MovClapAtom

instance Prelude.ToJSON MovClapAtom where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON MovClapAtom where
  parseJSON = Prelude.parseJSONText "MovClapAtom"

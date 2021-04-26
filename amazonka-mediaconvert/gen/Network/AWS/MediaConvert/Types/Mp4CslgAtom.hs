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
-- Module      : Network.AWS.MediaConvert.Types.Mp4CslgAtom
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaConvert.Types.Mp4CslgAtom
  ( Mp4CslgAtom
      ( ..,
        Mp4CslgAtomEXCLUDE,
        Mp4CslgAtomINCLUDE
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

-- | When enabled, file composition times will start at zero, composition
-- times in the \'ctts\' (composition time to sample) box for B-frames will
-- be negative, and a \'cslg\' (composition shift least greatest) box will
-- be included per 14496-1 amendment 1. This improves compatibility with
-- Apple players and tools.
newtype Mp4CslgAtom = Mp4CslgAtom'
  { fromMp4CslgAtom ::
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

pattern Mp4CslgAtomEXCLUDE :: Mp4CslgAtom
pattern Mp4CslgAtomEXCLUDE = Mp4CslgAtom' "EXCLUDE"

pattern Mp4CslgAtomINCLUDE :: Mp4CslgAtom
pattern Mp4CslgAtomINCLUDE = Mp4CslgAtom' "INCLUDE"

{-# COMPLETE
  Mp4CslgAtomEXCLUDE,
  Mp4CslgAtomINCLUDE,
  Mp4CslgAtom'
  #-}

instance Prelude.FromText Mp4CslgAtom where
  parser = Mp4CslgAtom' Prelude.<$> Prelude.takeText

instance Prelude.ToText Mp4CslgAtom where
  toText (Mp4CslgAtom' x) = x

instance Prelude.Hashable Mp4CslgAtom

instance Prelude.NFData Mp4CslgAtom

instance Prelude.ToByteString Mp4CslgAtom

instance Prelude.ToQuery Mp4CslgAtom

instance Prelude.ToHeader Mp4CslgAtom

instance Prelude.ToJSON Mp4CslgAtom where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON Mp4CslgAtom where
  parseJSON = Prelude.parseJSONText "Mp4CslgAtom"

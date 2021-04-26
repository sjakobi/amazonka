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
-- Module      : Network.AWS.MediaLive.Types.FixedAfd
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaLive.Types.FixedAfd
  ( FixedAfd
      ( ..,
        FixedAfdAFD0000,
        FixedAfdAFD0010,
        FixedAfdAFD0011,
        FixedAfdAFD0100,
        FixedAfdAFD1000,
        FixedAfdAFD1001,
        FixedAfdAFD1010,
        FixedAfdAFD1011,
        FixedAfdAFD1101,
        FixedAfdAFD1110,
        FixedAfdAFD1111
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

-- | Fixed Afd
newtype FixedAfd = FixedAfd'
  { fromFixedAfd ::
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

pattern FixedAfdAFD0000 :: FixedAfd
pattern FixedAfdAFD0000 = FixedAfd' "AFD_0000"

pattern FixedAfdAFD0010 :: FixedAfd
pattern FixedAfdAFD0010 = FixedAfd' "AFD_0010"

pattern FixedAfdAFD0011 :: FixedAfd
pattern FixedAfdAFD0011 = FixedAfd' "AFD_0011"

pattern FixedAfdAFD0100 :: FixedAfd
pattern FixedAfdAFD0100 = FixedAfd' "AFD_0100"

pattern FixedAfdAFD1000 :: FixedAfd
pattern FixedAfdAFD1000 = FixedAfd' "AFD_1000"

pattern FixedAfdAFD1001 :: FixedAfd
pattern FixedAfdAFD1001 = FixedAfd' "AFD_1001"

pattern FixedAfdAFD1010 :: FixedAfd
pattern FixedAfdAFD1010 = FixedAfd' "AFD_1010"

pattern FixedAfdAFD1011 :: FixedAfd
pattern FixedAfdAFD1011 = FixedAfd' "AFD_1011"

pattern FixedAfdAFD1101 :: FixedAfd
pattern FixedAfdAFD1101 = FixedAfd' "AFD_1101"

pattern FixedAfdAFD1110 :: FixedAfd
pattern FixedAfdAFD1110 = FixedAfd' "AFD_1110"

pattern FixedAfdAFD1111 :: FixedAfd
pattern FixedAfdAFD1111 = FixedAfd' "AFD_1111"

{-# COMPLETE
  FixedAfdAFD0000,
  FixedAfdAFD0010,
  FixedAfdAFD0011,
  FixedAfdAFD0100,
  FixedAfdAFD1000,
  FixedAfdAFD1001,
  FixedAfdAFD1010,
  FixedAfdAFD1011,
  FixedAfdAFD1101,
  FixedAfdAFD1110,
  FixedAfdAFD1111,
  FixedAfd'
  #-}

instance Prelude.FromText FixedAfd where
  parser = FixedAfd' Prelude.<$> Prelude.takeText

instance Prelude.ToText FixedAfd where
  toText (FixedAfd' x) = x

instance Prelude.Hashable FixedAfd

instance Prelude.NFData FixedAfd

instance Prelude.ToByteString FixedAfd

instance Prelude.ToQuery FixedAfd

instance Prelude.ToHeader FixedAfd

instance Prelude.ToJSON FixedAfd where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON FixedAfd where
  parseJSON = Prelude.parseJSONText "FixedAfd"

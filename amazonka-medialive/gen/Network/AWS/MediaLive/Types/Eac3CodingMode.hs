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
-- Module      : Network.AWS.MediaLive.Types.Eac3CodingMode
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaLive.Types.Eac3CodingMode
  ( Eac3CodingMode
      ( ..,
        Eac3CodingModeCODINGMODE10,
        Eac3CodingModeCODINGMODE20,
        Eac3CodingModeCODINGMODE32
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

-- | Eac3 Coding Mode
newtype Eac3CodingMode = Eac3CodingMode'
  { fromEac3CodingMode ::
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

pattern Eac3CodingModeCODINGMODE10 :: Eac3CodingMode
pattern Eac3CodingModeCODINGMODE10 = Eac3CodingMode' "CODING_MODE_1_0"

pattern Eac3CodingModeCODINGMODE20 :: Eac3CodingMode
pattern Eac3CodingModeCODINGMODE20 = Eac3CodingMode' "CODING_MODE_2_0"

pattern Eac3CodingModeCODINGMODE32 :: Eac3CodingMode
pattern Eac3CodingModeCODINGMODE32 = Eac3CodingMode' "CODING_MODE_3_2"

{-# COMPLETE
  Eac3CodingModeCODINGMODE10,
  Eac3CodingModeCODINGMODE20,
  Eac3CodingModeCODINGMODE32,
  Eac3CodingMode'
  #-}

instance Prelude.FromText Eac3CodingMode where
  parser = Eac3CodingMode' Prelude.<$> Prelude.takeText

instance Prelude.ToText Eac3CodingMode where
  toText (Eac3CodingMode' x) = x

instance Prelude.Hashable Eac3CodingMode

instance Prelude.NFData Eac3CodingMode

instance Prelude.ToByteString Eac3CodingMode

instance Prelude.ToQuery Eac3CodingMode

instance Prelude.ToHeader Eac3CodingMode

instance Prelude.ToJSON Eac3CodingMode where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON Eac3CodingMode where
  parseJSON = Prelude.parseJSONText "Eac3CodingMode"

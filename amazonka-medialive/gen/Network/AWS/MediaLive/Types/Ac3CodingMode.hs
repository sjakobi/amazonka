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
-- Module      : Network.AWS.MediaLive.Types.Ac3CodingMode
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaLive.Types.Ac3CodingMode
  ( Ac3CodingMode
      ( ..,
        Ac3CodingModeCODINGMODE10,
        Ac3CodingModeCODINGMODE11,
        Ac3CodingModeCODINGMODE20,
        Ac3CodingModeCODINGMODE32LFE
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

-- | Ac3 Coding Mode
newtype Ac3CodingMode = Ac3CodingMode'
  { fromAc3CodingMode ::
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

pattern Ac3CodingModeCODINGMODE10 :: Ac3CodingMode
pattern Ac3CodingModeCODINGMODE10 = Ac3CodingMode' "CODING_MODE_1_0"

pattern Ac3CodingModeCODINGMODE11 :: Ac3CodingMode
pattern Ac3CodingModeCODINGMODE11 = Ac3CodingMode' "CODING_MODE_1_1"

pattern Ac3CodingModeCODINGMODE20 :: Ac3CodingMode
pattern Ac3CodingModeCODINGMODE20 = Ac3CodingMode' "CODING_MODE_2_0"

pattern Ac3CodingModeCODINGMODE32LFE :: Ac3CodingMode
pattern Ac3CodingModeCODINGMODE32LFE = Ac3CodingMode' "CODING_MODE_3_2_LFE"

{-# COMPLETE
  Ac3CodingModeCODINGMODE10,
  Ac3CodingModeCODINGMODE11,
  Ac3CodingModeCODINGMODE20,
  Ac3CodingModeCODINGMODE32LFE,
  Ac3CodingMode'
  #-}

instance Prelude.FromText Ac3CodingMode where
  parser = Ac3CodingMode' Prelude.<$> Prelude.takeText

instance Prelude.ToText Ac3CodingMode where
  toText (Ac3CodingMode' x) = x

instance Prelude.Hashable Ac3CodingMode

instance Prelude.NFData Ac3CodingMode

instance Prelude.ToByteString Ac3CodingMode

instance Prelude.ToQuery Ac3CodingMode

instance Prelude.ToHeader Ac3CodingMode

instance Prelude.ToJSON Ac3CodingMode where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON Ac3CodingMode where
  parseJSON = Prelude.parseJSONText "Ac3CodingMode"

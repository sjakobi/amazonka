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
-- Module      : Network.AWS.MediaLive.Types.Mp2CodingMode
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaLive.Types.Mp2CodingMode
  ( Mp2CodingMode
      ( ..,
        Mp2CodingModeCODINGMODE10,
        Mp2CodingModeCODINGMODE20
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

-- | Mp2 Coding Mode
newtype Mp2CodingMode = Mp2CodingMode'
  { fromMp2CodingMode ::
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

pattern Mp2CodingModeCODINGMODE10 :: Mp2CodingMode
pattern Mp2CodingModeCODINGMODE10 = Mp2CodingMode' "CODING_MODE_1_0"

pattern Mp2CodingModeCODINGMODE20 :: Mp2CodingMode
pattern Mp2CodingModeCODINGMODE20 = Mp2CodingMode' "CODING_MODE_2_0"

{-# COMPLETE
  Mp2CodingModeCODINGMODE10,
  Mp2CodingModeCODINGMODE20,
  Mp2CodingMode'
  #-}

instance Prelude.FromText Mp2CodingMode where
  parser = Mp2CodingMode' Prelude.<$> Prelude.takeText

instance Prelude.ToText Mp2CodingMode where
  toText (Mp2CodingMode' x) = x

instance Prelude.Hashable Mp2CodingMode

instance Prelude.NFData Mp2CodingMode

instance Prelude.ToByteString Mp2CodingMode

instance Prelude.ToQuery Mp2CodingMode

instance Prelude.ToHeader Mp2CodingMode

instance Prelude.ToJSON Mp2CodingMode where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON Mp2CodingMode where
  parseJSON = Prelude.parseJSONText "Mp2CodingMode"

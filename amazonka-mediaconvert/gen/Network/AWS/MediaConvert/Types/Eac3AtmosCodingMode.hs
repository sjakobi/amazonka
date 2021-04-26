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
-- Module      : Network.AWS.MediaConvert.Types.Eac3AtmosCodingMode
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaConvert.Types.Eac3AtmosCodingMode
  ( Eac3AtmosCodingMode
      ( ..,
        Eac3AtmosCodingModeCODINGMODE916
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

-- | The coding mode for Dolby Digital Plus JOC (Atmos) is always 9.1.6
-- (CODING_MODE_9_1_6).
newtype Eac3AtmosCodingMode = Eac3AtmosCodingMode'
  { fromEac3AtmosCodingMode ::
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

pattern Eac3AtmosCodingModeCODINGMODE916 :: Eac3AtmosCodingMode
pattern Eac3AtmosCodingModeCODINGMODE916 = Eac3AtmosCodingMode' "CODING_MODE_9_1_6"

{-# COMPLETE
  Eac3AtmosCodingModeCODINGMODE916,
  Eac3AtmosCodingMode'
  #-}

instance Prelude.FromText Eac3AtmosCodingMode where
  parser = Eac3AtmosCodingMode' Prelude.<$> Prelude.takeText

instance Prelude.ToText Eac3AtmosCodingMode where
  toText (Eac3AtmosCodingMode' x) = x

instance Prelude.Hashable Eac3AtmosCodingMode

instance Prelude.NFData Eac3AtmosCodingMode

instance Prelude.ToByteString Eac3AtmosCodingMode

instance Prelude.ToQuery Eac3AtmosCodingMode

instance Prelude.ToHeader Eac3AtmosCodingMode

instance Prelude.ToJSON Eac3AtmosCodingMode where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON Eac3AtmosCodingMode where
  parseJSON = Prelude.parseJSONText "Eac3AtmosCodingMode"

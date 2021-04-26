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
-- Module      : Network.AWS.MediaLive.Types.M2tsEsRateInPes
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaLive.Types.M2tsEsRateInPes
  ( M2tsEsRateInPes
      ( ..,
        M2tsEsRateInPesEXCLUDE,
        M2tsEsRateInPesINCLUDE
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

-- | M2ts Es Rate In Pes
newtype M2tsEsRateInPes = M2tsEsRateInPes'
  { fromM2tsEsRateInPes ::
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

pattern M2tsEsRateInPesEXCLUDE :: M2tsEsRateInPes
pattern M2tsEsRateInPesEXCLUDE = M2tsEsRateInPes' "EXCLUDE"

pattern M2tsEsRateInPesINCLUDE :: M2tsEsRateInPes
pattern M2tsEsRateInPesINCLUDE = M2tsEsRateInPes' "INCLUDE"

{-# COMPLETE
  M2tsEsRateInPesEXCLUDE,
  M2tsEsRateInPesINCLUDE,
  M2tsEsRateInPes'
  #-}

instance Prelude.FromText M2tsEsRateInPes where
  parser = M2tsEsRateInPes' Prelude.<$> Prelude.takeText

instance Prelude.ToText M2tsEsRateInPes where
  toText (M2tsEsRateInPes' x) = x

instance Prelude.Hashable M2tsEsRateInPes

instance Prelude.NFData M2tsEsRateInPes

instance Prelude.ToByteString M2tsEsRateInPes

instance Prelude.ToQuery M2tsEsRateInPes

instance Prelude.ToHeader M2tsEsRateInPes

instance Prelude.ToJSON M2tsEsRateInPes where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON M2tsEsRateInPes where
  parseJSON = Prelude.parseJSONText "M2tsEsRateInPes"

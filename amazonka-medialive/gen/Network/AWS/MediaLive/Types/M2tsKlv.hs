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
-- Module      : Network.AWS.MediaLive.Types.M2tsKlv
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaLive.Types.M2tsKlv
  ( M2tsKlv
      ( ..,
        M2tsKlvNONE,
        M2tsKlvPASSTHROUGH
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

-- | M2ts Klv
newtype M2tsKlv = M2tsKlv'
  { fromM2tsKlv ::
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

pattern M2tsKlvNONE :: M2tsKlv
pattern M2tsKlvNONE = M2tsKlv' "NONE"

pattern M2tsKlvPASSTHROUGH :: M2tsKlv
pattern M2tsKlvPASSTHROUGH = M2tsKlv' "PASSTHROUGH"

{-# COMPLETE
  M2tsKlvNONE,
  M2tsKlvPASSTHROUGH,
  M2tsKlv'
  #-}

instance Prelude.FromText M2tsKlv where
  parser = M2tsKlv' Prelude.<$> Prelude.takeText

instance Prelude.ToText M2tsKlv where
  toText (M2tsKlv' x) = x

instance Prelude.Hashable M2tsKlv

instance Prelude.NFData M2tsKlv

instance Prelude.ToByteString M2tsKlv

instance Prelude.ToQuery M2tsKlv

instance Prelude.ToHeader M2tsKlv

instance Prelude.ToJSON M2tsKlv where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON M2tsKlv where
  parseJSON = Prelude.parseJSONText "M2tsKlv"

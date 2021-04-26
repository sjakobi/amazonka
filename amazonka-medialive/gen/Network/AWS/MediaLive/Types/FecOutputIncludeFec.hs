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
-- Module      : Network.AWS.MediaLive.Types.FecOutputIncludeFec
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaLive.Types.FecOutputIncludeFec
  ( FecOutputIncludeFec
      ( ..,
        FecOutputIncludeFecCOLUMN,
        FecOutputIncludeFecCOLUMNANDROW
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

-- | Fec Output Include Fec
newtype FecOutputIncludeFec = FecOutputIncludeFec'
  { fromFecOutputIncludeFec ::
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

pattern FecOutputIncludeFecCOLUMN :: FecOutputIncludeFec
pattern FecOutputIncludeFecCOLUMN = FecOutputIncludeFec' "COLUMN"

pattern FecOutputIncludeFecCOLUMNANDROW :: FecOutputIncludeFec
pattern FecOutputIncludeFecCOLUMNANDROW = FecOutputIncludeFec' "COLUMN_AND_ROW"

{-# COMPLETE
  FecOutputIncludeFecCOLUMN,
  FecOutputIncludeFecCOLUMNANDROW,
  FecOutputIncludeFec'
  #-}

instance Prelude.FromText FecOutputIncludeFec where
  parser = FecOutputIncludeFec' Prelude.<$> Prelude.takeText

instance Prelude.ToText FecOutputIncludeFec where
  toText (FecOutputIncludeFec' x) = x

instance Prelude.Hashable FecOutputIncludeFec

instance Prelude.NFData FecOutputIncludeFec

instance Prelude.ToByteString FecOutputIncludeFec

instance Prelude.ToQuery FecOutputIncludeFec

instance Prelude.ToHeader FecOutputIncludeFec

instance Prelude.ToJSON FecOutputIncludeFec where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON FecOutputIncludeFec where
  parseJSON = Prelude.parseJSONText "FecOutputIncludeFec"

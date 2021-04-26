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
-- Module      : Network.AWS.AppSync.Types.ApiCacheType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.AppSync.Types.ApiCacheType
  ( ApiCacheType
      ( ..,
        ApiCacheTypeLARGE,
        ApiCacheTypeLARGE12X,
        ApiCacheTypeLARGE2X,
        ApiCacheTypeLARGE4X,
        ApiCacheTypeLARGE8X,
        ApiCacheTypeMEDIUM,
        ApiCacheTypeR42XLARGE,
        ApiCacheTypeR44XLARGE,
        ApiCacheTypeR48XLARGE,
        ApiCacheTypeR4LARGE,
        ApiCacheTypeR4XLARGE,
        ApiCacheTypeSMALL,
        ApiCacheTypeT2MEDIUM,
        ApiCacheTypeT2SMALL,
        ApiCacheTypeXLARGE
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype ApiCacheType = ApiCacheType'
  { fromApiCacheType ::
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

pattern ApiCacheTypeLARGE :: ApiCacheType
pattern ApiCacheTypeLARGE = ApiCacheType' "LARGE"

pattern ApiCacheTypeLARGE12X :: ApiCacheType
pattern ApiCacheTypeLARGE12X = ApiCacheType' "LARGE_12X"

pattern ApiCacheTypeLARGE2X :: ApiCacheType
pattern ApiCacheTypeLARGE2X = ApiCacheType' "LARGE_2X"

pattern ApiCacheTypeLARGE4X :: ApiCacheType
pattern ApiCacheTypeLARGE4X = ApiCacheType' "LARGE_4X"

pattern ApiCacheTypeLARGE8X :: ApiCacheType
pattern ApiCacheTypeLARGE8X = ApiCacheType' "LARGE_8X"

pattern ApiCacheTypeMEDIUM :: ApiCacheType
pattern ApiCacheTypeMEDIUM = ApiCacheType' "MEDIUM"

pattern ApiCacheTypeR42XLARGE :: ApiCacheType
pattern ApiCacheTypeR42XLARGE = ApiCacheType' "R4_2XLARGE"

pattern ApiCacheTypeR44XLARGE :: ApiCacheType
pattern ApiCacheTypeR44XLARGE = ApiCacheType' "R4_4XLARGE"

pattern ApiCacheTypeR48XLARGE :: ApiCacheType
pattern ApiCacheTypeR48XLARGE = ApiCacheType' "R4_8XLARGE"

pattern ApiCacheTypeR4LARGE :: ApiCacheType
pattern ApiCacheTypeR4LARGE = ApiCacheType' "R4_LARGE"

pattern ApiCacheTypeR4XLARGE :: ApiCacheType
pattern ApiCacheTypeR4XLARGE = ApiCacheType' "R4_XLARGE"

pattern ApiCacheTypeSMALL :: ApiCacheType
pattern ApiCacheTypeSMALL = ApiCacheType' "SMALL"

pattern ApiCacheTypeT2MEDIUM :: ApiCacheType
pattern ApiCacheTypeT2MEDIUM = ApiCacheType' "T2_MEDIUM"

pattern ApiCacheTypeT2SMALL :: ApiCacheType
pattern ApiCacheTypeT2SMALL = ApiCacheType' "T2_SMALL"

pattern ApiCacheTypeXLARGE :: ApiCacheType
pattern ApiCacheTypeXLARGE = ApiCacheType' "XLARGE"

{-# COMPLETE
  ApiCacheTypeLARGE,
  ApiCacheTypeLARGE12X,
  ApiCacheTypeLARGE2X,
  ApiCacheTypeLARGE4X,
  ApiCacheTypeLARGE8X,
  ApiCacheTypeMEDIUM,
  ApiCacheTypeR42XLARGE,
  ApiCacheTypeR44XLARGE,
  ApiCacheTypeR48XLARGE,
  ApiCacheTypeR4LARGE,
  ApiCacheTypeR4XLARGE,
  ApiCacheTypeSMALL,
  ApiCacheTypeT2MEDIUM,
  ApiCacheTypeT2SMALL,
  ApiCacheTypeXLARGE,
  ApiCacheType'
  #-}

instance Prelude.FromText ApiCacheType where
  parser = ApiCacheType' Prelude.<$> Prelude.takeText

instance Prelude.ToText ApiCacheType where
  toText (ApiCacheType' x) = x

instance Prelude.Hashable ApiCacheType

instance Prelude.NFData ApiCacheType

instance Prelude.ToByteString ApiCacheType

instance Prelude.ToQuery ApiCacheType

instance Prelude.ToHeader ApiCacheType

instance Prelude.ToJSON ApiCacheType where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON ApiCacheType where
  parseJSON = Prelude.parseJSONText "ApiCacheType"

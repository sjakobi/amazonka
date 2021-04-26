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
-- Module      : Network.AWS.DirectoryService.Types.TrustType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.DirectoryService.Types.TrustType
  ( TrustType
      ( ..,
        TrustTypeExternal,
        TrustTypeForest
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype TrustType = TrustType'
  { fromTrustType ::
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

pattern TrustTypeExternal :: TrustType
pattern TrustTypeExternal = TrustType' "External"

pattern TrustTypeForest :: TrustType
pattern TrustTypeForest = TrustType' "Forest"

{-# COMPLETE
  TrustTypeExternal,
  TrustTypeForest,
  TrustType'
  #-}

instance Prelude.FromText TrustType where
  parser = TrustType' Prelude.<$> Prelude.takeText

instance Prelude.ToText TrustType where
  toText (TrustType' x) = x

instance Prelude.Hashable TrustType

instance Prelude.NFData TrustType

instance Prelude.ToByteString TrustType

instance Prelude.ToQuery TrustType

instance Prelude.ToHeader TrustType

instance Prelude.ToJSON TrustType where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON TrustType where
  parseJSON = Prelude.parseJSONText "TrustType"

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
-- Module      : Network.AWS.APIGateway.Types.ApiKeysFormat
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.APIGateway.Types.ApiKeysFormat
  ( ApiKeysFormat
      ( ..,
        ApiKeysFormatCsv
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype ApiKeysFormat = ApiKeysFormat'
  { fromApiKeysFormat ::
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

pattern ApiKeysFormatCsv :: ApiKeysFormat
pattern ApiKeysFormatCsv = ApiKeysFormat' "csv"

{-# COMPLETE
  ApiKeysFormatCsv,
  ApiKeysFormat'
  #-}

instance Prelude.FromText ApiKeysFormat where
  parser = ApiKeysFormat' Prelude.<$> Prelude.takeText

instance Prelude.ToText ApiKeysFormat where
  toText (ApiKeysFormat' x) = x

instance Prelude.Hashable ApiKeysFormat

instance Prelude.NFData ApiKeysFormat

instance Prelude.ToByteString ApiKeysFormat

instance Prelude.ToQuery ApiKeysFormat

instance Prelude.ToHeader ApiKeysFormat

instance Prelude.ToJSON ApiKeysFormat where
  toJSON = Prelude.toJSONText

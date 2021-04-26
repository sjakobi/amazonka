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
-- Module      : Network.AWS.APIGateway.Types.ApiKeySourceType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.APIGateway.Types.ApiKeySourceType
  ( ApiKeySourceType
      ( ..,
        ApiKeySourceTypeAUTHORIZER,
        ApiKeySourceTypeHEADER
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype ApiKeySourceType = ApiKeySourceType'
  { fromApiKeySourceType ::
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

pattern ApiKeySourceTypeAUTHORIZER :: ApiKeySourceType
pattern ApiKeySourceTypeAUTHORIZER = ApiKeySourceType' "AUTHORIZER"

pattern ApiKeySourceTypeHEADER :: ApiKeySourceType
pattern ApiKeySourceTypeHEADER = ApiKeySourceType' "HEADER"

{-# COMPLETE
  ApiKeySourceTypeAUTHORIZER,
  ApiKeySourceTypeHEADER,
  ApiKeySourceType'
  #-}

instance Prelude.FromText ApiKeySourceType where
  parser = ApiKeySourceType' Prelude.<$> Prelude.takeText

instance Prelude.ToText ApiKeySourceType where
  toText (ApiKeySourceType' x) = x

instance Prelude.Hashable ApiKeySourceType

instance Prelude.NFData ApiKeySourceType

instance Prelude.ToByteString ApiKeySourceType

instance Prelude.ToQuery ApiKeySourceType

instance Prelude.ToHeader ApiKeySourceType

instance Prelude.ToJSON ApiKeySourceType where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON ApiKeySourceType where
  parseJSON = Prelude.parseJSONText "ApiKeySourceType"

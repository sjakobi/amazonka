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
-- Module      : Network.AWS.DMS.Types.ReloadOptionValue
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.DMS.Types.ReloadOptionValue
  ( ReloadOptionValue
      ( ..,
        ReloadOptionValueDataReload,
        ReloadOptionValueValidateOnly
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype ReloadOptionValue = ReloadOptionValue'
  { fromReloadOptionValue ::
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

pattern ReloadOptionValueDataReload :: ReloadOptionValue
pattern ReloadOptionValueDataReload = ReloadOptionValue' "data-reload"

pattern ReloadOptionValueValidateOnly :: ReloadOptionValue
pattern ReloadOptionValueValidateOnly = ReloadOptionValue' "validate-only"

{-# COMPLETE
  ReloadOptionValueDataReload,
  ReloadOptionValueValidateOnly,
  ReloadOptionValue'
  #-}

instance Prelude.FromText ReloadOptionValue where
  parser = ReloadOptionValue' Prelude.<$> Prelude.takeText

instance Prelude.ToText ReloadOptionValue where
  toText (ReloadOptionValue' x) = x

instance Prelude.Hashable ReloadOptionValue

instance Prelude.NFData ReloadOptionValue

instance Prelude.ToByteString ReloadOptionValue

instance Prelude.ToQuery ReloadOptionValue

instance Prelude.ToHeader ReloadOptionValue

instance Prelude.ToJSON ReloadOptionValue where
  toJSON = Prelude.toJSONText

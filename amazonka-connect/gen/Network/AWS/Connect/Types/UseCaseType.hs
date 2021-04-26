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
-- Module      : Network.AWS.Connect.Types.UseCaseType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Connect.Types.UseCaseType
  ( UseCaseType
      ( ..,
        UseCaseTypeRULESEVALUATION
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype UseCaseType = UseCaseType'
  { fromUseCaseType ::
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

pattern UseCaseTypeRULESEVALUATION :: UseCaseType
pattern UseCaseTypeRULESEVALUATION = UseCaseType' "RULES_EVALUATION"

{-# COMPLETE
  UseCaseTypeRULESEVALUATION,
  UseCaseType'
  #-}

instance Prelude.FromText UseCaseType where
  parser = UseCaseType' Prelude.<$> Prelude.takeText

instance Prelude.ToText UseCaseType where
  toText (UseCaseType' x) = x

instance Prelude.Hashable UseCaseType

instance Prelude.NFData UseCaseType

instance Prelude.ToByteString UseCaseType

instance Prelude.ToQuery UseCaseType

instance Prelude.ToHeader UseCaseType

instance Prelude.ToJSON UseCaseType where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON UseCaseType where
  parseJSON = Prelude.parseJSONText "UseCaseType"

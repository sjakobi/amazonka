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
-- Module      : Network.AWS.Lambda.Types.FunctionVersion
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Lambda.Types.FunctionVersion
  ( FunctionVersion
      ( ..,
        FunctionVersionALL
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype FunctionVersion = FunctionVersion'
  { fromFunctionVersion ::
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

pattern FunctionVersionALL :: FunctionVersion
pattern FunctionVersionALL = FunctionVersion' "ALL"

{-# COMPLETE
  FunctionVersionALL,
  FunctionVersion'
  #-}

instance Prelude.FromText FunctionVersion where
  parser = FunctionVersion' Prelude.<$> Prelude.takeText

instance Prelude.ToText FunctionVersion where
  toText (FunctionVersion' x) = x

instance Prelude.Hashable FunctionVersion

instance Prelude.NFData FunctionVersion

instance Prelude.ToByteString FunctionVersion

instance Prelude.ToQuery FunctionVersion

instance Prelude.ToHeader FunctionVersion

instance Prelude.ToJSON FunctionVersion where
  toJSON = Prelude.toJSONText

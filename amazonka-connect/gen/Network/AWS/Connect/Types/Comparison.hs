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
-- Module      : Network.AWS.Connect.Types.Comparison
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Connect.Types.Comparison
  ( Comparison
      ( ..,
        ComparisonLT
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype Comparison = Comparison'
  { fromComparison ::
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

pattern ComparisonLT :: Comparison
pattern ComparisonLT = Comparison' "LT"

{-# COMPLETE
  ComparisonLT,
  Comparison'
  #-}

instance Prelude.FromText Comparison where
  parser = Comparison' Prelude.<$> Prelude.takeText

instance Prelude.ToText Comparison where
  toText (Comparison' x) = x

instance Prelude.Hashable Comparison

instance Prelude.NFData Comparison

instance Prelude.ToByteString Comparison

instance Prelude.ToQuery Comparison

instance Prelude.ToHeader Comparison

instance Prelude.ToJSON Comparison where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON Comparison where
  parseJSON = Prelude.parseJSONText "Comparison"

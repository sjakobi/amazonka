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
-- Module      : Network.AWS.KMS.Types.WrappingKeySpec
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.KMS.Types.WrappingKeySpec
  ( WrappingKeySpec
      ( ..,
        WrappingKeySpecRSA2048
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype WrappingKeySpec = WrappingKeySpec'
  { fromWrappingKeySpec ::
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

pattern WrappingKeySpecRSA2048 :: WrappingKeySpec
pattern WrappingKeySpecRSA2048 = WrappingKeySpec' "RSA_2048"

{-# COMPLETE
  WrappingKeySpecRSA2048,
  WrappingKeySpec'
  #-}

instance Prelude.FromText WrappingKeySpec where
  parser = WrappingKeySpec' Prelude.<$> Prelude.takeText

instance Prelude.ToText WrappingKeySpec where
  toText (WrappingKeySpec' x) = x

instance Prelude.Hashable WrappingKeySpec

instance Prelude.NFData WrappingKeySpec

instance Prelude.ToByteString WrappingKeySpec

instance Prelude.ToQuery WrappingKeySpec

instance Prelude.ToHeader WrappingKeySpec

instance Prelude.ToJSON WrappingKeySpec where
  toJSON = Prelude.toJSONText

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
-- Module      : Network.AWS.KMS.Types.DataKeySpec
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.KMS.Types.DataKeySpec
  ( DataKeySpec
      ( ..,
        DataKeySpecAES128,
        DataKeySpecAES256
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype DataKeySpec = DataKeySpec'
  { fromDataKeySpec ::
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

pattern DataKeySpecAES128 :: DataKeySpec
pattern DataKeySpecAES128 = DataKeySpec' "AES_128"

pattern DataKeySpecAES256 :: DataKeySpec
pattern DataKeySpecAES256 = DataKeySpec' "AES_256"

{-# COMPLETE
  DataKeySpecAES128,
  DataKeySpecAES256,
  DataKeySpec'
  #-}

instance Prelude.FromText DataKeySpec where
  parser = DataKeySpec' Prelude.<$> Prelude.takeText

instance Prelude.ToText DataKeySpec where
  toText (DataKeySpec' x) = x

instance Prelude.Hashable DataKeySpec

instance Prelude.NFData DataKeySpec

instance Prelude.ToByteString DataKeySpec

instance Prelude.ToQuery DataKeySpec

instance Prelude.ToHeader DataKeySpec

instance Prelude.ToJSON DataKeySpec where
  toJSON = Prelude.toJSONText

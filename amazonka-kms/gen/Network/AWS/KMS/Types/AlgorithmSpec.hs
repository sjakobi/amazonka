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
-- Module      : Network.AWS.KMS.Types.AlgorithmSpec
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.KMS.Types.AlgorithmSpec
  ( AlgorithmSpec
      ( ..,
        AlgorithmSpecRSAESOAEPSHA1,
        AlgorithmSpecRSAESOAEPSHA256,
        AlgorithmSpecRSAESPKCS1V15
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype AlgorithmSpec = AlgorithmSpec'
  { fromAlgorithmSpec ::
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

pattern AlgorithmSpecRSAESOAEPSHA1 :: AlgorithmSpec
pattern AlgorithmSpecRSAESOAEPSHA1 = AlgorithmSpec' "RSAES_OAEP_SHA_1"

pattern AlgorithmSpecRSAESOAEPSHA256 :: AlgorithmSpec
pattern AlgorithmSpecRSAESOAEPSHA256 = AlgorithmSpec' "RSAES_OAEP_SHA_256"

pattern AlgorithmSpecRSAESPKCS1V15 :: AlgorithmSpec
pattern AlgorithmSpecRSAESPKCS1V15 = AlgorithmSpec' "RSAES_PKCS1_V1_5"

{-# COMPLETE
  AlgorithmSpecRSAESOAEPSHA1,
  AlgorithmSpecRSAESOAEPSHA256,
  AlgorithmSpecRSAESPKCS1V15,
  AlgorithmSpec'
  #-}

instance Prelude.FromText AlgorithmSpec where
  parser = AlgorithmSpec' Prelude.<$> Prelude.takeText

instance Prelude.ToText AlgorithmSpec where
  toText (AlgorithmSpec' x) = x

instance Prelude.Hashable AlgorithmSpec

instance Prelude.NFData AlgorithmSpec

instance Prelude.ToByteString AlgorithmSpec

instance Prelude.ToQuery AlgorithmSpec

instance Prelude.ToHeader AlgorithmSpec

instance Prelude.ToJSON AlgorithmSpec where
  toJSON = Prelude.toJSONText

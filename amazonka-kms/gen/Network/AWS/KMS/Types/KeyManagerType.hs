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
-- Module      : Network.AWS.KMS.Types.KeyManagerType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.KMS.Types.KeyManagerType
  ( KeyManagerType
      ( ..,
        KeyManagerTypeAWS,
        KeyManagerTypeCUSTOMER
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype KeyManagerType = KeyManagerType'
  { fromKeyManagerType ::
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

pattern KeyManagerTypeAWS :: KeyManagerType
pattern KeyManagerTypeAWS = KeyManagerType' "AWS"

pattern KeyManagerTypeCUSTOMER :: KeyManagerType
pattern KeyManagerTypeCUSTOMER = KeyManagerType' "CUSTOMER"

{-# COMPLETE
  KeyManagerTypeAWS,
  KeyManagerTypeCUSTOMER,
  KeyManagerType'
  #-}

instance Prelude.FromText KeyManagerType where
  parser = KeyManagerType' Prelude.<$> Prelude.takeText

instance Prelude.ToText KeyManagerType where
  toText (KeyManagerType' x) = x

instance Prelude.Hashable KeyManagerType

instance Prelude.NFData KeyManagerType

instance Prelude.ToByteString KeyManagerType

instance Prelude.ToQuery KeyManagerType

instance Prelude.ToHeader KeyManagerType

instance Prelude.FromJSON KeyManagerType where
  parseJSON = Prelude.parseJSONText "KeyManagerType"

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
-- Module      : Network.AWS.DMS.Types.DmsSslModeValue
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.DMS.Types.DmsSslModeValue
  ( DmsSslModeValue
      ( ..,
        DmsSslModeValueNone,
        DmsSslModeValueRequire,
        DmsSslModeValueVerifyCa,
        DmsSslModeValueVerifyFull
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype DmsSslModeValue = DmsSslModeValue'
  { fromDmsSslModeValue ::
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

pattern DmsSslModeValueNone :: DmsSslModeValue
pattern DmsSslModeValueNone = DmsSslModeValue' "none"

pattern DmsSslModeValueRequire :: DmsSslModeValue
pattern DmsSslModeValueRequire = DmsSslModeValue' "require"

pattern DmsSslModeValueVerifyCa :: DmsSslModeValue
pattern DmsSslModeValueVerifyCa = DmsSslModeValue' "verify-ca"

pattern DmsSslModeValueVerifyFull :: DmsSslModeValue
pattern DmsSslModeValueVerifyFull = DmsSslModeValue' "verify-full"

{-# COMPLETE
  DmsSslModeValueNone,
  DmsSslModeValueRequire,
  DmsSslModeValueVerifyCa,
  DmsSslModeValueVerifyFull,
  DmsSslModeValue'
  #-}

instance Prelude.FromText DmsSslModeValue where
  parser = DmsSslModeValue' Prelude.<$> Prelude.takeText

instance Prelude.ToText DmsSslModeValue where
  toText (DmsSslModeValue' x) = x

instance Prelude.Hashable DmsSslModeValue

instance Prelude.NFData DmsSslModeValue

instance Prelude.ToByteString DmsSslModeValue

instance Prelude.ToQuery DmsSslModeValue

instance Prelude.ToHeader DmsSslModeValue

instance Prelude.ToJSON DmsSslModeValue where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON DmsSslModeValue where
  parseJSON = Prelude.parseJSONText "DmsSslModeValue"

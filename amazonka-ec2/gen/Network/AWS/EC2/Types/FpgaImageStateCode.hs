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
-- Module      : Network.AWS.EC2.Types.FpgaImageStateCode
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.EC2.Types.FpgaImageStateCode
  ( FpgaImageStateCode
      ( ..,
        FpgaImageStateCodeAvailable,
        FpgaImageStateCodeFailed,
        FpgaImageStateCodePending,
        FpgaImageStateCodeUnavailable
      ),
  )
where

import Network.AWS.EC2.Internal
import qualified Network.AWS.Prelude as Prelude

newtype FpgaImageStateCode = FpgaImageStateCode'
  { fromFpgaImageStateCode ::
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

pattern FpgaImageStateCodeAvailable :: FpgaImageStateCode
pattern FpgaImageStateCodeAvailable = FpgaImageStateCode' "available"

pattern FpgaImageStateCodeFailed :: FpgaImageStateCode
pattern FpgaImageStateCodeFailed = FpgaImageStateCode' "failed"

pattern FpgaImageStateCodePending :: FpgaImageStateCode
pattern FpgaImageStateCodePending = FpgaImageStateCode' "pending"

pattern FpgaImageStateCodeUnavailable :: FpgaImageStateCode
pattern FpgaImageStateCodeUnavailable = FpgaImageStateCode' "unavailable"

{-# COMPLETE
  FpgaImageStateCodeAvailable,
  FpgaImageStateCodeFailed,
  FpgaImageStateCodePending,
  FpgaImageStateCodeUnavailable,
  FpgaImageStateCode'
  #-}

instance Prelude.FromText FpgaImageStateCode where
  parser = FpgaImageStateCode' Prelude.<$> Prelude.takeText

instance Prelude.ToText FpgaImageStateCode where
  toText (FpgaImageStateCode' x) = x

instance Prelude.Hashable FpgaImageStateCode

instance Prelude.NFData FpgaImageStateCode

instance Prelude.ToByteString FpgaImageStateCode

instance Prelude.ToQuery FpgaImageStateCode

instance Prelude.ToHeader FpgaImageStateCode

instance Prelude.FromXML FpgaImageStateCode where
  parseXML = Prelude.parseXMLText "FpgaImageStateCode"

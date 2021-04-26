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
-- Module      : Network.AWS.StorageGateway.Types.SMBSecurityStrategy
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.StorageGateway.Types.SMBSecurityStrategy
  ( SMBSecurityStrategy
      ( ..,
        SMBSecurityStrategyClientSpecified,
        SMBSecurityStrategyMandatoryEncryption,
        SMBSecurityStrategyMandatorySigning
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype SMBSecurityStrategy = SMBSecurityStrategy'
  { fromSMBSecurityStrategy ::
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

pattern SMBSecurityStrategyClientSpecified :: SMBSecurityStrategy
pattern SMBSecurityStrategyClientSpecified = SMBSecurityStrategy' "ClientSpecified"

pattern SMBSecurityStrategyMandatoryEncryption :: SMBSecurityStrategy
pattern SMBSecurityStrategyMandatoryEncryption = SMBSecurityStrategy' "MandatoryEncryption"

pattern SMBSecurityStrategyMandatorySigning :: SMBSecurityStrategy
pattern SMBSecurityStrategyMandatorySigning = SMBSecurityStrategy' "MandatorySigning"

{-# COMPLETE
  SMBSecurityStrategyClientSpecified,
  SMBSecurityStrategyMandatoryEncryption,
  SMBSecurityStrategyMandatorySigning,
  SMBSecurityStrategy'
  #-}

instance Prelude.FromText SMBSecurityStrategy where
  parser = SMBSecurityStrategy' Prelude.<$> Prelude.takeText

instance Prelude.ToText SMBSecurityStrategy where
  toText (SMBSecurityStrategy' x) = x

instance Prelude.Hashable SMBSecurityStrategy

instance Prelude.NFData SMBSecurityStrategy

instance Prelude.ToByteString SMBSecurityStrategy

instance Prelude.ToQuery SMBSecurityStrategy

instance Prelude.ToHeader SMBSecurityStrategy

instance Prelude.ToJSON SMBSecurityStrategy where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON SMBSecurityStrategy where
  parseJSON = Prelude.parseJSONText "SMBSecurityStrategy"

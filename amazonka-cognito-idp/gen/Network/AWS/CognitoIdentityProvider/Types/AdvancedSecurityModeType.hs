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
-- Module      : Network.AWS.CognitoIdentityProvider.Types.AdvancedSecurityModeType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.CognitoIdentityProvider.Types.AdvancedSecurityModeType
  ( AdvancedSecurityModeType
      ( ..,
        AdvancedSecurityModeTypeAUDIT,
        AdvancedSecurityModeTypeENFORCED,
        AdvancedSecurityModeTypeOFF
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype AdvancedSecurityModeType = AdvancedSecurityModeType'
  { fromAdvancedSecurityModeType ::
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

pattern AdvancedSecurityModeTypeAUDIT :: AdvancedSecurityModeType
pattern AdvancedSecurityModeTypeAUDIT = AdvancedSecurityModeType' "AUDIT"

pattern AdvancedSecurityModeTypeENFORCED :: AdvancedSecurityModeType
pattern AdvancedSecurityModeTypeENFORCED = AdvancedSecurityModeType' "ENFORCED"

pattern AdvancedSecurityModeTypeOFF :: AdvancedSecurityModeType
pattern AdvancedSecurityModeTypeOFF = AdvancedSecurityModeType' "OFF"

{-# COMPLETE
  AdvancedSecurityModeTypeAUDIT,
  AdvancedSecurityModeTypeENFORCED,
  AdvancedSecurityModeTypeOFF,
  AdvancedSecurityModeType'
  #-}

instance Prelude.FromText AdvancedSecurityModeType where
  parser = AdvancedSecurityModeType' Prelude.<$> Prelude.takeText

instance Prelude.ToText AdvancedSecurityModeType where
  toText (AdvancedSecurityModeType' x) = x

instance Prelude.Hashable AdvancedSecurityModeType

instance Prelude.NFData AdvancedSecurityModeType

instance Prelude.ToByteString AdvancedSecurityModeType

instance Prelude.ToQuery AdvancedSecurityModeType

instance Prelude.ToHeader AdvancedSecurityModeType

instance Prelude.ToJSON AdvancedSecurityModeType where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON AdvancedSecurityModeType where
  parseJSON = Prelude.parseJSONText "AdvancedSecurityModeType"

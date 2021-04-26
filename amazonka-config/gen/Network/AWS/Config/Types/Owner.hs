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
-- Module      : Network.AWS.Config.Types.Owner
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Config.Types.Owner
  ( Owner
      ( ..,
        OwnerAWS,
        OwnerCUSTOMLAMBDA
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype Owner = Owner' {fromOwner :: Prelude.Text}
  deriving
    ( Prelude.Eq,
      Prelude.Ord,
      Prelude.Read,
      Prelude.Show,
      Prelude.Data,
      Prelude.Typeable,
      Prelude.Generic
    )

pattern OwnerAWS :: Owner
pattern OwnerAWS = Owner' "AWS"

pattern OwnerCUSTOMLAMBDA :: Owner
pattern OwnerCUSTOMLAMBDA = Owner' "CUSTOM_LAMBDA"

{-# COMPLETE
  OwnerAWS,
  OwnerCUSTOMLAMBDA,
  Owner'
  #-}

instance Prelude.FromText Owner where
  parser = Owner' Prelude.<$> Prelude.takeText

instance Prelude.ToText Owner where
  toText (Owner' x) = x

instance Prelude.Hashable Owner

instance Prelude.NFData Owner

instance Prelude.ToByteString Owner

instance Prelude.ToQuery Owner

instance Prelude.ToHeader Owner

instance Prelude.ToJSON Owner where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON Owner where
  parseJSON = Prelude.parseJSONText "Owner"

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
-- Module      : Network.AWS.Organizations.Types.IAMUserAccessToBilling
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Organizations.Types.IAMUserAccessToBilling
  ( IAMUserAccessToBilling
      ( ..,
        IAMUserAccessToBillingALLOW,
        IAMUserAccessToBillingDENY
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype IAMUserAccessToBilling = IAMUserAccessToBilling'
  { fromIAMUserAccessToBilling ::
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

pattern IAMUserAccessToBillingALLOW :: IAMUserAccessToBilling
pattern IAMUserAccessToBillingALLOW = IAMUserAccessToBilling' "ALLOW"

pattern IAMUserAccessToBillingDENY :: IAMUserAccessToBilling
pattern IAMUserAccessToBillingDENY = IAMUserAccessToBilling' "DENY"

{-# COMPLETE
  IAMUserAccessToBillingALLOW,
  IAMUserAccessToBillingDENY,
  IAMUserAccessToBilling'
  #-}

instance Prelude.FromText IAMUserAccessToBilling where
  parser = IAMUserAccessToBilling' Prelude.<$> Prelude.takeText

instance Prelude.ToText IAMUserAccessToBilling where
  toText (IAMUserAccessToBilling' x) = x

instance Prelude.Hashable IAMUserAccessToBilling

instance Prelude.NFData IAMUserAccessToBilling

instance Prelude.ToByteString IAMUserAccessToBilling

instance Prelude.ToQuery IAMUserAccessToBilling

instance Prelude.ToHeader IAMUserAccessToBilling

instance Prelude.ToJSON IAMUserAccessToBilling where
  toJSON = Prelude.toJSONText
